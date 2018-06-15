package data_source;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.Vector;

public class DBConnectionMgr {
	
	private Vector connections = new Vector(10);
	
	private String _driver = "org.gjt.mm.mysql.Driver",
			_url = "jdbc:mysql://127.0.0.1:3306/mydb?useUnicode=true&characterEncoding=EUC-KR",
			_user = "root",
			_password = "alpha12345";
	private boolean _traceOn = false;
	private boolean initialized = false;
	private int _openConnections = 10;
	private static DBConnectionMgr instance = null;
	
	public DBConnectionMgr() {
		// TODO Auto-generated constructor stub
	}
	
	public static DBConnectionMgr getInstance() {
		if(instance == null) {
			synchronized (DBConnectionMgr.class) {
				if(instance == null) {
					instance = new DBConnectionMgr();
				}
			}
		}
		return instance;
	}
	
	public void setOpenConnectionCount(int count) {
		_openConnections = count;
	}
	
	public void setEnableTrace(boolean enable) {
		_traceOn = enable; 
	}
	
	public Vector getConnectionList() {
		return connections;
	}
	
	public synchronized void setInitOpenConnections(int count) throws SQLException{
		Connection c = null;
		ConnectionObject co = null;
		
		for(int i = 0; i < count; i++) {
			c = createConnection();
			co = new ConnectionObject(c, false);
			connections.addElement(co);
			trace("ConnectionPoolManager: Adding new DB connection to pool (" + connections.size() + ")");
		}
	}
	
	public int getConnectionCount() {
		return connections.size();
	}
	
	public synchronized Connection getConnection() throws Exception{
		if(!initialized) {
			Class c = Class.forName(_driver);
			DriverManager.registerDriver((Driver) c.newInstance());
			initialized = true;
		}
		
		Connection c = null;
		ConnectionObject co = null;
		boolean badConnection = false;
		
		for(int i = 0; i < connections.size(); i++) {
			co = (ConnectionObject) connections.get(i);
			if(!co.inUse) {
				try {
					badConnection = co.connection.isClosed();
					if(!badConnection) 
						badConnection = (co.connection.getWarnings() != null);
				} catch (Exception e) {
					badConnection = true;
					e.printStackTrace();
				}
				
				if(badConnection) {
					connections.removeElementAt(i);
					trace("ConnectionPoolManaager: Remove disconnected DB connection #" + i);
					continue;
				}
				
				c = co.connection;
				co.inUse = true;
				trace("ConnectionPoolManager: Using existing DB connection #" + (i + 1));
				break;
			}
		}
		
		if(c == null) {
			c = createConnection();
			co = new ConnectionObject(c, true);
			connections.addElement(co);
			trace("ConnectionPoolManager: Creating new DB connection #" + connections.size());
		}
		
		return c;
	}
	
	public synchronized void freeConnection(Connection c) {
		if(c == null)
			return ;
		
		ConnectionObject co = null;
		
		for(int i = 0; i < connections.size(); i++) {
			co = (ConnectionObject) connections.get(i);
			if(c == co.connection) {
				co.inUse = false;
				break;
			}
		}
		
		for(int i = 0; i < connections.size(); i++) {
			co = (ConnectionObject) connections.get(i);
			if((i + 1) > _openConnections && !co.inUse)
				removeConnection(co.connection);
		}
	}
	
	public void freeConnection(Connection c, PreparedStatement p, ResultSet r) {
		try {
			if(r != null) r.close();
			if(p != null) p.close();
			freeConnection(c);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void freeConnection(Connection c, Statement s, ResultSet r) {
		try {
			if(r != null) r.close();
			if(s != null) s.close();
			freeConnection(c);
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void freeConnection(Connection c, PreparedStatement p) {
		try {
			if(p != null) p.close();
			freeConnection(c);
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void freeConnection(Connection c, Statement s) {
		try {
			if(s != null) s.close();
			freeConnection(c);
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public synchronized void removeConnection(Connection c) {
		if(c == null)
			return;
		
		ConnectionObject co = null;
		for(int i = 0; i < connections.size(); i++) {
			co = (ConnectionObject) connections.get(i);
			if(c == co.connection) {
				try {
					c.close();
					connections.removeElementAt(i);
					trace("Removed " + c.toString());
				} catch(Exception e) {
					e.printStackTrace();
				}
				break;
			}
		}
	}
	
	private Connection createConnection() throws SQLException{
		Connection con = null;
		
		try {
			if(_user == null)
				_user = "";
			if(_password == null)
				_password = "";
			
			Properties props = new Properties();
			props.put("user", _user);
			props.put("password", _password);
			
			con = DriverManager.getConnection(_url, props);
		} catch(Throwable t) {
			throw new SQLException(t.getMessage());
		}
		return con;
	}
	
	public void releaseFreeConnections() {
		trace("ConnectionPoolManager.releaseFreeConnections()");
		
		Connection c = null;
		ConnectionObject co = null;
		
		for(int i = 0; i < connections.size(); i++) {
			co = (ConnectionObject) connections.get(i);
			if(!co.inUse)
				removeConnection(co.connection);
		}
	}
	
	public void finalize() {
		trace("ConnectionPoolManager.finalize()");
		
		Connection c = null;
		ConnectionObject co = null;
		
		for(int i = 0; i < connections.size(); i++) {
			co = (ConnectionObject) connections.get(i);
			try {
				co.connection.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			co = null;
		}
		
		connections.removeAllElements();
	}
	
	private void trace(String s) {
		if(_traceOn)
			System.err.println(s);
	}
}


class ConnectionObject{
	public java.sql.Connection connection = null;
	public boolean inUse = false;
	
	public ConnectionObject(Connection c, boolean useFlag) {
		connection = c;
		inUse = useFlag;
	}
}

















































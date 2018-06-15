package data_source;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Mgr {
	private DBConnectionMgr pool;
	
	public Mgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean checkID(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		
		try {
			con = pool.getConnection();
			sql = "select id from sign_up where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,  id);
			flag = pstmt.executeQuery().next();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return flag;
	}
	
	public boolean insertMember(Member bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		
		try {
			con = pool.getConnection();
			sql = "insert into sign_up(id, name, birth, phonenum, email, password)" + " values(?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getName());
			pstmt.setString(3, bean.getBirth());
			pstmt.setString(4, bean.getPhonenum());
			pstmt.setString(5, bean.getEmail());
			pstmt.setString(6, bean.getPassword());
			
			if(pstmt.executeUpdate()==1) flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		
		return flag;
	}
	
	public boolean loginMember(String id, String pass) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		boolean flag = false;
		
		try {
			con = pool.getConnection();
			sql = "select id from sign_up where id=? and password=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, SHA.encrypt(pass));
			rs = pstmt.executeQuery();
			flag = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return flag;
	}
	
	public boolean deleteMember(Member bean, String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		
		try {
			con = pool.getConnection();
			sql = "delete from sign_up where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			
			if(pstmt.executeUpdate()==1) flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		
		return flag;
	}
}

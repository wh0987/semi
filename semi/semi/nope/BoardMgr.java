package data_source;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BoardMgr {
    private DBConnectionMgr pool;

    public BoardMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean insertBoard(Board bean) {

        Connection con = null;
        PreparedStatement pstmt = null;
        String sql = null;
        boolean flag = false;

        try {
            con = pool.getConnection();
            sql = "insert into contents(id, title, contents)" + " values(?,?,?)";
            pstmt = con.prepareStatement(sql);

            pstmt.setString(1, bean.getId());
            pstmt.setString(2, bean.getContents());
            pstmt.setString(3, bean.getTitle());


            if(pstmt.executeUpdate()==1) flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            pool.freeConnection(con, pstmt);
        }

        return flag;
    }

    public Board getBoard(int list_index){
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = null;
        Board bean = new Board();

        try{
            con = pool.getConnection();
            sql = "select * from contents where list_index=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, list_index);
            rs = pstmt.executeQuery();
            if(rs.next()){
                //bean.setList_index(rs.getInt("list_index"));
                bean.setList_index(String.valueOf(rs.getInt("list_index")));
                bean.setTitle(String.valueOf(rs.getInt("title")));
                bean.setContents(String.valueOf(rs.getInt("contents")));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return bean;
    }
}

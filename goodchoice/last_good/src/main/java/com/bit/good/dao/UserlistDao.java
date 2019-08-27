package com.bit.good.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.bit.good.db.DBConnection;
 
 
/**
 * JSP_MEMBER ���̺�� ������ DAO��
 * ȸ�� �����͸� ó���ϴ� Ŭ�����̴�.
 * <br><br>
 * Data Access Object - ���̺� �� �Ѱ��� DAO�� �ۼ��Ѵ�.
 */
public class UserlistDao 
{
    private static UserlistDao instance;
    
    // �̱��� ����
    private UserlistDao(){}
    public static UserlistDao getInstance(){
        if(instance==null)
            instance=new UserlistDao();
        return instance;
    }
    
    /**
     * ���̵� �̿��� ���� ȸ�������� �����´�.
     * @param id ȸ�� ���̵�
     * @return MemberBean

    
    public UserBean getUserInfo(String email) 
    {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        UserBean member = null;
 
        try {
            // ����
            StringBuffer query = new StringBuffer();
            query.append("SELECT * FROM USERLIST WHERE EMAIL=?");
 
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(query.toString());
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();
 
            if (rs.next()) // ȸ�������� DTO�� ��´�.
            {
                // �ڹٺ� ������ ��´�.
                member = new UserBean();
                member.setEmail(rs.getString("email"));
                member.setPw(rs.getString("pw"));
                member.setNick(rs.getString("nick"));
                member.setPhone(rs.getInt("phone"));
            }
 
            return member;
 
        } catch (Exception sqle) {
            throw new RuntimeException(sqle.getMessage());
        } finally {
            // Connection, PreparedStatement�� �ݴ´�.
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
    }    // end getUserInfo
    
    */
    /**
     * ȸ�������� �����Ѵ�.
     * @param member ������ ȸ�������� ����ִ� TO
     * @throws SQLException
     
    public void updateUser(UserBean member) throws SQLException{
        
        Connection conn = null;
        PreparedStatement pstmt = null;
 
        try {
 
            StringBuffer query = new StringBuffer();
            query.append("UPDATE USERLIST SET");
            query.append(" MAIL=?, PW=?, NICK=?");
            query.append(" WHERE ID=?");
 
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(query.toString());
 
            // �ڵ� Ŀ���� false�� �Ѵ�.
            conn.setAutoCommit(false);
            
            pstmt.setString(1, member.getEmail());
            pstmt.setString(2, member.getPw());
            pstmt.setString(3, member.getNick());
 
            pstmt.executeUpdate();
            // �Ϸ�� Ŀ��
            conn.commit(); 
                        
        } catch (Exception sqle) {
            conn.rollback(); // ������ �ѹ�
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
    } // end updateMember
    */
    
    /**
     * ȸ�������� �����Ѵ�.
     * @param id ȸ������ ���� �� �ʿ��� ���̵�
     * @param pw ȸ������ ���� �� �ʿ��� ��й�ȣ
     * @return x : deleteMember() ���� �� �����
     */
    @SuppressWarnings("resource")
    public int deleteMember(String email, String password) 
    {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
 
        String dbpw = ""; // DB���� ��й�ȣ�� ��Ƶ� ����
        int x = -1;
 
        try {
            // ��й�ȣ ��ȸ
            StringBuffer query1 = new StringBuffer();
            query1.append("SELECT PW FROM USERLIST WHERE EMAIL=?");
 
            // ȸ�� ����
            StringBuffer query2 = new StringBuffer();
            query2.append("DELETE FROM USERLIST WHERE EMAIL=?");
 
            conn = DBConnection.getConnection();
 
            // �ڵ� Ŀ���� false�� �Ѵ�.
            conn.setAutoCommit(false);
            
            // 1. ���̵� �ش��ϴ� ��й�ȣ�� ��ȸ�Ѵ�.
            pstmt = conn.prepareStatement(query1.toString());
            pstmt.setString(1, email);
            rs = pstmt.executeQuery();
 
            if (rs.next()) 
            {
                dbpw = rs.getString("password");
                if (dbpw.equals(password)) // �Էµ� ��й�ȣ�� DB��� ��
                {
                    // ������� ȸ������ ����
                    pstmt = conn.prepareStatement(query2.toString());
                    pstmt.setString(1, email);
                    pstmt.executeUpdate();
                    conn.commit(); 
                    x = 1; // ���� ����
                } else {
                    x = 0; // ��й�ȣ �񱳰�� - �ٸ�
                }
            }
 
            return x;
 
        } catch (Exception sqle) {
            try {
                conn.rollback(); // ������ �ѹ�
            } catch (SQLException e) {
                e.printStackTrace();
            }
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
    } // end deleteMember
    
 
    /**
     * �α��ν� ���̵�, ��й�ȣ üũ �޼���
     * @param id �α����� ���̵�
     * @param pw ��й�ȣ
     * @return x : loginCheck() ���� �� ����� 
     
    public int loginCheck(String id, String pw) 
    {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
 
        String dbPW = ""; // db���� ���� ��й�ȣ�� ���� ����
        int x = -1;
 
        try {
            // ���� - ���� �Էµ� ���̵�� DB���� ��й�ȣ�� ��ȸ�Ѵ�.
            StringBuffer query = new StringBuffer();
            query.append("SELECT PASSWORD FROM JSP_MEMBER WHERE ID=?");
 
            conn = DBConnection.getConnection();
            pstmt = conn.prepareStatement(query.toString());
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
 
            if (rs.next()) // �Է��� ���̵� �ش��ϴ� ��� �������
            {
                dbPW = rs.getString("password"); // ����� ������ �ִ´�.
 
                if (dbPW.equals(pw)) 
                    x = 1; // �Ѱܹ��� ����� ������ ��� ��. ������ ��������
                else                  
                    x = 0; // DB�� ��й�ȣ�� �Է¹��� ��й�ȣ �ٸ�, ��������
                
            } else {
                x = -1; // �ش� ���̵� ���� ���
            }
 
            return x;
 
        } catch (Exception sqle) {
            throw new RuntimeException(sqle.getMessage());
        } finally {
            try{
                if ( pstmt != null ){ pstmt.close(); pstmt=null; }
                if ( conn != null ){ conn.close(); conn=null;    }
            }catch(Exception e){
                throw new RuntimeException(e.getMessage());
            }
        }
    } // end loginCheck()    
    */
}
 


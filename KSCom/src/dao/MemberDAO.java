package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.sql.DataSource;



import vo.Member;
import static db.JdbcUtil.*;

public class MemberDAO {
	public static MemberDAO instance;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource ds;
	private MemberDAO() {
		
	}
	public static MemberDAO getInstance(){
		if(instance == null){
			instance = new MemberDAO();
		}
		return instance;
	}
	public void setConnection(Connection con){
		this.con = con;
	}
	
	public String selectLoginId(Member member){
		String loginId = null;
		String sql="SELECT id FROM User WHERE ID=? AND Passwd=password(?)";
		
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				loginId = rs.getString("id");
			}
		}catch(SQLException ex){
			System.out.println(" selectLoginDAo부분: " + ex);			
		}finally{
			close(rs);
			close(pstmt);
		}
		
		return loginId;
	}

	
	public int insertMember(Member member){
		String sql="INSERT INTO User VALUES (?,(password(?)),?,?,?,?,?)";
		int insertCount=0;
		
		try{

			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPasswd());
			pstmt.setString(3, member.getName());
			pstmt.setInt(4, member.getAge());
			pstmt.setString(5, member.getGender());
			pstmt.setString(6, member.getAddr());
			pstmt.setString(7, member.getEmail());
			insertCount=pstmt.executeUpdate();
			
		}catch(SQLException ex){
			System.out.println("insertMemberDAO 오류: " + ex);			
		}finally{
			close(pstmt);
		}
		
		return insertCount;
	}
	
	public ArrayList<Member> selectMemberList(){
		String sql="SELECT * FROM User";
		ArrayList<Member> memberList=new ArrayList<Member>();
		Member mb = null;
		try{
			
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				do{
				mb=new Member();
				mb.setId(rs.getString("id"));
				mb.setPasswd(rs.getString("passwd"));
				mb.setName(rs.getString("name"));
				mb.setAge(rs.getInt("age"));
				mb.setGender(rs.getString("gender"));
				mb.setAddr(rs.getString("addr"));
				mb.setEmail(rs.getString("email"));

				memberList.add(mb);
				}while(rs.next());
			}
		}catch(SQLException ex){
			System.out.println("selectMemberList 부분 수정바람: " + ex);			
		}finally{
			close(rs);
			close(pstmt);
		}
		return memberList;
	}
	
	public Member selectMember(String id){
		String sql="SELECT * FROM User WHERE id=?";
		Member mb = null;
		try{
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
			mb=new Member();
			mb.setId(rs.getString("id"));
			mb.setPasswd(rs.getString("passwd"));
			mb.setName(rs.getString("name"));
			mb.setAge(rs.getInt("age"));
			mb.setGender(rs.getString("gender"));
			mb.setAddr(rs.getString("addr"));
			mb.setEmail(rs.getString("email"));
			}
		}catch(SQLException ex ){
			System.out.println("selectMember부분 수정바람: " + ex);			
		}finally{
			close(rs);
			close(pstmt);
		}
		
		return mb;
	}
	public int deleteMember(String id){
		String sql="DELETE from User WHERE ID=?";
		int deleteCount = 0;

		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			deleteCount = pstmt.executeUpdate();
		}catch(SQLException ex){
			System.out.println("deleteMember 부분수정바람: " + ex);	
		}finally{
			close(pstmt);
		}
		
		return deleteCount;
	}
	public boolean duplicateIdCheck(Member member) {
	
		boolean x=false;
		
		try {
			String sql="select id from User where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			rs=pstmt.executeQuery();
			
			if(rs.next())
				x=true;
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return x;
	}
	public int updateMember(Member member) {
		String sql="UPDATE User SET passwd=password(?),name=?,age=?,gender=?,addr=?,email=? where id=?";
		int updateCount=0;
		
		try{

			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1, member.getPasswd());
			pstmt.setString(2, member.getName());
			pstmt.setInt(3, member.getAge());
			pstmt.setString(4, member.getGender());
			pstmt.setString(5, member.getAddr());
			pstmt.setString(6, member.getEmail());
			pstmt.setString(7, member.getId());
			updateCount=pstmt.executeUpdate();
			
		}catch(SQLException ex){
			System.out.println("UpdateMemberDAO 오류: " + ex);			
		}finally{
			close(pstmt);
		}
		
		return updateCount;
	}
	
	
	
}
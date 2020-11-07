package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.border.Border;

import vo.Boardbean;
import vo.Gpu;


public class BoardDAO {

	Connection con;
	private static BoardDAO boardDAO;
	public static BoardDAO getInstance() {
		if(boardDAO ==null) {
			boardDAO= new BoardDAO();
		}
		return boardDAO;
	}

	public void setConnection(Connection con) {
		this.con=con;
		
	}

	public int boardWrite(Boardbean boardbean) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		int insertCount=0;
		int number=0;
		try {
			pstmt=con.prepareStatement("SELECT MAX(num) FROM BOARD");
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				number=rs.getInt(1)+1;
				
			}else {
				number=1;
		}
			sql="INSERT INTO BOARD (num,name,subject,content,file,re_ref,re_lev,re_seq,readcount,date)";
			sql+=" values(?,?,?,?,?,?,?,?,?,now())";
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, number);
			pstmt.setString(2, boardbean.getName());
			pstmt.setString(3, boardbean.getSubject());
			pstmt.setString(4, boardbean.getContent());
			pstmt.setString(5, boardbean.getFile());
			pstmt.setInt(6,number);
			pstmt.setInt(7,0);
			pstmt.setInt(8,0);
			pstmt.setInt(9,0);
			insertCount = pstmt.executeUpdate();
			
	}catch (SQLException e) {
		System.out.println("boardwrite 부분 오류"+e);
	}finally {
		close(rs);
		close(pstmt);
	}return insertCount;
}

	public int selectListCount() {
		int listCount=0;
		PreparedStatement pstmt= null;
		ResultSet rs =null;
		
		try {
			pstmt=con.prepareStatement("SELECT COUNT(*) FROM BOARD");
			rs=pstmt.executeQuery();
			
			if(rs.next())
				listCount=rs.getInt(1);
			
		}catch (SQLException e) {
			System.out.println("boardList 부분 "+e);
		}finally {
			close(rs);
			close(pstmt);
		}
		return listCount;
	}

	public ArrayList<Boardbean> selectListCount(int page, int limit) {
		PreparedStatement pstmt=null;
		ResultSet rs= null;
		String sql="SELECT * FROM BOARD ORDER BY BOARD_RE_REF DESC, BOARD_RE_SEQ ASC LIMIT ?,10";
		ArrayList<Boardbean> articleList = new ArrayList<Boardbean>();
		Boardbean boardbean= null;
		int startrow=(page-1)*10;
		
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setInt(1, startrow);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				articleList=new ArrayList<Boardbean>();
				do {
					articleList.add(new Boardbean(
							rs.getInt("num"),
							rs.getString("name"),
							rs.getString("subject"),
							rs.getString("content"),
							rs.getString("file"),
							rs.getInt("re_ref"),
							rs.getInt("re_lev"),
							rs.getInt("re_seq"),
							rs.getInt("readcount"),
							rs.getDate("date")
							));
				}while(rs.next());
			}
		}catch (SQLException e) {
			// TODO: handle exception
		}
		return articleList;
	}
	
	
}

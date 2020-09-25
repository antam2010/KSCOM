package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import static db.JdbcUtil.*;
import vo.Com_case;
import vo.Com_case;

public class Com_caseDAO {
	Connection con;
	private static Com_caseDAO boardDAO;
	
	private Com_caseDAO() {
		
	}
	
	public static Com_caseDAO getInstance() {
		if(boardDAO ==null){
			boardDAO = new Com_caseDAO();
		}
		return boardDAO;
	}

	
	
	public void setConnection(Connection con) {
		this.con=con;
		
	}

	public Com_case selectCom_case(int id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Com_case com_case = null;
		
		try {
			pstmt = con.prepareStatement("select * from Com_Case where id=?");
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				com_case = new Com_case(
						rs.getInt("id")
						,rs.getString("brand")
						,rs.getString("name")
						,rs.getString("size")
						,rs.getString("power_standard")
						,rs.getString("board_standard")
						,rs.getString("image")
						,rs.getInt("price")
						,rs.getString("content")
						,rs.getInt("readcount"));
			}
			
		} catch (SQLException e) {
			System.out.println("selectCPU 부분 오류"+e);
		} finally {
			close(pstmt);
			close(rs);
		}
		
		return com_case;
	}

	public ArrayList<Com_case> selectCom_caseList() {
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		ArrayList<Com_case> com_caseList = null;
		
		try {
			pstmt = con.prepareStatement("SELECT * FROM Com_Case");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				com_caseList = new ArrayList<Com_case>();
				
				do {
					com_caseList.add(new Com_case(
							rs.getInt("id")
							,rs.getString("brand")
							,rs.getString("name")
							,rs.getString("size")
							,rs.getString("power_standard")
							,rs.getString("board_standard")
							,rs.getString("image")
							,rs.getInt("price")
							,rs.getString("content")
							,rs.getInt("readcount")));
				} while (rs.next());
				
			}
			
		} catch (SQLException e) {
			System.out.println("com_caselist 출력 부분"+e);
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return com_caseList;
	}

	public int insertCom_case(Com_case com_case) {
		PreparedStatement pstmt = null;
		int insertCount = 0;
		String sql = "";
		
		try {
			sql = "insert into Com_Case(brand,name,size,power_standard,board_standard,image,price,content,readcount)values(?,?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, com_case.getBrand());
			pstmt.setString(2, com_case.getName());
			pstmt.setString(3, com_case.getSize());
			pstmt.setString(4, com_case.getPower_standard());
			pstmt.setString(5, com_case.getBoard_standard());			
			pstmt.setString(6, com_case.getImage());
			pstmt.setInt(7, com_case.getPrice());
			pstmt.setString(8, com_case.getContent());
			pstmt.setInt(9, com_case.getReadcount());
			insertCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("insertcom_case 다오 부분"+e);
		} finally {
			close(pstmt);
		}
		
		return insertCount;
	}

	public int updateReadCount(int id) {
		PreparedStatement pstmt = null;
		int updateCount = 0;
		String sql = "";
		
		try {
			sql = "update Com_case set readcount = readcount + 1 where id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, id);
			updateCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("조회수업데이트 다오 부분"+e);
		} finally {
			close(pstmt);
		}
		
		return updateCount;
	}

}

package dao;

import static db.JdbcUtil.*;
import java.sql.*;
import java.util.ArrayList;

import vo.Ad;
import vo.AdList;
import vo.Cpu;

public class CpuDAO {
	
	Connection con;
	private static CpuDAO boardDAO;
	
	private CpuDAO() {
		
	}
	
	public void setConnection(Connection con){
		this.con = con;
	}
	
	public static CpuDAO getInstance(){
		
		if(boardDAO ==null){
			boardDAO = new CpuDAO();
		}
		
		return boardDAO;
	}
	//cpu리스트
	public ArrayList<Cpu> selectCpuList() {
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		ArrayList<Cpu> cpuList = null;
		
		try {
			pstmt = con.prepareStatement("SELECT * FROM CPU");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				cpuList = new ArrayList<Cpu>();
				
				do {
					cpuList.add(new Cpu(
							rs.getInt("id")
							,rs.getString("name")
							,rs.getString("core")
							,rs.getString("cpu_package")
							,rs.getString("image")
							,rs.getInt("price")
							,rs.getString("content")
							,rs.getInt("readcount")));
				} while (rs.next());
				
			}
			
		} catch (SQLException e) {
			System.out.println("cpulist 출력 부분"+e);
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return cpuList;
	}
	
//cpu 부분 id 
	public Cpu selectCpu(int id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Cpu cpu = null;
		
		try {
			pstmt = con.prepareStatement("select * from CPU where id=?");
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				cpu = new Cpu(
						rs.getInt("id")
						,rs.getString("name")
						,rs.getString("core")
						,rs.getString("cpu_package")
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
		
		return cpu;
	}
//cpu 조회수 업데이트	
	public int updateReadCount(int id) {
		PreparedStatement pstmt = null;
		int updateCount = 0;
		String sql = "";
		
		try {
			sql = "update CPU set readcount = readcount + 1 where id=?";
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
	
//cpu 등록
	public int insertCpu(Cpu cpu) {
		PreparedStatement pstmt = null;
		int insertCount = 0;
		String sql = "";
		
		try {
			sql = "insert into CPU(name,core,cpu_package,image,price,content,readcount)values(?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, cpu.getName());
			pstmt.setString(2, cpu.getCore());
			pstmt.setString(3, cpu.getCpu_package());
			pstmt.setString(4, cpu.getImage());
			pstmt.setInt(5, cpu.getPrice());
			pstmt.setString(6, cpu.getContent());
			pstmt.setInt(7, cpu.getReadcount());
			insertCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("insertcpu 다오 부분"+e);
		} finally {
			close(pstmt);
		}
		
		return insertCount;
	}
	
//ajax 테스트 쿼리문
	public int cpuNameChk(int name) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			StringBuffer sql=new StringBuffer();
			sql.append("select name");
			sql.append(" from User");
			sql.append(" where name =?");
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setString(1, "name");
			
			rs=pstmt.executeQuery();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return name;
		
		
	}
	public int add_Select(int name) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			
			StringBuffer sql=new StringBuffer();
			String sqlSlect = "SELECT NAME FROM ";
			sql.append(sqlSlect);
			sql.append(" CPU");
			sql.append("UNION");
			sql.append(sqlSlect);
			sql.append(" RAM");
			pstmt=con.prepareStatement(sql.toString());
			
			rs=pstmt.executeQuery();
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rs);
		}
		return name;
		
		
	}
// 광고 등록부분
	

	public int insertAd(Ad ad) {
		PreparedStatement pstmt = null;
		int insertCount = 0;
		String sql = "";
		
		try {
			sql = "INSERT INTO AD VALUES(?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ad.getName());
			pstmt.setInt(3, ad.getProduct_id());
			pstmt.setString(2, ad.getImage());
			pstmt.setString(4, ad.getBrand());
			
			insertCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("insertAD 다오 부분"+e);
		} finally {
			close(pstmt);
		}
		
		return insertCount;
	}

	public ArrayList<Ad> selectAd() {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		ArrayList<Ad> adList=null;
		
		try {
			pstmt =con.prepareStatement("SELECT * FROM AD");
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				adList= new ArrayList<Ad>();
				
				do {
					adList.add(new Ad(
							rs.getString("name"),
							rs.getString("image"),
							rs.getInt("product_id"),
							rs.getString("brand")
							));
				}while(rs.next());
			}
		}catch (SQLException e) {
			System.out.println("selectAd 부분"+e);
		}finally {
			close(rs);
			close(pstmt);
		}return adList;
	}

	
	

	
	
}

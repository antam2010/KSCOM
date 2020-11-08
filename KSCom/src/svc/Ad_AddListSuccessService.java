package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.BoardDAO;
import dao.CpuDAO;
import vo.Ad;
import vo.Boardbean;


public class Ad_AddListSuccessService {

	public ArrayList<Ad> getAdList() {
		CpuDAO cpuDAO = CpuDAO.getInstance();
		Connection con = getConnection();
		cpuDAO.setConnection(con);		
		ArrayList<Ad> adList = cpuDAO.selectAd();
		close(con);
		return adList;
	}

	public ArrayList<Boardbean> getboardList() {
	
		BoardDAO boardDAO= BoardDAO.getInstance();
		Connection con =getConnection();
		boardDAO.setConnection(con);
		ArrayList<Boardbean> boardList = boardDAO.selectArticleList();
		close(con);
		return boardList;
	}

	

}

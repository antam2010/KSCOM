package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.CpuDAO;
import vo.Ad;


public class Ad_AddListSuccessService {

	public ArrayList<Ad> getAdList() {
		CpuDAO cpuDAO = CpuDAO.getInstance();
		Connection con = getConnection();
		cpuDAO.setConnection(con);		
		ArrayList<Ad> adList = cpuDAO.selectAd();
		close(con);
		return adList;
	}

	

}

package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.CpuDAO;
import vo.Ad;

public class Ad_AddListFormService {

	public boolean registAd(Ad ad) {
		CpuDAO cpuDAO = CpuDAO.getInstance();
		Connection con = getConnection();
		cpuDAO.setConnection(con);		
		boolean isRegistSuccess = false;		
		int insertCount = cpuDAO.insertAd(ad);
		
		if(insertCount>0){
			commit(con);
			isRegistSuccess=true;
		}else{
			rollback(con);
		}
		
		close(con);
		return isRegistSuccess;
	}

}

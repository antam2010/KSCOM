package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.Com_caseDAO;
import vo.Com_case;

public class Com_caseRegistService {

	public boolean registCom_case(Com_case com_case) {
		Com_caseDAO com_caseDAO = Com_caseDAO.getInstance();
		Connection con = getConnection();
		com_caseDAO.setConnection(con);		
		boolean isRegistSuccess = false;		
		int insertCount = com_caseDAO.insertCom_case(com_case);
		
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

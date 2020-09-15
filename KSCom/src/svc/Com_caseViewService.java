package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;
import static db.JdbcUtil.getConnection;
import static db.JdbcUtil.rollback;

import java.sql.Connection;

import dao.Com_caseDAO;
import vo.Com_case;


public class Com_caseViewService {

	public Com_case getCom_caseView(int id) {
		Connection con = getConnection();
		Com_caseDAO com_caseDAO = Com_caseDAO.getInstance();
		com_caseDAO.setConnection(con);	
		int updateCount = com_caseDAO.updateReadCount(id);
		
		if(updateCount>0){
			commit(con);
		}else{
			rollback(con);
		}
		
		Com_case com_case = com_caseDAO.selectCom_case(id);
		close(con);
		return com_case;
	}

}

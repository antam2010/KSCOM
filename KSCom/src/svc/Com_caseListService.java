package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.Com_caseDAO;
import vo.Com_case;
import vo.Com_case;

public class Com_caseListService {

	public ArrayList<Com_case> getCom_caseList() {
		Com_caseDAO com_caseDAO = Com_caseDAO.getInstance();
		Connection con = getConnection();
		com_caseDAO.setConnection(con);		
		ArrayList<Com_case> com_caseList = com_caseDAO.selectCom_caseList();
		close(con);
		return com_caseList;
	}

}

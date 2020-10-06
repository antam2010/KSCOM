package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.CpuDAO;
import vo.ItemsName;
public class ItemsService {

	public boolean nameChk(ItemsName name) {
		boolean checkSuccess=false;
		
		Connection con = getConnection();
		CpuDAO cpuDAO = CpuDAO.getInstance();
		cpuDAO.setConnection(con);	
		boolean check=cpuDAO.nameChk(name);
		if(check) {
			checkSuccess=true;
			System.out.println("service 중복 됨");
		}else {
			System.out.println("service 중복 안됨");
		}
		
		close(con);
		return checkSuccess;
	
		
	}

}


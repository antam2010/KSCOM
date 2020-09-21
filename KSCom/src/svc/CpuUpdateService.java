package svc;

import java.sql.Connection;

import dao.CpuDAO;

import static db.JdbcUtil.*;
import vo.Cpu;

public class CpuUpdateService {

	public int getCpuUpdate(Cpu id) {
	Connection con=getConnection();
	CpuDAO cpuDAO=CpuDAO.getInstance();
	cpuDAO.setConnection(con);
	int cpu= cpuDAO.update(id);
	close(con);
	return cpu;
	
	}

}

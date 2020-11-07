package svc;

import java.sql.Connection;
import static db.JdbcUtil.*;
import dao.BoardDAO;
import vo.Boardbean;

public class BoardWriteService {

	public boolean writeBoard(Boardbean boardbean) {
		BoardDAO boardDAO = BoardDAO.getInstance();
		Connection con = getConnection();
		boardDAO.setConnection(con);
		boolean suc=false;
		int insertCount = boardDAO.boardWrite(boardbean);
		
		if(insertCount>0) {
			commit(con);
			suc=true;
		}else {
			rollback(con);
		}
		close(con);
		return suc;
	}

}

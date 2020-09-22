package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.MemberDAO;
import vo.Member;

public class MemberIdCheckService {

	public boolean checkMember(Member member) {
		boolean checkSuccess=false;
		MemberDAO memberDAO=MemberDAO.getInstance();
		Connection con=getConnection();
		memberDAO.setConnection(con);
		boolean check=memberDAO.duplicateIdCheck(member);
		if(check) {
			checkSuccess=true;
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return checkSuccess;
	}

}

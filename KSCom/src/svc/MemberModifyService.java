package svc;

import java.sql.Connection;
import static db.JdbcUtil.*;
import dao.MemberDAO;
import vo.Member;

public class MemberModifyService {

	public boolean modifyMember(Member member) {
		boolean modifySuccess=false;
		MemberDAO memberDAO=MemberDAO.getInstance();
		Connection con=getConnection();
		memberDAO.setConnection(con);
		
		int updateCount=memberDAO.updateMember(member);
		
		if(updateCount>0) {
			modifySuccess=true;
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return modifySuccess;
	}

}

package svc;

import java.sql.Connection;
import java.util.ArrayList;
import dao.MemberDAO;
import static db.JdbcUtil.*;
import vo.Member;

public class MemberListService {

	public ArrayList<Member> getMemberList() {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		ArrayList<Member> memberList = memberDAO.selectMemberList();
		close(con);
		return memberList;
	}

}

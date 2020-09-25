package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.MemberDAO;
import vo.Member;

public class MemberModifyFormService {

	public Member getMemberList(String modId) {
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		Member member = memberDAO.selectMember(modId);
		close(con);
		return member;
	}

	

}

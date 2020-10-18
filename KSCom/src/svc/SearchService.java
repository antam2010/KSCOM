package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.MemberDAO;
import vo.Member;

public class SearchService {

	public ArrayList<Member> getSearchList(String userSearch) {
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		ArrayList<Member> searchList = memberDAO.selectSearchList(userSearch);
		close(con);
		return searchList;
		
	}

}

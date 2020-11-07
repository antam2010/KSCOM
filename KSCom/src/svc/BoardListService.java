package svc;

import java.sql.Connection;
import java.util.ArrayList;
import static db.JdbcUtil.*;

import javax.servlet.http.HttpServletRequest;

import dao.BoardDAO;
import vo.Boardbean;

public class BoardListService {

	public int getListCount() throws Exception {
		int listCount=0;
		Connection con =getConnection();
		BoardDAO boardDAO= BoardDAO.getInstance();
		boardDAO.setConnection(con);
		listCount = boardDAO.selectListCount();
		close(con);
		return listCount;
	}

	public ArrayList<Boardbean> getArticleList(int page, int limit) {
		ArrayList<Boardbean> articleList =null;
		Connection con =getConnection();
		BoardDAO boardDAO= BoardDAO.getInstance();
		boardDAO.setConnection(con);
		articleList=boardDAO.selectListCount(page,limit);
		close(con);
		return articleList;
	}

	

}

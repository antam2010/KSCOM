package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.SearchService;
import vo.ActionForward_member;
import vo.Member;

public class searchAction implements Action_member {

	@Override
	public ActionForward_member execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String userSearch=request.getParameter("userSearch").trim();
		System.out.println(userSearch);
		ActionForward_member forward=null;
		if(userSearch!=null) {
		forward=new ActionForward_member();
		SearchService searchService= new SearchService();
		ArrayList<Member> searchList=searchService.getSearchList(userSearch);
		request.setAttribute("searchList", searchList);
		forward.setPath("./search.jsp");
		
		
		}else {
			forward=new ActionForward_member();
			forward.setRedirect(true);
			forward.setPath("./memberListAction.me");
		}
		return forward;
		
	}

}

package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.ActionForward;

public class AddListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session=request.getSession();
		
		session.setAttribute("name", request.getParameter("name"));
		session.setAttribute("image", request.getParameter("image"));
		session.setAttribute("product_id", request.getParameter("product_id"));
		session.setAttribute("brand", request.getParameter("brand"));
		
		
		
		ActionForward forward=new ActionForward("comList.jsp", false);
		return forward;
	}

}

package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import vo.ActionForward;

public class Ad_AddListFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setAttribute("name", request.getParameter("name"));
		request.setAttribute("image", request.getParameter("image"));
		request.setAttribute("product_id", request.getParameter("id"));
		
		request.setAttribute("brand", request.getParameter("brand"));
		
		
		ActionForward forward = new ActionForward("ad_AddList.jsp", false);
		
		return forward;
	}

}

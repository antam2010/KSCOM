package action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Com_caseViewService;
import vo.ActionForward;
import vo.Com_case;


public class Com_caseViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Com_caseViewService com_caseViewService = new Com_caseViewService();
		int id = Integer.parseInt(request.getParameter("id"));
		Com_case com_case = com_caseViewService.getCom_caseView(id);
		request.setAttribute("com_case", com_case);
		
		ActionForward forward = new ActionForward("com_caseView.jsp", false);
		return forward;
	}
	
}
package action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.MainboardViewService;
import vo.ActionForward;
import vo.Mainboard;


public class MainboardViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		MainboardViewService mainboardViewService = new MainboardViewService();
		int id = Integer.parseInt(request.getParameter("id"));
		Mainboard mainboard = mainboardViewService.getMainboardView(id);
		request.setAttribute("mainboard", mainboard);
		
		ActionForward forward = new ActionForward("mainboardView.jsp", false);
		return forward;
	}
	
}
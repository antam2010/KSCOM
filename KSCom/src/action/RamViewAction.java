package action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.RamViewService;
import vo.ActionForward;
import vo.Ram;


public class RamViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		RamViewService ramViewService = new RamViewService();
		int id = Integer.parseInt(request.getParameter("id"));
		Ram ram = ramViewService.getRamView(id);
		request.setAttribute("ram", ram);
		
		ActionForward forward = new ActionForward("ramView.jsp", false);
		return forward;
	}
	
}
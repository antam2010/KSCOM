package action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CpuViewService;
import vo.ActionForward;
import vo.Cpu;


public class CpuViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		CpuViewService cpuViewService = new CpuViewService();
		int id = Integer.parseInt(request.getParameter("id"));
		Cpu cpu = cpuViewService.getCpuView(id);
		request.setAttribute("cpu", cpu);
		
		ActionForward forward = new ActionForward("cpuView.jsp", false);
		return forward;
	}
	
}
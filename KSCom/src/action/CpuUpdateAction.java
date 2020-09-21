package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CpuUpdateService;
import vo.ActionForward;
import vo.Cpu;

public class CpuUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		CpuUpdateService cpuUpdateService = new CpuUpdateService();
		int id = Integer.parseInt(request.getParameter("id"));
		Cpu cpu = cpuUpdateService.getCpuUpdate(id);
		request.setAttribute("cpu", cpu);
		ActionForward forward=new ActionForward("cpuUpdate.jsp", false);
		
		return forward;
	}

}

package action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.GpuViewService;
import vo.ActionForward;
import vo.Gpu;


public class GpuViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		GpuViewService gpuViewService = new GpuViewService();
		int id = Integer.parseInt(request.getParameter("id"));
		Gpu gpu = gpuViewService.getGpuView(id);
		request.setAttribute("gpu", gpu);
		
		ActionForward forward = new ActionForward("gpuView.jsp", false);
		return forward;
	}
	
}
package action;

import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.GpuListService;
import vo.ActionForward;
import vo.Gpu;


public class GpuListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		GpuListService gpuListService = new GpuListService();
		ArrayList<Gpu> gpuList = gpuListService.getGpuList();
		request.setAttribute("gpuList", gpuList);
		
		ActionForward forward = new ActionForward("gpuList.jsp", false);
		
		return forward;
		
		
	}

}

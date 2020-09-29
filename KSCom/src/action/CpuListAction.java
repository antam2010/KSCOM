package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.CpuListService;

import vo.ActionForward;
import vo.Cpu;

public class CpuListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		
		CpuListService cpuListService = new CpuListService();
		ArrayList<Cpu> cpuList = cpuListService.getCpuList();
		request.setAttribute("cpuList", cpuList);
		
		ActionForward forward = new ActionForward("cpuList.jsp", false);
		
		return forward;
	}
	
}

package action;

import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.RamListService;
import vo.ActionForward;
import vo.Ram;


public class RamListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		RamListService ramListService = new RamListService();
		ArrayList<Ram> ramList = ramListService.getRamList();
		request.setAttribute("ramList", ramList);
		
		ActionForward forward = new ActionForward("ramList.jsp", false);
		
		return forward;
		
		
	}

}

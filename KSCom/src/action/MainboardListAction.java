package action;

import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.MainboardListService;
import vo.ActionForward;
import vo.Mainboard;



public class MainboardListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		MainboardListService mainboardListService = new MainboardListService();
		ArrayList<Mainboard> mainboardList = mainboardListService.getMainboardList();
		request.setAttribute("mainboardList", mainboardList);
		
		ActionForward forward = new ActionForward("mainboardList.jsp", false);
		
		return forward;
		
		
	}

}

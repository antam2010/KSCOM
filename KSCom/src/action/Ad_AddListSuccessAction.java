package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Ad_AddListSuccessService;
import vo.ActionForward;
import vo.Ad;

public class Ad_AddListSuccessAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Ad_AddListSuccessService ad_AddListSuccessService = new Ad_AddListSuccessService();
		ArrayList<Ad> adList=ad_AddListSuccessService.getAdList();
		request.setAttribute("adList", adList);
		
		ActionForward forward=new ActionForward("comList.jsp", false);
		
		return forward;
	}

}

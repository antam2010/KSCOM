package action;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.Ad_AddListSuccessService;
import svc.BoardListService;
import vo.ActionForward;
import vo.Ad;
import vo.Boardbean;
public class Ad_AddListSuccessAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Ad_AddListSuccessService ad_AddListSuccessService = new Ad_AddListSuccessService();
		ArrayList<Ad> adList=ad_AddListSuccessService.getAdList();
		ArrayList<Boardbean> boardList = ad_AddListSuccessService.getboardList();
	
				
		request.setAttribute("adList", adList);
		request.setAttribute("boardList", boardList);
		ActionForward forward=new ActionForward("comList.jsp", false);
		
		return forward;
	}

}

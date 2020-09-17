package action;

import java.util.ArrayList;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Com_caseListService;

import vo.ActionForward;
import vo.Com_case;

public class Com_caseListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ArrayList<String> todayImageList = new ArrayList<String>();
		Cookie[] cookieArray = request.getCookies();
		
		if(cookieArray != null){
			for (int i = 0; i < cookieArray.length; i++) {
				if(cookieArray[i].getName().startsWith("today")){
					todayImageList.add(cookieArray[i].getValue());
				}
			}
		}
		
		Com_caseListService com_caseListService = new Com_caseListService();
		ArrayList<Com_case> com_caseList = com_caseListService.getCom_caseList();
		request.setAttribute("com_caseList", com_caseList);
		request.setAttribute("todayImageList", todayImageList);
		ActionForward forward = new ActionForward("com_caseList.jsp", false);
		
		return forward;
	}
	
}

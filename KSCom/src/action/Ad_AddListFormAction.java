package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.Ad;
import svc.AD_AddListFormService;
import vo.ActionForward;

public class Ad_AddListFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		AD_AddListFormService aD_AddListFormService = new AD_AddListFormService();
		Ad ad = aD_AddListFormService.registAd(id);
		request.setAttribute("name", request.getParameter("name"));
		request.setAttribute("image", request.getParameter("image"));
		request.setAttribute("product_id", request.getParameter("id"));
		
		request.setAttribute("brand", request.getParameter("brand"));
		
		ActionForward forward = new ActionForward("ad_AddList.jsp", false);
		
		return forward;
	}

}

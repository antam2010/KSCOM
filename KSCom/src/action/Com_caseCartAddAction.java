package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.Com_caseCartAddService;
import vo.ActionForward;
import vo.Com_case;

public class Com_caseCartAddAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Com_caseCartAddService com_caseCartAddService = new Com_caseCartAddService();
		int id = Integer.parseInt(request.getParameter("id"));
		Com_case cartCom_case = com_caseCartAddService.getCartCom_case(id);
		com_caseCartAddService.addCart(request, cartCom_case);
		ActionForward forward = new ActionForward("com_caseCartList.do", true);
		return forward;
	}

}

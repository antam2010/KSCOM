package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.Com_caseCartQtyUpService;
import vo.ActionForward;

public class Com_caseCartQtyUpAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		Com_caseCartQtyUpService com_caseCartQtyUpService = new Com_caseCartQtyUpService();
		com_caseCartQtyUpService.upCartQty(name,request);
		ActionForward forward = new ActionForward("com_caseCartList.do", true);
		return forward;
	}

}

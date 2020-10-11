package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.Com_caseCartRemoveService;
import vo.ActionForward;

public class Com_caseCartRemoveAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String[] nameArray = request.getParameterValues("remove6");
		Com_caseCartRemoveService com_caseCartRemoveService = new Com_caseCartRemoveService();
		com_caseCartRemoveService.cartRemove(request,nameArray);
		ActionForward forward = new ActionForward("com_caseCartList.do",true);
		return forward;
	}
	
}
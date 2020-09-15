package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.Com_caseCartQtyDownService;
import vo.ActionForward;

public class Com_caseCartQtyDownAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String name = request.getParameter("name");
		System.out.println("name = " + name);
		Com_caseCartQtyDownService com_caseCartQtyDownService = new Com_caseCartQtyDownService();
		com_caseCartQtyDownService.downCartQty(name,request);
		ActionForward forward = new ActionForward("com_caseCartList.do",true);
		return forward;
	}

}

package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.ActionForward;

public class Com_caseRegistFormAction implements Action {
//상품 등록한 페이지 보여주는 액션
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward("com_caseRegistForm.jsp", false);
		return forward;
	}
	
}
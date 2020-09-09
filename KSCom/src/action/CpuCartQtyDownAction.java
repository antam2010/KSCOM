package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.CpuCartQtyDownService;
import vo.ActionForward;

public class CpuCartQtyDownAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String kind = request.getParameter("kind");
		System.out.println("kind = " + kind);
		CpuCartQtyDownService cpuCartQtyDownService = new CpuCartQtyDownService();
		cpuCartQtyDownService.downCartQty(kind,request);
		ActionForward forward = new ActionForward("cpuCartList.do",true);
		return forward;
	}

}

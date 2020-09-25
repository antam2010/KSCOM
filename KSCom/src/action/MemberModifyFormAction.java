package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.MemberModifyFormService;
import vo.ActionForward_member;
import vo.Member;

public class MemberModifyFormAction implements Action_member {

	@Override
	public ActionForward_member execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		
		ActionForward_member forward=null;
		if(id==null || !id.equals("admin")) {
			forward=new ActionForward_member();
			forward.setRedirect(true);
			forward.setPath("./memberLogin.me");
		}
		else {
			forward=new ActionForward_member();
			MemberModifyFormService memberModifyFormService = new MemberModifyFormService();
			String modId=request.getParameter("id");
			Member member=memberModifyFormService.getMemberList(modId);
			request.setAttribute("member", member);
			forward.setPath("./memberModifyForm.jsp");
			
		}
		return forward;
	}

}

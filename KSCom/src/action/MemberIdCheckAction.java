package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.MemberIdCheckService;
import vo.ActionForward_member;
import vo.Member;

public class MemberIdCheckAction implements Action_member {

	@Override
	public ActionForward_member execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		Member member = new Member();

		boolean result = true;

		member.setId(request.getParameter("id"));
		ActionForward_member forward = new ActionForward_member();
		MemberIdCheckService memberIdCheckService = new MemberIdCheckService();
		result = memberIdCheckService.checkMember(member);
		request.setAttribute("result", result);
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if (result) { // 아이디가 있다.

			out.println("<script>");
			out.println("alert('아이디가 중복됩니다.');");
			out.println("history.back()");
			out.println("</script>");
			
		}

		else {
			
			forward=new ActionForward_member();
			forward.setRedirect(result);
			forward.setPath("idCheck.jsp");
		}

		return forward;

	}

}

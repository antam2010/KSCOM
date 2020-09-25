package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import svc.MemberModifyService;
import vo.ActionForward_member;
import vo.Member;

public class MemberModifyAction implements Action_member {

	@Override
	public ActionForward_member execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		boolean modifyResult=false;
		
		Member member=new Member();
		member.setId(request.getParameter("id"));
		member.setPasswd(request.getParameter("passwd"));
		member.setName(request.getParameter("name"));
		member.setAge(Integer.parseInt(request.getParameter("age")));
		member.setGender(request.getParameter("gender"));
		member.setAddr(request.getParameter("addr"));
		member.setEmail(request.getParameter("email"));
		
		MemberModifyService memberModifyService= new MemberModifyService();
		modifyResult=memberModifyService.modifyMember(member);
		
		ActionForward_member forward=null;
		if(modifyResult==false) {
		
			response.setContentType("text/html;charset=UTF-8");
   			PrintWriter out = response.getWriter();
   			out.println("<script>");
   			out.println("alert('회원 수정에 실패')");
   			out.println("history.back()");
   			out.println("</script>");
			
		}else {
			forward= new ActionForward_member();
			forward.setRedirect(true);
			forward.setPath("memberListAction.me");
		}
		return forward;
	}
}

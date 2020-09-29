package action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import svc.MemberLoginService;
import vo.ActionForward_member;
import vo.Member;

public class MemberLoginAction implements Action_member{
	 public ActionForward_member execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 
		 	HttpSession session=request.getSession();
		 	
	   		Member member=new Member();
	   		
	   		member.setId(request.getParameter("id"));
	   		member.setPasswd(request.getParameter("passwd"));
	   		
	   		MemberLoginService memberLoginService = new MemberLoginService();
	   		boolean loginResult = memberLoginService.login(member);
	   		ActionForward_member forward = null;
	   		if(loginResult){
	   	    forward = new ActionForward_member();
	   	    
	   		session.setAttribute("id", member.getId());
	   		System.out.println(member.getId()+"출력확인");
	   		forward.setRedirect(true);
	   		forward.setPath("./AdminPage.jsp");
	   		}
	   		else{
	   			response.setContentType("text/html;charset=utf-8");
		   		PrintWriter out=response.getWriter();
		   		out.println("<script>");
		   		out.println("alert('아이디나 비번이 틀렸습니다.');");
		   		out.println("location.href='./memberLogin.me';");
		   		out.println("</script>");
	   		}
	   		return forward;
	}
}
package action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.MemberJoinService;
import vo.ActionForward_member;
import vo.Member;

public class MemberJoinAction implements Action_member{
	 public ActionForward_member execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	
		 	Member member=new Member();
	   		boolean joinResult=false;
	   		
	   		member.setId(request.getParameter("id"));
	   		member.setPasswd(request.getParameter("passwd"));
	   		member.setName(request.getParameter("name"));
	   		member.setAge(Integer.parseInt(request.getParameter("age")));
	   		member.setGender(request.getParameter("gender"));
	   		member.setAddr(request.getParameter("addr"));
	   		member.setEmail(request.getParameter("email"));
	   		request.setAttribute("idMs", request.getParameter("id"));
	   		request.setAttribute("nameMs", request.getParameter("name"));
	   			   		
	   		
	   		MemberJoinService memberJoinService = new MemberJoinService();
	   		joinResult=memberJoinService.joinMember(member);
	   		
	   		ActionForward_member forward = null;
	   		if(joinResult==false){
	   			response.setContentType("text/html;charset=UTF-8");
	   			PrintWriter out = response.getWriter();
	   			out.println("<script>");
	   			out.println("alert('회원가입에 실패하였다')");
	   			out.println("history.back()");
	   			out.println("</script>");
		   	}
	   		else{
	   			
	   	    forward = new ActionForward_member();
	   		forward.setRedirect(false);
	   		forward.setPath("loginSuccessMs.jsp");
	   		}
	   		return forward;
	}
}
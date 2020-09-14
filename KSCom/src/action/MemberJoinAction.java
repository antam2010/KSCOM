package action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.MemberJoinService;
import vo.ActionForward_member;
import vo.MemberBean;

public class MemberJoinAction implements Action_member{
	 public ActionForward_member execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	
		 	MemberBean member=new MemberBean();
	   		boolean joinResult=false;
	   		
	   		member.setMEMBER_ID(request.getParameter("MEMBER_ID"));
	   		member.setMEMBER_PW(request.getParameter("MEMBER_PW"));
	   		member.setMEMBER_NAME(request.getParameter("MEMBER_NAME"));
	   		member.setMEMBER_AGE(Integer.parseInt(request.getParameter("MEMBER_AGE")));
	   		member.setMEMBER_GENDER(request.getParameter("MEMBER_GENDER"));
	   		member.setMEMBER_EMAIL(request.getParameter("MEMBER_EMAIL"));
	   		
	   		MemberJoinService memberJoinService = new MemberJoinService();
	   		joinResult=memberJoinService.joinMember(member);
	   		
	   		ActionForward_member forward = null;
	   		if(joinResult==false){
	   			response.setContentType("text/html;charset=UTF-8");
	   			PrintWriter out = response.getWriter();
	   			out.println("<script>");
	   			out.println("alert('ȸ����Ͻ���')");
	   			out.println("history.back()");
	   			out.println("</script>");
		   	}
	   		else{
	   	    forward = new ActionForward_member();
	   		forward.setRedirect(true);
	   		forward.setPath("./memberLogin.me");
	   		}
	   		return forward;
	}
}
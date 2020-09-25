package action;


import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import svc.MemberListService;
import vo.ActionForward_member;
import vo.Member;

public class MemberListAction implements Action_member{
	 public ActionForward_member execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	HttpSession session=request.getSession();
	   		String id=(String)session.getAttribute("id");
	   		ActionForward_member forward = null;
	   		if(id==null){
	   			forward = new ActionForward_member();
				forward.setRedirect(true);
				forward.setPath("./memberLogin.me");
	   		}
	   		else if(id.equals("admin")){
	   	    forward = new ActionForward_member();
	   	    MemberListService memberListService = new MemberListService();
	   		ArrayList<Member> memberList=memberListService.getMemberList();
	   		request.setAttribute("memberList", memberList);
	   		forward.setPath("./member_list.jsp");
	   		
	   		}
	   		else{
	   			forward = new ActionForward_member();
		   	    MemberListService memberListService = new MemberListService();
		   		ArrayList<Member> memberList=memberListService.getMemberList();
		   		request.setAttribute("memberList", memberList);
		   		forward.setPath("./comList.jsp");
	   		}
	   		return forward;
	}
}
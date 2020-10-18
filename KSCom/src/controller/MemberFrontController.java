package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action_member;

import action.MemberDeleteAction;
import action.MemberIdCheckAction;
import action.MemberJoinAction;
import action.MemberListAction;

import action.MemberLoginAction;
import action.MemberModifyAction;
import action.MemberModifyFormAction;
import action.MemberViewAction;
import action.searchAction;
import vo.ActionForward_member;

@WebServlet("*.me")
public class MemberFrontController extends javax.servlet.http.HttpServlet {
	static final long serialVersionUID = 1L;

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		ActionForward_member forward = null;
		Action_member action = null;

		if (command.equals("/memberLogin.me")) {
			forward = new ActionForward_member();
			forward.setRedirect(true);
			forward.setPath("./loginForm.jsp");
		} else if (command.equals("/memberJoin.me")) {
			forward = new ActionForward_member();
			forward.setRedirect(false);
			forward.setPath("./joinForm.jsp");
		} else if (command.equals("/memberLoginAction.me")) {
			action = new MemberLoginAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/memberJoinAction.me")) {
			action = new MemberJoinAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/memberListAction.me")) {
			action = new MemberListAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/memberViewAction.me")) {
			action = new MemberViewAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/memberDeleteAction.me")) {
			action = new MemberDeleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		else if (command.equals("/memberIdCheckAction.me")) {
			action = new MemberIdCheckAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		//로그아웃
		else if (command.equals("/memberLogoutAction.me")) {
			HttpSession session = request.getSession();
			session.removeAttribute("id");
			session.removeAttribute("cartList");
			session.removeAttribute("ramcartList");
			session.removeAttribute("gpucartList");
			session.removeAttribute("com_casecartList");
			session.removeAttribute("mainboardcartList");
			response.sendRedirect("ad_AddListSuccess.do");
		}
		//야매로 만든 세션 각 부품 초기화, addservice에 있다
		else if (command.equals("/allCheck.me")) {
			HttpSession session = request.getSession();
			session.removeAttribute("cartList");
			session.removeAttribute("ramcartList");
			session.removeAttribute("gpucartList");
			session.removeAttribute("com_casecartList");
			session.removeAttribute("mainboardcartList");
			response.sendRedirect("cpuCartList.jsp");
			
		}
		//회원수정 폼
		else if (command.equals("/memberModifyFormAction.me")) {
			action = new MemberModifyFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		//회원 수정
		else if (command.equals("/memberModifyAction.me")) {
			action = new MemberModifyAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		else if (command.equals("/search.me")) {
			action = new searchAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		
		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doProcess(request, response);
	}
}
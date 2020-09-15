package action;

import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.Com_caseCartListService;
import vo.ActionForward;
import vo.Cart;

public class Com_caseCartListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Com_caseCartListService com_caseCartListService = new Com_caseCartListService();
		ArrayList<Cart> com_casecartList = com_caseCartListService.getCartList(request);
		
		int totalMoney = 0;
		int money = 0 ;
	try {	
		if(com_casecartList.size()!=0) {
		for (int i = 0; i < com_casecartList.size(); i++) {
			money = com_casecartList.get(i).getPrice()*com_casecartList.get(i).getQty();
			totalMoney += money;
		}
		}
	}catch (Exception e) {
		System.out.println("com_caseListAction 부분"+e);
		
		
	}
		request.setAttribute("totalMoney", totalMoney);
		request.setAttribute("com_casecartList", com_casecartList);
		ActionForward forward = new ActionForward("CartList.jsp", false);
		return forward;
	}

}

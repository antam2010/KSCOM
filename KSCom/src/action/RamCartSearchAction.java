package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.RamCartSearchService;
import vo.ActionForward;
import vo.Cart;

public class RamCartSearchAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RamCartSearchService ramCartSearchService = new RamCartSearchService();
		int startMoney = Integer.parseInt(request.getParameter("startMoney"));
		int endMoney = Integer.parseInt(request.getParameter("endMoney"));
		ArrayList<Cart> ramcartList = 
		ramCartSearchService.getCartSearchList(startMoney,endMoney,request);
		request.setAttribute("ramcartList", ramcartList);
		request.setAttribute("startMoney", startMoney);
		request.setAttribute("endMoney", endMoney);
		
		
		int totalMoney = 0;
		int money = 0 ;
		
		for (int i = 0; i < ramcartList.size(); i++) {
			money = ramcartList.get(i).getPrice()*ramcartList.get(i).getQty();
			totalMoney += money;
		}

		request.setAttribute("totalMoney", totalMoney);
		ActionForward forward = new ActionForward("cpuCartList.jsp", false);
		return forward;	}

}

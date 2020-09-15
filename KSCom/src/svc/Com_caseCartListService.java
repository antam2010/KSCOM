package svc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import vo.Cart;

public class Com_caseCartListService {

	public ArrayList<Cart> getCartList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ArrayList<Cart> com_casecartList = (ArrayList<Cart>)session.getAttribute("com_casecartList");
		return com_casecartList;
	}

	
	

}

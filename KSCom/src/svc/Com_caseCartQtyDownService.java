package svc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import vo.Cart;

public class Com_caseCartQtyDownService {

	public void downCartQty(String name, HttpServletRequest request) {
		HttpSession session = request.getSession();
		ArrayList<Cart> com_casecartList = (ArrayList<Cart>)session.getAttribute("com_casecartList");
		
		for (int i = 0; i < com_casecartList.size(); i++) {
			
			if(com_casecartList.get(i).getName().equals(name)){
				com_casecartList.get(i).setQty(com_casecartList.get(i).getQty()-1);
			}
			
		}
	}

}

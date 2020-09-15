package svc;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import vo.Cart;

public class Com_caseCartRemoveService {
	
	public void cartRemove(HttpServletRequest request, String[] NameArray) {
		HttpSession session = request.getSession();
		ArrayList<Cart> com_casecartList = (ArrayList<Cart>)session.getAttribute("com_casecartList");
		
		for (int i = 0; i < NameArray.length; i++) {
			
			for (int j = 0; j < com_casecartList.size(); j++) {
				
				if(com_casecartList.get(j).getName().equals(NameArray[i])){
						com_casecartList.remove(com_casecartList.get(j));
					
				}
				
			}
			
		}
		
	}
}
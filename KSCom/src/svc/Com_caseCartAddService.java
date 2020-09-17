package svc;

import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.Com_caseDAO;
import vo.Cart;
import vo.Com_case;




public class Com_caseCartAddService {

	public Com_case getCartCom_case(int id) {
		Connection con = getConnection();
		Com_caseDAO com_caseDAO = Com_caseDAO.getInstance();
		com_caseDAO.setConnection(con);	
		Com_case com_case = com_caseDAO.selectCom_case(id);
		close(con);
		return com_case;
	}

	public void addCart(HttpServletRequest request, vo.Com_case cartCom_case) {
		HttpSession session = request.getSession(); 
		ArrayList<Cart> com_casecartList = (ArrayList<Cart>)session.getAttribute("com_casecartList");
		
		if(com_casecartList == null){
			com_casecartList = new ArrayList<Cart>();
			session.setAttribute("com_casecartList", com_casecartList);
		}
		
		boolean isNewCart = true;
		
		
		for (int i = 0; i < com_casecartList.size(); i++) {
			if(cartCom_case.getName().equals(com_casecartList.get(i).getName())){
				isNewCart = false;
				com_casecartList.get(i).setQty(com_casecartList.get(i).getQty()+1);
				break;
				
			}
		}
		
		if(isNewCart){
			Cart cart = new Cart();
			cart.setImage(cartCom_case.getImage());
			cart.setName(cartCom_case.getName());
			cart.setPrice(cartCom_case.getPrice());
			cart.setQty(1);
			com_casecartList.add(cart);
		}
		
	}
	
}
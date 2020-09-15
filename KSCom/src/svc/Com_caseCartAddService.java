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
		ArrayList<Cart> cartList = (ArrayList<Cart>)session.getAttribute("cartList");
		
		if(cartList == null){
			cartList = new ArrayList<Cart>();
			session.setAttribute("cartList", cartList);
		}
		
		boolean isNewCart = true;
		
		
		for (int i = 0; i < cartList.size(); i++) {
			if(cartCom_case.getName().equals(cartList.get(i).getName())){
				isNewCart = false;
				cartList.get(i).setQty(cartList.get(i).getQty()+1);
				break;
				
			}
		}
		
		if(isNewCart){
			Cart cart = new Cart();
			cart.setImage(cartCom_case.getImage());
			cart.setName(cartCom_case.getName());
			cart.setPrice(cartCom_case.getPrice());
			cart.setQty(1);
			cartList.add(cart);
		}
		
	}
	
}
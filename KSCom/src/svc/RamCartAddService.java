package svc;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import vo.Cart;
import vo.Ram;
import dao.RamDAO;

public class RamCartAddService {

	public Ram getCartRam(int id) {
		Connection con = getConnection();
		RamDAO ramDAO = RamDAO.getInstance();
		ramDAO.setConnection(con);	
		Ram ram = ramDAO.selectRam(id);
		close(con);
		return ram;
	}

	public void addCart(HttpServletRequest request, Ram cartRam) {
		HttpSession session = request.getSession();
		ArrayList<Cart> cartList = (ArrayList<Cart>)session.getAttribute("cartList");
		
		if(cartList == null){
			cartList = new ArrayList<Cart>();
			session.setAttribute("cartList", cartList);
		}
		
		boolean isNewCart = true;
		
		
		for (int i = 0; i < cartList.size(); i++) {
			if(cartRam.getName().equals(cartList.get(i).getName())){
				isNewCart = false;
				cartList.get(i).setQty(cartList.get(i).getQty()+1);
				break;
				
			}
		}
		
		if(isNewCart){
			Cart cart = new Cart();
			cart.setImage(cartRam.getImage());
			cart.setName(cartRam.getName());
			cart.setPrice(cartRam.getPrice());
			cart.setQty(1);
			cartList.add(cart);
		}
		
	}
	
}
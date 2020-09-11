package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.MainboardDAO;
import vo.Cart;
import vo.Mainboard;


public class MainboardCartAddService {

	public Mainboard getCartMainboard(int id) {
		Connection con = getConnection();
		MainboardDAO mainboardDAO = MainboardDAO.getInstance();
		mainboardDAO.setConnection(con);	
		Mainboard mainboard = mainboardDAO.selectMainboard(id);
		close(con);
		return mainboard;
	}

	public void addCart(HttpServletRequest request, Mainboard cartMainboard) {
		HttpSession session = request.getSession();
		ArrayList<Cart> cartList = (ArrayList<Cart>)session.getAttribute("cartList");
		
		if(cartList == null){
			cartList = new ArrayList<Cart>();
			session.setAttribute("cartList", cartList);
		}
		
		boolean isNewCart = true;
		
		
		for (int i = 0; i < cartList.size(); i++) {
			if(cartMainboard.getName().equals(cartList.get(i).getName())){
				isNewCart = false;
				cartList.get(i).setQty(cartList.get(i).getQty()+1);
				break;
				
			}
		}
		
		if(isNewCart){
			Cart cart = new Cart();
			cart.setImage(cartMainboard.getImage());
			cart.setName(cartMainboard.getName());
			cart.setPrice(cartMainboard.getPrice());
			cart.setQty(1);
			cartList.add(cart);
		}
		
	}
	
}
package action;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import svc.Ad_AddListFormService;

import vo.ActionForward;
import vo.Ad;

public class Ad_AddListFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Ad_AddListFormService ad_AddListFormService = new Ad_AddListFormService();
	
		
		
		String image = request.getParameter("image");
		int product_id = Integer.parseInt(request.getParameter("id"));
		String brand=request.getParameter("brand");
		String name=request.getParameter("name");
		Ad ad =  new Ad(
				name,image,product_id,brand
				);
		
		boolean isRegistSuccess=ad_AddListFormService.registAd(ad);
		ActionForward forward=null;
		if(isRegistSuccess) {
			forward = new ActionForward("ad_AddListSuccess.do", true);
		}else {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("location.href='ad_AddListSuccess.do'");
			out.println("</script>");
		}
		
		
		

		
		
		return forward;
	}

}

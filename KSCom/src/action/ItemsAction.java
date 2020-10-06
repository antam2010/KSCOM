package action;



import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.ItemsService;
import vo.ActionForward;
import vo.ItemsName;

public class ItemsAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ItemsName itemsName=new ItemsName();
		
		boolean result =true;
		
		itemsName.setName(request.getParameter("name"));
		ItemsService itemsService= new ItemsService();
		
		result=itemsService.nameChk(itemsName);
		response.setContentType("text/html; charset=utf-8");
	    
        PrintWriter out=response.getWriter();
        
        if(result) {
        	out.print("fal");
        }else {
        	out.print("suc");
        }
        	

        
		return null;
        
        
        
	}

}

package action;

import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import svc.Com_caseRegistService;
import vo.ActionForward;
import vo.Com_case;

public class Com_caseRegistAction implements Action {
//상품 등록 
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Com_caseRegistService com_caseRegistService = new Com_caseRegistService();
		String realFolder = "";
		
		
		String saveFolder = "/images"; //경로
		String encType = "UTF-8";
		int maxSize = 10*1024*1024; //10mb 까지 업로드가능
		
		
		ServletContext context = request.getServletContext();
		realFolder = context.getRealPath(saveFolder);
		MultipartRequest multi = new MultipartRequest(request,
					realFolder, maxSize, encType,
					new DefaultFileRenamePolicy());
		String image = multi.getFilesystemName("image");

		Com_case com_case = new Com_case(0, multi.getParameter("brand"),
				multi.getParameter("name"),
				multi.getParameter("size"),
				multi.getParameter("power_standard"),
				multi.getParameter("board_standard"),
				image, 
				Integer.parseInt(multi.getParameter("price")),
				multi.getParameter("content"),
				0);
		
		
		
		boolean isRegistSuccess = com_caseRegistService.registCom_case(com_case);
		ActionForward forward = null;
		
		if(isRegistSuccess){
			forward = new ActionForward("com_caseList.do", true);
		}else{
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('등록실패');");
			out.println("history.back();");
			out.println("</script>");
		}
		
		return forward;
	}

}

package action;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import svc.BoardWriteService;
import vo.ActionForward;
import vo.Boardbean;

public class BoardWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		BoardWriteService boardWriteService = new BoardWriteService();
		String realFolder = "";
		String saveFolder = "/boardUpload";
		String encType= "utf-8";
		int maxSize = 10*1024*1024; //10mb
		
		
		
		ServletContext context= request.getServletContext();
		realFolder = context.getRealPath(saveFolder);
		MultipartRequest multi= new MultipartRequest(request, realFolder, maxSize, encType,new DefaultFileRenamePolicy());
		String file= multi.getOriginalFileName((String)multi.getFileNames().nextElement());
		Boardbean boardbean = new Boardbean(0,multi.getParameter("name"),
				multi.getParameter("subject"),
				multi.getParameter("content"),
				file);
		boolean suc = boardWriteService.writeBoard(boardbean);
		ActionForward forward=null;
		
		if(suc) {
			forward = new ActionForward("boardList.do", true);
			
		}else {
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
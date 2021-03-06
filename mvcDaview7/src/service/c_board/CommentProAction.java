package service.c_board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CommentDao;
import dto.Comment_board;
import service.CommandProcess;

public class CommentProAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
	 	String id = (String) session.getAttribute("id");//session체크
	 	
	 	/*view에서 넘어온 값들 parameter로 받기*/
	 	int c_num = Integer.parseInt(request.getParameter("c_num"));
	 	int b_num = Integer.parseInt(request.getParameter("b_num"));
	 	String m_id = request.getParameter("m_id");
	 	int c_ref = Integer.parseInt(request.getParameter("c_ref"));
	 	int c_re_step = Integer.parseInt(request.getParameter("c_re_step"));
	 	int c_re_level = Integer.parseInt(request.getParameter("c_re_level"));
	 	String pageNum = request.getParameter("pageNum");
	 	String c_content = request.getParameter("c_content");
	 	
	 	System.out.println("PageNum::"+pageNum);
	 	Comment_board c_board = new Comment_board();
	 	
	 	/*view에서 넘어온 comment_board 관련값 c_board 담기*/
	 	c_board.setC_num(c_num);
	 	c_board.setB_num(b_num);
	 	c_board.setM_id(m_id);
	 	c_board.setC_content(c_content);
	 	c_board.setC_ref(c_ref);
	 	c_board.setC_re_step(c_re_step);
	 	c_board.setC_re_level(c_re_level);
	 	

		CommentDao c_dao= CommentDao.getInstance();
		int result = c_dao.insert(c_board);

		request.setAttribute("result", result);
		request.setAttribute("id", id);
		request.setAttribute("c_board", c_board);
		request.setAttribute("pageNum", pageNum);
		
		return "comment/commentPro.jsp";
	}

}

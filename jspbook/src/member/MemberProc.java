package member;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberProc
 */
@WebServlet("/member/memberProcServlet")
public class MemberProc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberProc() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO mDao = null;
		RequestDispatcher rd = null;
		int id = 0;
		String action = request.getParameter("action");
		if (!request.getParameter("id").equals("")) {
			id = Integer.parseInt(request.getParameter("id"));
		}
		
		switch(action) {
		case "update":		// 수정 버튼 클릭 시
			mDao = new MemberDAO();
			MemberDTO member = mDao.searchById(id);
			mDao.close();
			request.setAttribute("member", member);
			rd = request.getRequestDispatcher("update.jsp");
	        rd.forward(request, response);
	        break;
	        
		case "delete":		// 삭제 버튼 클릭 시
			mDao = new MemberDAO();
			mDao.deleteMember(id);
			mDao.close();
			//response.sendRedirect("loginMain.jsp");
			String message = "id = " + id + " 이/가 삭제되었습니다.";
			String url = "loginMain.jsp";
			request.setAttribute("message", message);
			request.setAttribute("url", url);
			rd = request.getRequestDispatcher("alertMsg.jsp");
			rd.forward(request, response);
			break;
			
		default:
			
			
			
			
			/*String name = request.getParameter("name");
			String birthday = request.getParameter("birthday");
			String address = request.getParameter("address");
			System.out.println(id + ", " + name);*/
			/*		case "login":
			String password = request.getParameter("password");
			mDao = new MemberDAO();
			int result = mDao.verifyIdPassword(id, password);
			String errorMessage = null;
			switch (result) {
			case MemberDAO.ID_PASSWORD_MATCH:
				break;
			case MemberDAO.ID_DOES_NOT_EXIST:
				errorMessage = "ID가 없음"; break;
			case MemberDAO.PASSWORD_IS_WRONG:
				errorMessage = "패스워드가 틀렸음"; break;
			case MemberDAO.DATABASE_ERROR:
				errorMessage = "DB 오류";
			}
			mDao.close();
			
			if (result == MemberDAO.ID_PASSWORD_MATCH) {
				response.sendRedirect("loginMain.jsp");
			} else {
				String uri = "login.jsp?error=" + URLEncoder.encode(errorMessage, "UTF-8");
						//org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(errorMessage), request.getCharacterEncoding());
				response.sendRedirect(uri); 
			}*/
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

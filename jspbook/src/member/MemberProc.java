package member;

import java.io.IOException;

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
		String action = request.getParameter("action");
		String strId = request.getParameter("id");
		System.out.println(action + ", " + strId);
		switch(action) {
		case "update":
			MemberDAO mDao = new MemberDAO();
			MemberDTO member = mDao.searchById(Integer.parseInt(strId));
			request.setAttribute("member", member);
			RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
	        rd.forward(request, response);
	        mDao.close();
		default:
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
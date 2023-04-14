package svl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class svlPresidenciales extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public svlPresidenciales() {
        super();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		dao.OnpeDAO daoOnpe =new dao.OnpeDAO();
		
		String id = request.getParameter("id");
		Object data = null;
		
		data = daoOnpe.getTotalPC();
		
		session.setAttribute("id", id);
		session.setAttribute("data",data);
		response.sendRedirect("presidenciales.jsp");
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}


package com.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class adminlogincontroller
 */
@WebServlet("/adminlogincontroller")
public class adminlogincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminlogincontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session=request.getSession();
		
		String admin_username=request.getParameter("username");
		String admin_password=request.getParameter("password");

		if(admin_username.equals("admin") && admin_password.equals("admin"))
		{
			session.setAttribute("username", admin_username);
			session.setAttribute("admin_login_status", "true");
			session.setAttribute("username", admin_username);

//			response.sendRedirect("admindashboard.jsp");
			response.sendRedirect("dashboardadmin.jsp");
		}
		else
		{
			session.setAttribute("admin_login_status", "false");
			System.out.println("Password not matched");
//			response.sendRedirect("adminlogin.jsp");
			response.sendRedirect("adminlogin.jsp");

			

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

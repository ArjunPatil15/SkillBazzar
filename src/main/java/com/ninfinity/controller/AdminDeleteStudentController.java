package com.ninfinity.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ninfinity.dao.AccountDAO;
import com.ninfinity.dao.DatabaseConnect;


/**
 * Servlet implementation class AdminDeleteStudentController
 */
@WebServlet("/AdminDeleteStudentController")
public class AdminDeleteStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userid = Integer.parseInt(request.getParameter("userid"));
		
		AccountDAO aDao = new AccountDAO(DatabaseConnect.connect());
		
		boolean status = aDao.DeleteUserById(userid);
		
		if(status) {
			response.sendRedirect("AdminDisplayStudent.jsp");
		}
	}

}

package com.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AjaxDemo")
public class AjaxDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter write = response.getWriter();
		String firstname = request.getParameter("FirstName");
		String lastName = request.getParameter("LastName");
		write.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		write.append("<table background : #FFF>").append("<tr>");
		write.append("<td>");
		write.append("<b>");
		write.append("FIRST NAME : ");
		write.append("</b>");
		write.append("</td>");
		write.append("<td>");
		write.append(firstname);
		write.append("</td>");
		write.append("</tr>");
		write.append("<tr>");
		write.append("<td>");
		write.append("<b>");
		write.append("LAST NAME : ");
		write.append("</b>");
		write.append("</td>");
		write.append("<td>");
		write.append(lastName);
		write.append("</td>");
		write.append("</tr>");
		write.append("</table>");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

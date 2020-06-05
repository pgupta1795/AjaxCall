package com.main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PersonDetails")
public class PersonDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter write = response.getWriter();
		String customer = request.getParameter("p");
		write.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		write.append("<table>");
		write.append("<tr>");
		write.append("<th>");
		write.append("FIRST NAME : ");
		write.append("</th>");
		write.append("<td>");
		write.append(customer);
		write.append("</td>");
		write.append("</tr>");
		write.append("<tr>");
		write.append("<th>");
		write.append("FEATURES : ");
		write.append("</th>");
		write.append("<td>");
		if(customer.equals("Pallav Gupta")){
			write.append("Good Heart,Emotional,Temper Issues");
		}else{
			write.append("Stone Heart,Emotionaless,Anger Issues");
		}
		write.append("</td>");
		write.append("</tr>");
		write.append("</table>");
	}

}

package com.zhiyou;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BController
 */
@WebServlet("/BController")
public class BController extends HttpServlet {       
	public void service(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		String name = req.getParameter("name");
		System.out.println("∑√Œ µΩBController");
		System.out.println(req.getParameter("id"));
		System.out.println(name);
		if(req.getParameter("name").equals("admin")) {
			resp.getWriter().write("1");
		}else {
			resp.getWriter().write("0");
		}
//		resp.getWriter().write("11111SUCCESS");
	}


}

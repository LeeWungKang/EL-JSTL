package com.expression;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.PersonVo;

@WebServlet("/A01expression")
public class A01expression extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PersonVo vo = new PersonVo();
		vo.setName("놀부");
		vo.setAddress("서울");
		vo.setAge(30);
		
		ServletContext ctx = getServletContext( );        //어플리케이션 영역에 객체 만드는것
		ctx.setAttribute("name", "servletContext Scope");
		ctx.setAttribute("id", "ctxID");
		ctx.setAttribute("vo", vo);
		
		
		HttpSession session = request.getSession();
		session.setAttribute("name", "session Scope");
		session.setAttribute("passwd", "session ID");
		session.setAttribute("vo", vo);
		
		
		request.setAttribute("name", "request Scope");
		request.setAttribute("dept", "request ID");
		request.setAttribute("vo", vo);
		
		//위에 영역별로 저장한 객체를 페이지로 이동시킨다
		RequestDispatcher req= request.getRequestDispatcher("expression/A01_expression.jsp");
		req.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}

package com.expression;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.PersonVo;

@WebServlet("/A07_dateSend")
public class A07_dateSend extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String[] name = {"홍길동","이순신","김영구"};
		
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("딸기");
		list.add("사과");
		list.add("복숭아");
		
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("one", 10);
		map.put("two", 20);
		map.put("three", 30);
	
		
		PersonVo vo = new PersonVo();
		vo.setName("Nolbu");
		vo.setAge(30);
		vo.setAddress("수원");
	
		request.setAttribute("name", name);
		request.setAttribute("list", list);
		request.setAttribute("map", map);
		request.setAttribute("vo", vo);
		
		RequestDispatcher dis = request.getRequestDispatcher("./expression/A07_getDatasend.jsp");
		dis.forward(request, response);
		
	}
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}

package com.JSTL;

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

@WebServlet("/A02_dataSend")
public class A02_dataSend extends HttpServlet {
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
	
		
		PersonVo Nolbu = new PersonVo();
		Nolbu.setName("Nolbu");
		Nolbu.setAge(30);
		Nolbu.setAddress("수원");
		
		PersonVo Hungbu = new PersonVo();
		Hungbu.setName("Nolbu");
		Hungbu.setAge(17);
		Hungbu.setAddress("춘천");
	
		ArrayList<PersonVo> personList = new ArrayList<>();
		personList.add(Hungbu);
		personList.add(Nolbu);
		
		request.setAttribute("personList", personList);
		request.setAttribute("name", name);
		request.setAttribute("list", list);
		request.setAttribute("map", map);
		
		RequestDispatcher dis = request.getRequestDispatcher("./JSTL/A02_for.jsp");
		dis.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}

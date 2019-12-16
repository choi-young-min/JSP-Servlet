package com.search.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.search.dao.MemberDAO;
import com.search.vo.MemberVO;

public class LoginAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/member/login_fail.jsp";
		
		HttpSession session =request.getSession();
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		MemberDAO dao = MemberDAO.getInstance();
		MemberVO vo = dao.getMember(id);
		System.out.println(id);
		System.out.println(pwd);
		
		if(vo!=null) {
			if(vo.getPwd().equals(pwd)) {
				session.removeAttribute("id");
				session.setAttribute("loginUser", vo);
				url="search?command=index";
			}
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
}

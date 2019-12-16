package com.search.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.search.dao.MemberDAO;
import com.search.vo.MemberVO;

public class JoinAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/member/login.jsp";
		
		HttpSession ss = request.getSession();
		
		MemberVO vo = new MemberVO();
		vo.setId(request.getParameter("id"));
		vo.setPwd(request.getParameter("pwd"));
		vo.setName(request.getParameter("name"));
		vo.setEmail(request.getParameter("email"));
		
		ss.setAttribute("id", request.getParameter("id"));
		MemberDAO dao = MemberDAO.getInstance();
		dao.insertMember(vo);
		
		request.getRequestDispatcher(url).forward(request, response);
	}
}

package com.project.jr.academy.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.jr.academy.model.AcademyDTO;
import com.project.jr.academy.repository.AcademyDAO;

@WebServlet("/academy/admin/detail.do")
public class Detail extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//Detail.java
		String seq = req.getParameter("seq");
		AcademyDAO dao = new AcademyDAO();
		AcademyDTO dto = dao.get(seq);
		req.setAttribute("dto", dto);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/academy/admin/detail.jsp");
		dispatcher.forward(req, resp);
	}
}
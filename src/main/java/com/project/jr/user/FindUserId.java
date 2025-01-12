package com.project.jr.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.jr.user.model.UserDTO;
import com.project.jr.user.repository.UserDAO;

@WebServlet("/user/finduserid.do")
public class FindUserId extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/user/finduserid.jsp");
		dispatcher.forward(req, resp);

	}	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//아이디 암호 이름 생일 성별 이메일 핸드폰번호 자기소개?>???
		//id pw name birthDate sex eMail phoneNum joinDate userStatus 
		req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=utf-8");
        
        String name = req.getParameter("name");
        String phoneNum1 = req.getParameter("phoneNum1");
        String phoneNum2 = req.getParameter("phoneNum2");
        String phoneNum3 = req.getParameter("phoneNum3");
        String phoneNum = phoneNum1 + "-" + phoneNum2 + "-" + phoneNum3;
		
        //if (checked.equals("1")) {
		UserDAO uDao = new UserDAO();
	    UserDTO uDto = new UserDTO();
	
	    uDto.setName(name);
	    uDto.setPhoneNum(phoneNum);
	    
	    UserDTO result = uDao.findId(uDto);
    
	    if(result != null) {
	    	req.getSession().setAttribute("name", name);
	        req.getSession().setAttribute("phoneNum", phoneNum);
	        req.getSession().setAttribute("id", result.getId());
	        
	        resp.sendRedirect("/jr/user/finduseridresult.do");
	    }else {
	    	//0또는 에러 
	    	PrintWriter writer = resp.getWriter();
	    	writer.print("<script>alert('failed');history.back();</script>");
	    	writer.close();
	    }
//            
//			uDto.setName(name);
//			uDto.setPhoneNum(phoneNum);
//			
//			S result = uDao.finduserid(uDto);

	}
	
	
}
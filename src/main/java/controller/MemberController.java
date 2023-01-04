package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.MemberDTO;

public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");

		if (command.equals("/MemberJoinAction.do")) {
			requestJoinMember(request);
			RequestDispatcher rd = request.getRequestDispatcher("./Login.jsp");
			rd.forward(request, response);
		} else if (command.equals("/MemberUpdateAction.do")) {
			requestUpdateMember(request);
			RequestDispatcher rd = request.getRequestDispatcher("./Index.jsp");
			rd.forward(request, response);
		}

	}

	// 회원정보 수정시
	private void requestUpdateMember(HttpServletRequest request) {
		try {

			MemberDAO dao = MemberDAO.getInstance();
			MemberDTO member = new MemberDTO();

			member.setId(request.getParameter("id"));
			member.setPwd(request.getParameter("pwd"));
			member.setName(request.getParameter("name"));
			member.setGender(request.getParameter("gender"));

			member.setEmail1(request.getParameter("email1"));
			member.setEmail2(request.getParameter("email2"));

			member.setPhone(request.getParameter("phone"));

			dao.update(member);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// 회원가입 시
	public void requestJoinMember(HttpServletRequest request) {

		try {

			MemberDAO dao = MemberDAO.getInstance();
			MemberDTO member = new MemberDTO();

			member.setId(request.getParameter("id"));
			member.setPwd(request.getParameter("pwd"));
			member.setName(request.getParameter("name"));
			member.setGender(request.getParameter("gender"));

			member.setEmail1(request.getParameter("email1"));
			member.setEmail2(request.getParameter("email2"));

			member.setPhone(request.getParameter("phone"));

			dao.join(member);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

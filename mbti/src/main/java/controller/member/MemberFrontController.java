package net.Member.action;

import java.awt.Desktop.Action;
import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class MemberFrontController extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;
	System.out.println("요청주소= " + request.getRequestURI());
	/*
	 * 요청된 전체 URL 중에서 포트번호 다음부터 마지막 문자열 까지 반환됩니다
	 * 예)http://localhost:8088/JSP_Template_JSTL/templatetest.net 인 경우
	 * JSP_Template_JSTL/templatetest.net 반환됨
	 */

	String requestURI = request.getRequestURI();
	System.out.println("requestURI= " + requestURI);

	// getContextPath(): 컨테스트 경로가 반환됩니다
	// contextPath는 /JSP_Template_JSTL 가 반환됩니다
	String contextPath = request.getContextPath();
	System.out.println("contextPath= " + contextPath);

	// requestURI에서 컨텍스트 경로 길이 값의 인덱스 위치 문자부터
	// 마지막 위치의 문자까지 추출됩니다// login.net 반환됨
	String command = requestURI.substring(contextPath.length());
	System.out.println("command=" + command);

	// 초기화
	ActionForward forward = null;
	Action action = null;

	switch (command) {
	case "/login.net":
		action = new MemberLoginAction();
		break;
	case "/join.net":
		action = new MemberJoinAction();
		break;
	case "/idcheck.net":
		action = new MemberIdcheckAction();
		break;
		
	case "/joinProcess.net":
		action = new MemberJoinProcessAction();
		break;
	case "/loginProcess.net":
		action = new MemberLoginProcessAction();
		break;
	case "/logout.net":
		action = new MemberLogoutAction();
		break;
	case "/memberUpdate.net":
		action = new MemberUpdateAction();
		break;
	case "/memberUpdateProcess.net":
		action = new MemberUpdateProcessAction();
		break;
	case "/memberList.net":
		action = new MemberSearchAction();
		break;
	case "/memberInfo.net":
		action = new MemberInfoAction();
		break;
	case "/memberDelete.net":
		action = new MemberDeleteAction();
		break;
		
		
		
	
		
		
		
		
	}// switch(command)

	forward = action.execute(request, response);

	if (forward != null) {
		if (forward.isRedirect()) {// 리다이렉트 됩니다
			response.sendRedirect(forward.getPath());
		} else {// 포함됩니다
			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
			dispatcher.forward(request, response);
		}
	} // if(forward !=null)

}// doProcess

// doProcess(request, response);메서드를 구현하여 요청이 GET방식이든
// POST방식으로 전송되어 오든 같은 메서드에서 요청을 처리 할 수 있도록 하였습니다
protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	doProcess(request, response);

}

protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	doProcess(request, response);

}
	
	

}

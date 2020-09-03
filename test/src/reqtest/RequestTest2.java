package reqtest;

import javax.servlet.http.*;
import java.io.*;
import java.util.Enumeration;

// classes 폴더내에 생성
public class RequestTest2 extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		String id = req.getParameter("id");
		String age = req.getParameter("age");
		
		resp.setCharacterEncoding("euc-kr");
		
		PrintWriter out = null;
		try {
			out = resp.getWriter();
			out.println("<html><body>");
			out.println(id + "님 반갑습니다.<br>");
			out.println("당신의 나이는 " + age + "세 입니다.");
			out.println("</body></html>");
		}
		catch (Exception e) { e.printStackTrace(); }
		finally { out.close(); }
		
		doPost(req, resp);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		/*
		req.setCharacterEncoding("euc-kr");
		resp.setCharacterEncoding("euc-kr");
		
		String[] singers = req.getParameterValues("singer");
		String[] foods = req.getParameterValues("food");
		String[] cities = req.getParameterValues("city");
		
		PrintWriter out = null;
		try { 
			out = resp.getWriter();
			out.println("<html><body>");
			out.println("당신이 좋아하는 가수들입니다.<br>");
			out.println("<ul>");
			for(String s : singers) {
				out.println("<li>" + s+"</li>");
			}
			out.println("</ul>");
			
			out.println("<hr/>");
			out.println("당신이 좋아하는 음식입니다.<br>");
			out.println("<ul>");
			for(String f : foods) {
				out.println("<li>" + f +"<br>" + "</li>");
			}
			out.println("</ul>");
			
			out.println("<hr/>");
			out.println("당신이 좋아하는 도시입니다.<br>");
			out.println("<ul>");
			for(String c : cities) {
				out.println("<li>" + c + "</li>");
			}
			out.println("</ul>");
			
			out.println("</body></html>");
		}
		catch(Exception e) {e.printStackTrace(); }
		finally { 
			out.close();
		}
		*/
		req.setCharacterEncoding("euc-kr");
		resp.setCharacterEncoding("euc-kr");
		
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		
		Enumeration en = req.getParameterNames();
		
		while(en.hasMoreElements()) {
			String name = (String)en.nextElement();
			// text 박스는 null값이어도 전달되지만 checkbox는 선택하지 않으면 전달이 안 됨
			if(name != null) {
				String[] values = req.getParameterValues(name);
				out.println("당신이 좋아하는 " + name + " 입니다.<br>");
				out.println("<ul>");
				for(String str : values) {
					out.println("<li>" + str + "</li>");
				}
				out.println("</ul>");
				out.println("<hr/>");
			}
		}
				
	}
}
// http://localhost:8080/my2/RequestTest2
package tw.brad.ok;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.classes.Web18;


@WebServlet("/Web17")
public class Web17 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	//1.接收參數
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String view = request.getParameter("view");
	//2.演算法
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("Web19");
		try {
			Web18 web18 = new Web18(x,y);
			int result = web18.plus();
			
			request.setAttribute("view", view==null?"View1":view);
			request.setAttribute("x", x);
			request.setAttribute("y", y);
			request.setAttribute("result", result+"");
		} catch (Exception e) {
			//參數不正確 (null or Not INT)
			request.setAttribute("view", view==null?"View1":view);
			request.setAttribute("x", "");
			request.setAttribute("y", "");
			request.setAttribute("result", "");		
		}
		//3.呈現View
			dispatcher.forward(request, response);
	}

}

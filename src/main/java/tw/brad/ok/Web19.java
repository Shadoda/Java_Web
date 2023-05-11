package tw.brad.ok;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.classes.WebUtils;

@WebServlet("/Web19")
public class Web19 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String x = (String) request.getAttribute("x");
		String y = (String) request.getAttribute("y");
		String result = (String) request.getAttribute("result");
		String view = (String) request.getAttribute("view");

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		try {
			String content = WebUtils.loadView(view);
			out.print(String.format(content, view, x, y, result));
		} catch (Exception e) {
			try {
				String content = WebUtils.loadView("View1");
				out.print(String.format(content, view, x, y, result));
			} catch (Exception e1) {
				out.print("Oops!");
			}
		}
	}

}

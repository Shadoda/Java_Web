package tw.brad.ok;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Web12")
public class Web12 extends HttpServlet {
	public Web12() {
		System.out.println("Web12()");
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("swrvice1");
		super.service(req, resp);
	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("service2");
		super.service(req, res);
	}

	@Override
	public void init() throws ServletException {
		System.out.println("init1");
		super.init();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init2");
		super.init(config);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		
//		String method = request.getMethod();
//		System.out.println(metho);
	}
}
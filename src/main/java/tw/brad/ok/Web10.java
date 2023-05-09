package tw.brad.ok;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/Web10")
@MultipartConfig(location = "C:\\Users\\User\\eclipse-workspace\\WEB\\src\\main\\webapp\\upload\\")
public class Web10 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part upload = request.getPart("upload");
		System.out.println("IP: "+request.getLocalAddr());
		System.out.println("Size: "+upload.getSize());
		System.out.println("Type: "+upload.getContentType());
		System.out.println("filename: "+upload.getSubmittedFileName());
		upload.write(upload.getSubmittedFileName());
		}
}

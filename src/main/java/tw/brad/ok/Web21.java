package tw.brad.ok;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.imageio.stream.FileImageOutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Web21")
public class Web21 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String source = "C:\\Users\\User\\eclipse-workspace\\JAVA\\dir1\\pic\\小吉.jpg";
		BufferedImage img = ImageIO.read(new File(source));
		Graphics2D g2d = img.createGraphics();
		
		Font font = new Font(null,Font.BOLD + Font.ITALIC,48);
		
		AffineTransform tran = new AffineTransform();
		tran.rotate(Math.toRadians(0));
		Font font2 = font.deriveFont(tran);
		
		g2d.setColor(Color.black);
		g2d.setFont(font2);
		g2d.drawString("資展國際",80, 700);
		
		response.setContentType("image/jpeg");
		OutputStream os = response.getOutputStream();
		ImageIO.write(img, "jpeg", new FileImageOutputStream(new File("C:\\Users\\User\\eclipse-workspace\\WEB\\src\\main\\webapp\\pic/brad.jpg")));
		
		response.flushBuffer();
	}

}

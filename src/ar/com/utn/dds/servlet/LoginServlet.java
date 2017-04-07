package ar.com.utn.dds.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ar.com.utn.dds.servlet.vo.VoLogin;

/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario=request.getParameter("usuario");
		String password=request.getParameter("password");
		if(usuario.equalsIgnoreCase("gabo") && password.equals("123")){
			System.out.println("Entro al servdor");
			VoLogin vo=new VoLogin();
			vo.setUsuario(usuario);
			vo.setPassword(password);
			vo.setEdad(25);
			vo.setNombre("Gabriel Bori");
			HttpSession session=request.getSession(true);
			session.setAttribute("usuarioLogeado", vo);
			request.getRequestDispatcher("welcome.jsp").forward(request, response);//redirecciono cuando logeo el usuario correcto a welcome.jsp
		} else{ 
			System.out.println("No entro al servidor.");
			response.sendRedirect("login.html");
		}
	}

}

package com.sshtools.universal.consumer;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sshtools.universal.UniversalAuthenticatorClient;

public class AuthenticationServlet extends HttpServlet {

	private static final long serialVersionUID = 9176952220834522697L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String text = request.getParameter("authorizationText");
		
		File registrationFile = new File(RegistrationServlet.userRegistrationsFolder, username);
		if(!registrationFile.exists()) {
			response.sendError(404);
			return;
		}
		
		Properties properties = new Properties();
		
		try(InputStream in = new FileInputStream(registrationFile)) {	
			properties.load(in);
		}
		
		UniversalAuthenticatorClient uac = new UniversalAuthenticatorClient(properties);
		if(uac.authenticate(text)) {
			response.sendRedirect("success.jsp");
		} else {
			response.sendError(401);
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

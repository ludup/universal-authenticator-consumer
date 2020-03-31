package com.sshtools.universal.consumer;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sshtools.universal.UniversalAuthenticatorClient;

public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	public static final File userRegistrationsFolder = new File("users");
	
    public RegistrationServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String principalName = request.getParameter("principalName");
			String email = request.getParameter("email");
			String hostname = request.getParameter("hostname");
			int port = Integer.parseInt(request.getParameter("port"));
			boolean strictSSL = Boolean.parseBoolean(request.getParameter("strictSSL"));
			
			UniversalAuthenticatorClient uac = new UniversalAuthenticatorClient();
			uac.register(email, "My UA Consumer", hostname, port, strictSSL, true);
			
			Properties properties = uac.getProperties();
			
			saveRegistration(principalName, properties);
			
			response.setStatus(200);
		} catch (NumberFormatException | IOException e) {
			response.sendError(500);
		}
	}

	private void saveRegistration(String principalName, Properties properties) throws IOException {
		
		File f = new File(userRegistrationsFolder, principalName);
		f.getParentFile().mkdirs();
		try(OutputStream out = new FileOutputStream(f)) {
			properties.store(out, "UA Consumer Registration");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

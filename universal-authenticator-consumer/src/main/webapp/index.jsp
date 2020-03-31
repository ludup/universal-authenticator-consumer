<html>
<body>
<h2>Universal Authenticator - Registration</h2>
<p>This page demonstrates how a user can easily register the universal authenticator mobile 
application with both the remote Key Server and the consuming application using a QR code.</p>
<p>If the user already has the application installed, they would select "Authorize Server" in the app and scan the QR code to add this server to the list of trusted devices in their UA account.</p>
<p>If the user does not have the application installed, they can scan the QR code below during setup of the UA app.</p>
<p><strong>QR codes are generated for specific users. Therefore, generating and displaying a QR code to a user should generally be protected and only displayed to a user once they have logged into your system.</strong>


<h3>Generating a QR code</h3>
<p>Use our public URL to generate a PNG image of the QR code. The URL takes any combination of the parameters described below, and accepts GET or POST requests.</p>
<p>https://gateway.sshtools.com/app/api/agent/qr </p>
<p>
<img src="https://gateway2.sshtools.com/app/api/agent/qr?username=localUser&email=a1@jadaptive.com&keyServerHost=gateway2.sshtools.com&serverHost=demo.jadaptive.com&serverPath=/universal-authenticator-consumer/RegistrationServlet"/>
</p>
<p>
<p>The QR code generation URL takes the following parameters</p>
<code>username</code><br>The name that the principal uses to login to your system<br><br>
<code>email</code><br>The email address of the user. This will be used to register an account on the Key Server if the does not already have an active account.<br><br>
<code>serverHost</code><br>The host name of your system. This is required for the app to call your registration URL<br><br>
<code>serverPath</code><br>The URI on your server that hosts the registration callback that is called by the app to complete registration.<br></p>
<p><i>The following parameters are optional:</i></p>
<p>
<code>serverPort</code><br>The port on which your system is running (defaults to 443).<br><br>
<code>keyServerHost</code><br>The preferred host name of the key server you want users to register with. Without this, an account will be created on our free cloud service. If the user's app is already registered against another key server this value will be ignored.<br><br>
<code>keyServerPort</code><br>The port on which the key server is running.
</p>
</body>
</html>

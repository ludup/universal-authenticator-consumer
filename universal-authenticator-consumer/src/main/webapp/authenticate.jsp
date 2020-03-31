<html>
<body>
<h2>Universal Authenticator - Authentication</h2>

<p>After the user has a valid registration you can authenticate the user at any time.</p>
<form action="AuthenticationServlet" method="POST">

	<label for="username">Username</label><input type="text" name="username" id="username" value="localUser"><br>
	<label for="authorizationText">Authorizaton Text</label><input type="text" size="100" name="authorizationText" id="authorizationText" value="You can supply your own text as part of the authorization request.."><br>
	<input type="submit">
</form>
</body>
</html>

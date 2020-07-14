<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/1c7965df02.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="row">
		<div class="col"></div>
		<div class="col-8">
			<h1>Universal Authenticator Demo</h1>

			<h2>What is the Universal Authenticator?</h2>

			<p>The Universal Authenticator is a mobile application for
				Android and IOS that supports a number of different key-based
				authentication methods. These include SSH, Webauthn, TOTP as well as
				it's own native mechanism.</p>
			
			<p>	
			<a href="https://play.google.com/store/apps/details?id=com.sshtools.mobile.agent">
			    <img src="playstore.png" height="50"></a>
			    
			<a href="https://play.google.com/store/apps/details?id=com.sshtools.mobile.agent">
			  <img src="appstore.png" height="50"></a></p>
			
			
			<p>Universal Authentication native mechanism involves a
				public/private key operation that verifies the user owns a known
				public key. This operation is similar to SSH authentication, however,
				it works over HTTPS using a REST-based API.</p>
				
			<p>Private keys are stored securely in the UA application.
				Each authentication operation involves the verification of ownership
				of the private key through a signing operation over a known binary
				payload. If the signing operation is validated using the users'
				public key, then the authentication completes.</p>

			<p>
				In order for an application to use the native mechanism, the user must 
				first register with it. This authorizes the server to access the users
				public keys so that it can verify ownership and therefore authenticate
				successfully.
			</p>

			<h2>Using the Universal Authenticator</h2>
			
			<p>You can use this demo application to test the Universal
				Authenticator native mechanism. Follow the steps below:</p>
			<p>
				1. First, install the Universal Authenticator (UA) from your mobile
				app store. Use the app store links at the top of the page.</a>.
			</p>

			<p>
				2. Open the UA on your phone and register with a key server. You can
				use the default cloud instance for free, or download and install
				your own <a
					href="https://www.jadaptive.com/en/products/ssh-key-server">JADAPTIVE
					Key Server</a>.
			</p>
			<p>
				3. Your UA should now be showing the Dashboard. Goto the demo <a
					href="register.jsp">registration</a> page and scan the QR code by
				clicking on "Add Device" on the Dashboard. This action registers the
				consuming application, in this case, our demo application with the
				Universal Authenticator.


			</p>
			<p>
				4. After registration of the demo application, you can use the demo
				to <a href="authenticate.jsp">authenticate</a>.
			</p>

		</div>
		<div class="col"></div>
	</div>
</body>
</html>

<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</head>
<body>
<div class="row">
<div class="col"></div>
<div class="col-8">
<h2>Universal Authenticator - Registration</h2>
<p>This page demonstrates how a user can easily register the universal authenticator mobile application using a QR code.</p>

<p>The same process works regardless of whether the user currently has an active Universal Authenticator app on their phone. Only the initiation of the registration
is different:</p>
<p><strong>A user already has UA installed on their phone:</strong> In this case they would select "Authorize Server" in the app and scan the QR code to add this server to the list of trusted devices in their UA account.</p>
<p><strong>A user does not have the UA installed:</strong> The user should install the UA from the appropriate appstore and then as part of the initial setup scan the QR code below during setup of the UA app.</p>


<h4>Generating a QR code</h4>

<p><strong>IMPORTANT: QR codes are generated for specific users. Therefore, generating and displaying a QR code to a user should generally be protected and only displayed to a user once they have logged into your system.</strong></p>
 
<p>Use our public URL to generate a PNG image of the QR code. The URL takes any combination of the parameters described below, and accepts GET or POST requests.</p>

<p>URL <strong>https://gateway.sshtools.com/app/api/agent/qr</strong></p>

<p>For a full list of supported parameters please see <a href="qr.jsp">here</a>.</p>

<form>
  <div class="form-group">
     <label>Application Login</label>
     <input class="form-control" type="text" name="username" id="username" value="localUser">
     <small class="form-text text-muted">This is the user name used to login to your application. If the user logs in using an email, duplicate this in both this and the email field.</small>
  </div>
  <div class="form-group">
     <label>Application Email</label>
     <input class="form-control" type="text" name="email" id="email" value="a3@jadaptive.com">
     <small class="form-text text-muted">This is the email address of the user that you want to authenticate. If the user does not have a UA account this will be used to register one with the preferred Key Server.</small>
  </div>
  <div class="form-group">
     <label>Registration Server Host</label>
     <input class="form-control" type="text" name="serverHost" id="serverHost" value="demo.jadaptive.com">
     <small class="form-text text-muted">The host name of your server to use when completing registration</small>
  </div>
  <div class="form-group">
     <label>Registration Server Host</label>
     <input class="form-control" type="text" name="serverPort" id="serverPort" value="443">
     <small class="form-text text-muted">The port on which your server is running. This should be an SSL port running a valid CA issued certificate.</small>
  </div>
  <div class="form-group">
     <label>Registration Callback URL</label>
     <input class="form-control" type="text" name="serverPath" id="serverPath" value="/universal-authenticator-consumer/RegistrationServlet">
     <small class="form-text text-muted">The path of the registration callback URL on your server.</small>
  </div>
  <div class="form-group">
  		<button id="generateQRCode" class="btn btn-success">Generate QR Code</button>
  </div>
</form>

<p> Your QR will appear below.
<p id="generatedQRCode">

</p>

</div>
<div class="col"></div>
</div>
<script type="text/javascript">

$(document).ready(function() {
	$('#generateQRCode').click(function(e) {
		e.preventDefault();
		$('#generatedQRCode').empty();
		$('#generatedQRCode').append('<img src="https://gateway2.sshtools.com/app/api/agent/qr?username=' + $('#username').val() 
				+ '&email=' + $('#email').val() 
				+ '&serverHost=' + $('#serverHost').val() 
				+ '&serverPort=' + $('#serverPort').val() 
				+ '&keyServerHost=gateway2.sshtools.com&keyServerPort=443">');
		$('#generatedQRCode').append('<p>Once registered you can verify authentication <a href="authenticate.jsp">here</a>.');
	});
});
</script>
</body>
</html>

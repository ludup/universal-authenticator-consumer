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
<h1>Universal Authenticator - Registration</h1>
<p>This page demonstrates how a user can easily register the Universal Authenticator mobile application using a QR code.</p>


<h2>Generating Registration QR Code</h2>

<p><strong>Enter your email address to generate a QR code. Scanning the QR code with the UA app will allow this demo server to authenticate you using your UA keys.</strong></p>

<form>
  <div class="form-group">
     <label>Your Email</label>
     <input class="form-control" type="email" name="email" id="email" value="" required>
     <small class="form-text text-muted">If you already have a UA account use the email you used when registering the app.</small>
     <small class="form-text text-muted">If the user does not have a UA account this will be used to register one with the preferred Key Server, in this case our free cloud service.</small>
  </div>
  <input class="form-control" type="hidden" name="serverHost" id="serverHost" value="demo.jadaptive.com">
  <input class="form-control" type="hidden" name="serverPort" id="serverPort" value="443">
  <input class="form-control" type="hidden" name="serverPath" id="serverPath" value="/universal-authenticator-consumer/RegistrationServlet">
 
  <div class="form-group">
  		<button id="generateQRCode" class="btn btn-success">Generate QR Code</button>
  </div>
</form>

<p>The same process works regardless of whether the user currently has an active Universal Authenticator app on their phone. Only the initiation of the registration
is different:</p>
<p><strong>A user already has UA installed on their phone:</strong> In this case they would select "Add Device" in the app and scan the QR code to add this server to the list of trusted devices in their UA account.</p>
<p><strong>A user does not have the UA installed:</strong> The user should install the UA from the appropriate appstore and then on the initial registration screen select "Scan QR" and point the phones camera at the QR code below.</p>
   
<p> Your QR will appear below.
<p id="generatedQRCode">
   
</p>

</div>
<div class="col"></div>
</div>
<script type="text/javascript">

$(document).ready(function() {
	
	$('#generateQRCode').attr('disabled', 'disabled');
	$('#email').keyup(function() {
		if($('#email').val().trim()==='') {
			$('#generateQRCode').attr('disabled', 'disabled');
		} else {
			$('#generateQRCode').removeAttr('disabled');	
		}
	});
	
	$('#generateQRCode').click(function(e) {
		e.preventDefault();
		
		$('#generatedQRCode').empty();
		$('#generatedQRCode').append('<img src="https://gateway.jadaptive.com/app/api/agent/qr?username=' +  $('#email').val() 
				+ '&email=' + $('#email').val() 
				+ '&serverHost=' + $('#serverHost').val() 
				+ '&serverPort=' + $('#serverPort').val() 
				+ '&serverPath=' + $('#serverPath').val()
				+ '&keyServerHost=gateway.jadaptive.com&keyServerPort=443">');
		$('#generatedQRCode').append('<p>Once registered you can verify authentication <a href="authenticate.jsp">here</a>.');
	    
	});
});
</script>
</body>
</html>

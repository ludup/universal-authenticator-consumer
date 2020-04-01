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
<h2>Universal Authenticator - QR Code Parameters</h2>

<p>The QR code generation URL takes the following parameters:</p>
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
</div>
<div class="col"></div>
</div>
</body>
</html>

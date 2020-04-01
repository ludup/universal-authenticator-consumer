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
<h2>Universal Authenticator</h2>

<p>The JADAPTIVE Universal Authenticator can be integrated into your own application using the examples shown here.</p>

<p>Universal Authentication involves a public/private key operation that verifies the user is in possession of a known key. Private keys are stored securely 
in the UA application and each authentication operation involves the verification of ownership of the private key through a signing operation over a known binary
payload. If the signing operation is validated using the users known public key then authentication completes.</p>

<p>To perform UA authentication a user must first install the app and <a href="register.jsp">register</a> it with the consuming application.</p>

<p>After registration is complete, you can <a href="authenticate.jsp">authenticate</a> the user.</p>

</div>
<div class="col"></div>
</div>
</body>
</html>

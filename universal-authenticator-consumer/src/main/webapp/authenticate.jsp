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
<h2>Universal Authenticator - Authentication</h2>

<p>After the user has a valid registration you can authenticate the user at any time.</p>
<form action="AuthenticationServlet" method="POST">
	<div class="form-group">
	     <label for="username">Username</label>
	     <input type="text" class="form-control" name="username" id="username" value="localUser">
	</div>
	<div class="form-group">
	    <label for="authorizationText">Authorizaton Text</label>
	    <input type="text" size="100" class="form-control" name="authorizationText" id="authorizationText" value="You can supply your own text as part of the authorization request..">
	</div>
	<div class="form-group">
	    <input type="submit" class="btn btn-success" value="Authenticate">
	</div>
</form>
</div>
<div class="col"></div>
</div>
</body>
</html>

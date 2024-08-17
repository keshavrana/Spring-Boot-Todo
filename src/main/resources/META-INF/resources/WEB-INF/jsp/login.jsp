<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Welcome to Login</title>
<link rel="stylesheet" href="./style.css">
<link rel="icon" href="./favicon.ico" type="image/x-icon">
</head>
<body>
	<main>
		<h1>Welcome to My Website</h1>
		<h2>${error}</h2>
		<form action="/login" method="POST">
			<label>Name:</label> <input type="text" name="name"> <label>Password:</label>
			<input type="text" name="password">
			<button>Login</button>
		</form>
	</main>
	<script src="index.js"></script>
</body>
</html>
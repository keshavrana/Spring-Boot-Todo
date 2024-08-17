<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>ToDo App</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<div>Welcome ${name}</div>
		<hr>
		<h1>Your Todo Application</h1>

		<form:form method="POST" modelAttribute="todo">
			<div class="form-group">
				<label for="desc">Description:</label>
				<form:input type="text" path="description" class="form-control"
					name="description" />
				<form:input type="date" path="targetDate" class="form-control"
					name="targetDate" />
				<form:input type="hidden" path="done" class="form-control"
					name="done" />
			</div>
			<form:errors style="color:red" path="description" />
			<br>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
		<hr>
		<a href="todo-list" class="btn btn-dark">Go Back</a>
	</div>
</body>

<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</html>
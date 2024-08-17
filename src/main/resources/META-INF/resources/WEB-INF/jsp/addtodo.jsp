<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>ToDo App</title>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css"
	rel="stylesheet">

</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-md navbar-light bg-light mb-3 p-1">
			<a class="navbar-brand m-1" href="todo-list">Todo App</a>
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="todo-list">Add
							Todos List</a></li>
				</ul>
			</div>
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
			</ul>
		</nav>
		<form:form method="POST" modelAttribute="todo">
			<div class="form-group">
				<label for="desc">Description:</label>
				<form:input type="text" path="description" class="form-control"
					name="description" />
				<form:input type="text" path="targetDate" class="form-control"
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
<script
	src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript">
	$('#targetDate').datepicker({
		format : 'yyyy-mm-dd',
		autoclose : true,
		todayHighlight : true
	});
</script>
</html>
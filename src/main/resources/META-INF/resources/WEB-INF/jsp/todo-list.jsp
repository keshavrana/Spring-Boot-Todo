<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Description</th>
					<th>Target Date</th>
					<th>Status</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${todos}">
					<tr>
						<td>${item.id}</td>
						<td>${item.username}</td>
						<td>${item.description}</td>
						<td>${item.targetDate}</td>
						<td>${item.done}</td>
						<td><a href="edittodo?id=${item.id}" class="btn btn-success">Edit</a></td>
						<td><a href="deletetodo?id=${item.id}" class="btn btn-warning">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="addtodo" class="btn btn-primary">Add ToDo</a>
	</div>
</body>

<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</html>
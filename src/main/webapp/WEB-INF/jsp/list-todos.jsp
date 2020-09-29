<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Todo's for ${name}</title>
	<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">	
		<table class="table table-striped">
			<caption>Your todo's are</caption>
			<thead>
				<tr>
					<th>Description</th>
					<th>Date</th>
					<th>Is it done?</th>	
					<th>Delete</th>	
				</tr>
			<thead>
			<tbody>
				<!-- JSTL for loop		 -->
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td>${todo.targetDate}</td>
						<td>${todo.done}</td>	
						<td><a type="button" class="btn btn-warning" href="/delete-todo?id=${todo.id}">DELETE</a></td>	
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div><a class="btn btn-primary" href="/add-todo">Add a Todo</a></div>
	
		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</div>
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>>

<html>
<head>
	<title>Todo's for ${name}</title>
</head>
<body>
	<h1>Your Todos</h1>
	
	<table>
		<caption>Your todo's are</caption>
		<thead>
			<tr>
				<th>Description</th>
				<th>Date</th>
				<th>Is it done?</th>	
			</tr>
		<thead>
		<tbody>
			<!-- JSTL for loop		 -->
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td>${todo.targetDate}</td>
					<td>${todo.done}</td>	
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br/>
	<a href="/add-todo">Add a Todo</a>
</body>
</html>
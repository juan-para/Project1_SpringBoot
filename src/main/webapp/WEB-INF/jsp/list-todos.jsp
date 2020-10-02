<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container pull-left">
	<table class="table table-striped">
		<caption>Your todo's are</caption>
		<thead>
			<tr>
				<th>Description</th>
				<th>Date</th>
				<th>Is it done?</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
		<thead>
		<tbody>
			<!-- JSTL for loop		 -->
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td><fmt:formatDate value="${todo.targetDate}"
							pattern="dd/MM/yyyy" /></td>
					<td>${todo.done}</td>
					<td><a type="button" class="btn btn-success"
						href="/update-todo?id=${todo.id}">UPDATE</a></td>
					<td><a type="button" class="btn btn-warning"
						href="/delete-todo?id=${todo.id}">DELETE</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<a class="btn btn-primary" href="/add-todo">Add a Todo</a>
	</div>
</div>
<%@ include file="common/footer.jspf" %>
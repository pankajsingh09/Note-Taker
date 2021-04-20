<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@ include file="all_js_css.jsp" %>
<title>Note Taker: All Notes</title>
</head>
<body>

<div class="container">
<%@ include file="navbar.jsp" %>
<br>
<h1 class="text-uppercase">All Notes</h1>

	<div class="row">
		
		<div class="col-12">
		
		<%
	Session s=FactoryProvider.getFactory().openSession();
	
	Query q=s.createQuery("from Note"); 
	List<Note> list=q.list();
	for(Note note:list)
	{
		%>
		
		<div class="card mt-3" >
  <img class="card-img-top m-4 mx-auto" style="max-width:80px" src="img/notes.png" alt="Card image cap">
  <div class="card-body px-5">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text">
    <%= note.getContent() %>
    </p>
    
    
   <% String date=(String)note.getAddedDate().toString(); %>
    <div class=" text-primary text-right">
    <h5>
    <%=date.substring(0, 19) %>
    </h5>
    </div>
    
    <div class="container text-center mt-3">
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger mr-2">Delete</a>
    <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
    </div>
    
  </div>
</div>
		
		
		<% 
		
	}

	s.close();

%>
		
		</div>
	
	
	</div>





</div>

</body>
</html>

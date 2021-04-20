<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
    <title>Note Taker : Home</title>
    
    	<%@ include file="all_js_css.jsp" %>
    
  </head>
  <body>
  
  
  <div class="container">
  
  	<%@ include file="navbar.jsp" %>
  	<br>
  <div class="card py-5">
  	<img alt="" class="image-fluid mx-auto" style="max-width: 400px" src="img/notes.png">
  	<h1 class="text-primary text-uppercase text-center mt-3">Start Taking Your Note</h1>
  	
  	<div class="container text-center">
  	<form action="add_notes.jsp" method="post">
  	<button  class="btn btn-outline-primary text-center">
  	Start Here</button>
  	</form>
  	
  	</div>
  
  </div>
  
  </div>
  
    

    
  </body>
</html>
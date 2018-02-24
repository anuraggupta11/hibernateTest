<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<jsp:include page="../../inc/head.jsp"></jsp:include>
</head>
<body >

	<!-- jQuery first, then Tether, then Bootstrap JS. -->
	<jsp:include page="../../inc/foot.jsp"></jsp:include>
	<div class="container ">
		<div class="wizard w-100">
							<form class="form_validator" action="<%=request.getServletContext().getContextPath()%>/rest/auth/upload_file" method="POST" data-ajax="true">
		
			<div class="step" data-step="1" data-complete="false" data-validation="true">
			
			<div class="form-group">
					  <label for="example-text-input" >Name</label>
					    <input class="form-control" type="text"  name="Name" id="example-text-input" placeholder="Enter Name" data-min-length="4" >
					</div>
					<div class="card" style="width: 20rem;">
					
					
					 <div class="form-group">
					    <label for="exampleInputEmail1">Email Email</label>
					    <input type="email" name="Email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" >
					    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div>
					 
					  
					  <div class="card-block">
					    <h4 class="card-title">Card title</h4>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn btn-primary">Go somewhere</a>
					  </div>
					</div>
			</div>
			<div class="step" data-step="2" data-complete="false" data-validation="true">
					<div class="card">
					  <div class="card-block">
					    This is some text within a card block.
					  </div>
					</div>
			</div>
			<div class="step" data-step="3" data-complete="false" data-validation="false"> Hello World 2</div>
			<div class="step" data-step="4" data-complete="false" data-validation="false">Hello World 3</div>
			<div class="step" data-step="5" data-complete="false" data-validation="false">Hello World 4 </div>
			<div class="step" data-step="6" data-complete="false" data-validation="false">Hello World 5</div>
			<div class="step" data-step="7" data-complete="false" data-validation="false">Hello World 6</div>
			<div class="step" data-step="8"data-complete="false" data-validation="false">Hello World 7</div>
		<button type="button" class="btn btn-danger wizard_previous">previous</button>
		<button type="button" class="btn btn-danger wizard_next">next</button>
		</form>
		</div>
		
	</div>

</body>
</html>
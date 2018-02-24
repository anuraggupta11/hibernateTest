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
		
		<div class="progress">
		  
  
</div>
							<form class="form_validator" action="<%=request.getServletContext().getContextPath()%>/rest/auth/upload_file" method="POST" data-ajax="true">
		
			<div class="step" data-step="1" data-complete="false" data-validation="false">
				<div class="form-group">
					  <label for="example-text-input" >Name</label>
					    <input class="form-control" type="text"  name="Name" id="example-text-input" placeholder="Enter Name" data-min-length="4" >
					</div>
					  <div class="form-group">
					    <label for="exampleInputEmail1">Email Email</label>
					    <input type="email" name="Email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" >
					    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
					  </div>
					 
						  <div class="form-group">
					    <label for="exampleSelect1">Example select</label>
					    <select name="dropdown" class="form-control" id="exampleSelect1" >
					    <option value="" selected >select my options of the list</option>
					      <option value="1" >1</option>
					      <option value="2">2</option>
					      <option value="2" >3</option>
					      <option value="2" >4</option>
					      <option value="2">5</option>
					    </select>
					  </div>
					  
					  <div class="form-group">
					<label for="exampleInputFile">File input</label> <input type="file"
						class="form-control-file" name="file" id="exampleInputFile"
						aria-describedby="fileHelp"> <small id="fileHelp"
						class="form-text text-muted">This is some placeholder
						block-level help text for the above input. It's a bit lighter and
						easily wraps to a new line.</small>
				</div>
			
			
			</div>
			<div class="step" data-step="2" data-complete="false" data-validation="false">
			
			<div class="form-group">
					    <label for="exampleInputPassword1">Password</label>
					    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password" data-min-length="4">
					  </div>
					  <div class="form-group">
						  <label for="example-number-input">Number</label>
						    <input class="form-control" name="Numvber" type="number" placeholder="Number"   id="example-number-input">
						  
						</div>
			
			</div>
			<div class="step" data-step="3" data-complete="false" data-validation="true"> Hello World 2</div>
			<div class="step" data-step="4" data-complete="false" data-validation="true">Hello World 3</div>
			<div class="step" data-step="5" data-complete="false" data-validation="true">Hello World 4 </div>
			<div class="step" data-step="6" data-complete="false" data-validation="true">Hello World 5</div>
			<div class="step" data-step="7" data-complete="false" data-validation="true">Hello World 6</div>
			<div class="step" data-step="8"data-complete="false" data-validation="false">Hello World 7</div>
		<button type="button" class="btn btn-danger wizard_previous">previous</button>
		<button type="button" class="btn btn-danger wizard_next">next</button>
		</form>
		</div>
		
	</div>

</body>
</html>
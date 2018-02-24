<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>Jumbotron Template for Bootstrap</title>

<jsp:include page="../../inc/head.jsp"></jsp:include>

</head>

<body>

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron white-bg mt-3">
		
		 
		<div class="container">
		 
		 
					<form class="form_validator" action="<%=request.getServletContext().getContextPath()%>/rest/auth/upload_file" method="POST" data-ajax="true">
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
					    <label for="exampleInputPassword1">Password</label>
					    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password" data-min-length="4">
					  </div>
					  <div class="form-group">
						  <label for="example-number-input">Number</label>
						    <input class="form-control" name="Numvber" type="number" placeholder="Number"   id="example-number-input">
						  
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

				<div class="form-check">
					<label class="form-check-label"> <input type="checkbox"
						class="form-check-input"> Check me out
					</label>
				</div>

				<div class="form-group">
					<label for="exampleInputFile">File input</label> <input type="file"
						class="form-control-file" name="file" id="exampleInputFile"
						aria-describedby="fileHelp"> <small id="fileHelp"
						class="form-text text-muted">This is some placeholder
						block-level help text for the above input. It's a bit lighter and
						easily wraps to a new line.</small>
				</div>

				<div class="form-group">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="optionsRadios" id="optionsRadios1"
						value="option1" checked> Option one is this and
						that&mdash;be sure to include why it's great
					</label> <label class="form-check-label"> <input
						type="radio" class="form-check-input" name="optionsRadios"
						id="optionsRadios2" value="option2"> Option two can be
						something else and selecting it will deselect option one
					</label>
				</div>
				<div  class="btn btn-primary formsubmit">Submit</div>
				
				<input type="hidden" id="file_content" name="file"/>
				
				
					</form>
		
	 
		</div>
	</div>

	<!-- /container -->


	<jsp:include page="../../inc/foot.jsp"></jsp:include>
</body>
</html>

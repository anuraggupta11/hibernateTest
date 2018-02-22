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
<body class="bg-image-login">

	<!-- jQuery first, then Tether, then Bootstrap JS. -->
	<jsp:include page="../../inc/foot.jsp"></jsp:include>
	<div class="container full_container">

		<div class="row p-4 login_form border-gray">
			<div class="col-12">
				<img class="img-thumbnail logo-image border-0"
					src="http://elt.talentify.in:9999/assets/img/user_images/new_talentify_logo.png"  />
				<form class="" action="#" method="get">
					<div class="form-group p-2 m-2">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" class="form-control" id="exampleInputEmail1" data-validation="email"
							aria-describedby="emailHelp" placeholder="Enter email">
					</div>
					<div class="form-group p-2 m-2 mb-4">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							placeholder="Password"  name="pass"
		 data-validation="strength" data-validation-strength="2">
					</div>
					
					<div  class=" login-submit bg-trans" ><i class="fas fa-arrow-circle-right fa-3x white-color"></i></div>
					
				</form>
			</div>


		</div>
	</div>

</body>
</html>
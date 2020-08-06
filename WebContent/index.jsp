<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EMI Calculator</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="js/bootstrap.min.js" type="text/javascript">
</script>
<script src="js/jquery-1.12.3.min.js" type="text/javascript">
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$('button#emi').click(function(event) {
			var amount = $("#amount").val();
			var rate = $("#rate").val();
			var months = $("#months").val();

			// AJAX REQUEST
			$.get('CalculateEMI', {
				amount : amount,
				rate : rate,
				month : months
			}, function(response) {
				$('#emiValue').text(response);
			});

			event.preventDefault();
		});
	});
</script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="http://www.javadomain.in">Javadomain.in</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>

	<div class="container" style="margin-top: 150px;">
		<div class="row">

			<div class="form-group">
				<form id="emi_form">
					<fieldset>

						<!-- Form Name -->
						<legend>EMI Calculator</legend>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="amount">Enter
								the amount</label>
							<div class="col-md-5">
								<input id="amount" name="amount" type="text" placeholder=""
									class="form-control input-md">

							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="rate">Enter
								the Interest Rate</label>
							<div class="col-md-5">
								<input id="rate" name="rate" type="text" placeholder=""
									class="form-control input-md">

							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<label class="col-md-4 control-label" for="month">Enter
								the Number of months</label>
							<div class="col-md-5">
								<input id="months" name="month" type="text" placeholder=""
									class="form-control input-md">

							</div>
						</div>

						<!-- Button -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="emi"></label>
							<div class="col-md-4">
								<button id="emi" name="emi" class="btn btn-primary">Calculate
									EMI</button>
							</div>
						</div>

					</fieldset>
				</form>

			</div>

		</div>

		<div class="row">
			<label class="col-md-4 control-label" for="month">EMI Amount
				Payable : </label>
			<div class="col-md-5" id="emiValue"></div>
		</div>
	</div>
</body>
</html>
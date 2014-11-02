<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="../../favicon.ico">

	<title>Loverrr</title>

	<!-- Bootstrap core CSS -->
	<link href="/assets/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="/assets/css/sticky-footer-navbar.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="/assets/js/html5shiv.min.js"></script>
	  <script src="/assets/js/respond.min.js"></script>
	<![endif]-->

	<link href="/assets/css/jquery.dataTables.min.css" rel="stylesheet">
	<link href="/assets/css/dataTables.bootstrap.css" rel="stylesheet">
  </head>

  <body>

	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	  <div class="container">
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </button>
		  <a class="navbar-brand" href="#">Loverrr</a>
		</div>
		<div class="collapse navbar-collapse">
		  <ul class="nav navbar-nav">
		  <cfoutput>
			<li<cfif getSection() eq "main"> class="active"</cfif>><a href="#buildUrl('main')#">Home</a></li>
			<li<cfif getSection() eq "loveletter"> class="active"</cfif>><a href="#buildUrl('loveletter.default')#">Love letter</a></li>
			<li<cfif getSection() eq "reports"> class="active"</cfif>><a href="#buildUrl('reports.default')#">Reports</a></li>
<!---
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
			  <ul class="dropdown-menu" role="menu">
				<li><a href="#">Action</a></li>
				<li><a href="#">Another action</a></li>
				<li><a href="#">Something else here</a></li>
				<li class="divider"></li>
				<li class="dropdown-header">Nav header</li>
				<li><a href="#">Separated link</a></li>
				<li><a href="#">One more separated link</a></li>
			  </ul>
			</li>
--->
		  </cfoutput>
		  </ul>
		</div><!--/.nav-collapse -->
	  </div>
	</div>

	<!-- Begin page content -->
	<cfoutput>#body#</cfoutput>

	<div class="footer">
	  <div class="container">
		<p class="text-muted">Automate you lover letter creation with Jasper Reports, by <a href="http://www.lagaffe.be" target="_blank">Guust Nieuwenhuis</a>, for <a href="http://www.cfcamp.org" target="_blank">CFCamp 2014</a></p>
	  </div>
	</div>


	<!-- Bootstrap core JavaScript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="/assets/js/jquery.min.js"></script>
	<script src="/assets/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="/assets/js/ie10-viewport-bug-workaround.js"></script>

	<script src="/assets/js/jquery.dataTables.min.js"></script>
	<script src="/assets/js/dataTables.bootstrap.js"></script>

	<script src="/assets/js/loverrr.js"></script>
  </body>
</html>


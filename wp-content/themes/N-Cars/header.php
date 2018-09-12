<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>N-Cars</title>

	<!-- CSS -->
	<!-- bloginfo() helper method -->
	<link href="<?php bloginfo('template_directory')?>/css/bootstrap.min.css" rel="stylesheet">
	<link href="<?php bloginfo('template_directory')?>/css/reset.css" rel="stylesheet">
	<link href="<?php bloginfo('template_directory')?>/css/main.css" rel="stylesheet">
	<link href="<?php bloginfo('template_directory')?>/css/prettyPhoto.css" rel="stylesheet">
	<link href="<?php bloginfo('template_directory')?>/fonts/font-awesome.min.css" rel="stylesheet">

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<?php wp_head(); ?>
</head>
<body>
<header>
	<div class="container">
		<div class="row">
			<div class="col-md-4 logo">
				<a href="/N-Cars/"><h1><span>CARS</span>&nbsp;World</h1></a>
			</div>
			<div class="col-md-8 head-adv">
				<img src="<?php bloginfo('template_directory')?>/img/head-adv.png" class="img-responsive" style="margin: 0 auto;"/>
			</div>
		</div>
	</div>
</header>

<nav class="navbar navbar-default" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<i class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand sr-only" href="#">Brand</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="/N-Cars" class="selected"><span class="glyphicon glyphicon-home"></span></a><span
						class="dash">|</span></li>
				<?php
				$links = wp_get_nav_menu_items(11);
                foreach ($links as $link) { ?>
                    <li><a href="<?= $link->url ?>"><?= $link->title ?></a><span class="dash">|</span></li>
                <?php } ?>

                <?php if (is_user_logged_in())  { ?>
                <li><a href="<?= wp_logout_url(home_url())?>">Logout</a></li>
				<?php } else{  ?>
                <li><a href="<?= wp_login_url(home_url())?>">Login</a><span class="dash">|</span></li>
                <li><a href="<?= wp_registration_url(home_url())?>">Register</a><span class="dash">|</span></li>
                <?php } ?>

			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container -->
</nav>

<div class="content container">
	<div class="social-search row">
		<div class="col-md-4 col-sm-5 search">
			<form>
				<input type="text" name="s" placeholder="looking for something?"/>
				<input type="submit" value=""/>
			</form>
		</div>
		<div class="col-md-5 col-sm-7 col-md-offset-3 social">
			<ul>
				<li><a href="#"><i class="fa fa-facebook"></i>Facebook</a></li>
				<li><a href="#"><i class="fa fa-twitter"></i>Twitter</a></li>
				<li><a href="#"><i class="fa fa-rss"></i>RSS</a></li>
				<li><a href="#"><i class="fa fa-envelope"></i>Mail</a></li>
			</ul>
		</div>
	</div>




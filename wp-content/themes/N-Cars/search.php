<?php get_header(); ?>

<div class="row">
	<div class="col-md-8 left-side">

		<div class="single-article">
			<h1>ALL POSTS FROM <span style="color: #F26C4F;"><?php the_search_query() ?></span>&nbsp;KeyWord : </h1>

			<?php
			while ( have_posts() ) {
				the_post(); ?>
				<div class="row single-cat">
					<div class="col-md-4 img-of-post">
						<a href="<?= the_permalink() ?>"><img src="<?= the_post_thumbnail_url() ?>" class="img-responsive"/></a>
					</div>
					<div class="col-md-8 cont-of-post">
						<a href="<?= the_permalink() ?>"><h1 class="title-of-post"><?= the_title() ?></h1></a>
						<p class="some-content"><?= get_180(get_the_content()) ?> ... </p>
						<a href="<?= the_permalink() ?>" class="more">Read more</a>
					</div>
				</div>
			<?php } ?>

			<div class="pagination">
				<?= paginate_links() ?>  <!--change number of posts from setting in admin panel-->
			</div>
		</div>

	</div>

	<div class="col-md-4 right-side">
		<h1 class="featured"></h1>
		<div class="f-posts">
			<div class="row f-post">
				<div class="col-md-4 post-img">
					<a href="#"><img src="img/gallery1.jpg" class="img-responsive"/></a>
				</div>
				<div class="col-md-8 post-title">
					<a href="#"><h1>AUDI T T S CAR PHOTOS 2015 , AUDI T T S CAR 2015</h1></a>
					<span>9 Comments</span>
				</div>
			</div>
			<div class="row f-post">
				<div class="col-md-4 post-img">
					<a href="#"><img src="img/gallery1.jpg" class="img-responsive"/></a>
				</div>
				<div class="col-md-8 post-title">
					<a href="#"><h1>AUDI T T S CAR PHOTOS 2015 , AUDI T T S CAR 2015</h1></a>
					<span>9 Comments</span>
				</div>
			</div>
			<div class="row f-post">
				<div class="col-md-4 post-img">
					<a href="#"><img src="img/gallery1.jpg" class="img-responsive"/></a>
				</div>
				<div class="col-md-8 post-title">
					<a href="#"><h1>AUDI T T S CAR PHOTOS 2015 , AUDI T T S CAR 2015</h1></a>
					<span>9 Comments</span>
				</div>
			</div>
			<div class="row f-post">
				<div class="col-md-4 post-img">
					<a href="#"><img src="img/gallery1.jpg" class="img-responsive"/></a>
				</div>
				<div class="col-md-8 post-title">
					<a href="#"><h1>AUDI T T S CAR PHOTOS 2015 , AUDI T T S CAR 2015</h1></a>
					<span>9 Comments</span>
				</div>
			</div>
			<div class="row f-post">
				<div class="col-md-4 post-img">
					<a href="#"><img src="img/gallery1.jpg" class="img-responsive"/></a>
				</div>
				<div class="col-md-8 post-title">
					<a href="#"><h1>AUDI T T S CAR PHOTOS 2015 , AUDI T T S CAR 2015</h1></a>
					<span>9 Comments</span>
				</div>
			</div>


		</div>

		<h1 class="adv"></h1>
		<div class="advArea">
			<div class="ads-here"><span>Your Advertisment to be here</span></div>
		</div>

		<h1 class="tags-head"></h1>
		<div class="tags">
			<ul>
				<li><a href="#">passenger</a></li>
				<li><a href="#">audi</a></li>
				<li><a href="#">transmission</a></li>
				<li><a href="#">airbags</a></li>
				<li><a href="#">stability</a></li>
				<li><a href="#">power</a></li>
				<li><a href="#">injection</a></li>
				<li><a href="#">cruise</a></li>
				<li><a href="#">brakes</a></li>
				<li><a href="#">car</a></li>
				<li><a href="#">control</a></li>
			</ul>
		</div>

		<h1 class="archive-head"></h1>
		<div class="archive">
			<ul>
				<li><a href="#">October 2014</a></li>
				<li><a href="#">September 2014</a></li>
				<li><a href="#">August 2014</a></li>
				<li><a href="#">July 2014</a></li>
				<li><a href="#">June 2014</a></li>
				<li><a href="#">May 2014</a></li>
				<li><a href="#">April 2014</a></li>
				<li><a href="#">March 2014</a></li>
			</ul>
		</div>

		<h1 class="follow"></h1>
		<div>
			<img src="img/fb.jpg" class="img-responsive"/>
		</div>

		<h1 class="adv"></h1>
		<div class="advArea">
			<div class="ads-here"><span>Your Advertisment to be here</span></div>
		</div>

	</div>
</div>


<?php get_footer(); ?>

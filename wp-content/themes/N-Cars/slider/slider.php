<?php
// Retrieve Data ...
$posts=new WP_Query("ordered=last&showposts=5");


// to move cursor ..

?>
<div style="max-width:645px;">

	<!-- Insert to your webpage where you want to display the slider -->
	<div id="amazingslider-1" style="display:block;position:relative;margin:0 auto 32px;">
		<ul class="amazingslider-slides" style="display:none;">
			<?php while($posts->have_posts()){
				$posts->the_post();
				?>
				<li>
					<a href="<?php the_permalink();?>"><img src="<?php the_post_thumbnail_url('leftside_slider'); ?>" alt="<?php the_title(); ?>" /></a></li>
			<?php } ?>
		</ul>
		<ul class="amazingslider-thumbnails" style="display:none;">
			<?php while($posts->have_posts()){
				$posts->the_post();
				?>
				<li><img src="<?php the_post_thumbnail_url('righside_slider'); ?>" /></li>
			<?php } ?>
		</ul>
	</div>
	<!-- End of body section HTML codes -->

</div>

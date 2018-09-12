</div>
<div class="container-fluid footer">
	<div class="container">
		<div class="row">
			<div class="col-md-4 widget">
				<h1 class="widget-head">Links</h1>
				<ul>
					<li>- <a href="#">Home</a></li>
					<li>- <a href="#">About</a></li>
					<li>- <a href="#">Contact</a></li>
					<li>- <a href="#">Terms of service</a></li>
					<li>- <a href="#">Advertise</a></li>
				</ul>
			</div>
			<div class="col-md-4 widget">
				<h1 class="widget-head">Categories</h1>
				<ul>
					<?php
					$links = wp_get_nav_menu_items(11);
					foreach ($links as $link) { ?>
                        <li>- <a href="<?= $link->url ?>"><?= $link->title ?></a></li>
					<?php } ?>
				</ul>
			</div>
			<div class="col-md-4 social-widget">
				<h1 class="widget-head">Follow us on</h1>
				<ul>
					<li><a href="#"><img src="<?php bloginfo('template_directory')?>/img/fa.png"/></a></li>
					<li><a href="#"><img src="<?php bloginfo('template_directory')?>/img/tw.png"/></a></li>
					<li><a href="#"><img src="<?php bloginfo('template_directory')?>/img/tm.png"/></a></li>
					<li><a href="#"><img src="<?php bloginfo('template_directory')?>/img/nn.png"/></a></li>
					<li><a href="#"><img src="<?php bloginfo('template_directory')?>/img/fl.png"/></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid down-footer">
	<div class="container">
		<div class="row">
			<div class="col-md-6 rights">
				<p>All Rights Reserved to ncars.net 2014</p>
			</div>
			<div class="col-md-6 rights sawa">
				<a href="#">Designed and Developed by SAWA4</a>
			</div>
		</div>
	</div>
</div>
<!-- JS -->
<script src="<?php bloginfo('template_directory')?>/js/jquery-1.11.1.min.js"></script>
<script src="<?php bloginfo('template_directory')?>/js/bootstrap.min.js"></script>
<script src="<?php bloginfo('template_directory')?>/js/modernizr.js"></script>
<script src="<?php bloginfo('template_directory')?>/js/jquery.prettyPhoto.js"></script>
<script src="<?php bloginfo('template_directory')?>/sliderengine/amazingslider.js"></script>
<script src="<?php bloginfo('template_directory')?>/sliderengine/initslider-1.js"></script>
<script>
    $(document).ready(function(){
        if (Modernizr.touch) {
            // show the close overlay button
            $(".close-overlay").removeClass("hidden");
            // handle the adding of hover class when clicked
            $(".img").click(function(e){
                if (!$(this).hasClass("hover")) {
                    $(this).addClass("hover");
                }
            });
            // handle the closing of the overlay
            $(".close-overlay").click(function(e){
                e.preventDefault();
                e.stopPropagation();
                if ($(this).closest(".img").hasClass("hover")) {
                    $(this).closest(".img").removeClass("hover");
                }
            });
        } else {
            // handle the mouseenter functionality
            $(".img").mouseenter(function(){
                $(this).addClass("hover");
            })
            // handle the mouseleave functionality
                .mouseleave(function(){
                    $(this).removeClass("hover");
                });
        }

        $("a[rel^='prettyPhoto']").prettyPhoto({
            opacity:'0.95',
            slideshow:'5000',
            theme:'light_rounded'
        });
    });
</script>
<?php wp_footer(); ?>
</body>
</html>

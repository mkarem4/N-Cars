<?php
get_header();
the_post();
?>


    <div class="row">
        <div class="col-md-8 left-side">

            <div class="single-article">
                <a href="#"><h1><?php the_title();?></h1></a>
                <div class="info">
                    <span><img src="<?php bloginfo('template_directory')?>/img/time.png"/><?php the_time('Y-m-d');?></span>
                    <span><img src="<?php bloginfo('template_directory')?>/img/auther.png"/><?php the_author();?></span>
                    <span><img src="<?php bloginfo('template_directory')?>/img/comment.png"/><?php comments_number(get_the_ID())?></span>
                    <span><img src="<?php bloginfo('template_directory')?>/img/category.png"/><?php the_category(',');?></span>
                </div>
                <a href="#"><img src="<?php the_post_thumbnail_url(); ?>" class="img-responsive"/></a>
                <p><?php the_content();?></p>
                <h1>LEAVE A COMMENT :</h1>

				<?php comments_template();?>
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
                    <li><a href="#"><?php the_tags( '', ' ', '<br />' ); ?></a></li>
                </ul>
            </div>

            <h1 class="archive-head"></h1>
            <div class="archive">
                <ul>
                    <li><a href="#"><?php the_archive_title() ?></a></li>
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
<?php
get_footer();
?>

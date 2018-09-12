<?php
// Helpers Functions..

//function get_180($text){
//	return substr($text,0,180);
//}

// Configuration Methods;

//post-thumbnails configuarations
add_theme_support('post-thumbnails');

//register your website menus
register_nav_menus(array(
	'header_menu'=>'Header Menu For WebSite',
	'footer_menu'=>'Footer Menu For WebSite'
));


// 108X67 rightside slider , true for crop
add_image_size("righside_slider",108,67,true);
//637 × 393 for leftside slider..
add_image_size("leftside_slider",637,393,true);


// hooks
// register hook

// action hook
//add_action('wp_head','print_alert');
//function print_alert(){
//	echo "<script> alert('Cars')</script>";
//}

//filter hook
add_filter('the_content','sub_content');

// check on the page
// is_single();
// is_category();
// is_search();
// is_404();
// is_page();


function sub_content($text){
	if (is_category()){
		return substr($text,0,50);
	}else{
		return $text;
	}
}
?>

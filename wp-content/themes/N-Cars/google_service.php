<?php
/*
Template Name: Google Service
*/

get_header();

//$method=strtolower($_SERVER['REQUEST_METHOD']);
//if($method=="get"){
//
//	// Send Curl Request to Shortener URL Service..
//	$API_KEY="AIzaSyDEaAqktOhunlWOM1hgzuMjaswJR1-ENBM";
//	$SERVICE_URI="https://www.googleapis.com/urlshortener/v1/url?key=";
//	$paramters='{"longUrl":"http://ahmedkesha.com"}';
//	$curl=curl_init();
//	curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
//	curl_setopt($curl,CURLOPT_URL,$SERVICE_URI.$API_KEY);
//	curl_setopt($curl,CURLOPT_POST,1);
//	curl_setopt($curl,CURLOPT_POSTFIELDS,$paramters);
//	curl_setopt($curl,CURLOPT_RETURNTRANSFER,1);
//	$respnse=curl_exec($curl);
//
//}

//$con    = new mysqli( DB_HOST, DB_USER, DB_PASSWORD, DB_NAME );
//$result = $con->query( "select * from car_posts where post_type='post'" );

$rows = $wpdb->get_results("select * from cars_posts where post_type='post'");
//$rows = ($result->fetch_all(MYSQLI_ASSOC));
//$rows = $wpdb->get_results( "select * from car_posts where post_type='post'" );
foreach ( $rows as $row ) {
	echo $row->post_title. "<br/>";
}
get_footer();
?>

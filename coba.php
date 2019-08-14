<?php
   
	$jsonData = json_decode(file_get_contents('https://maps.googleapis.com/maps/api/place/details/json?placeid=Your_place_id&fields=user_ratings_total&key=Your_api_key'),TRUE);

$totalrating= json_encode($jsonData['result']['user_ratings_total']);

	
include_once('wp-includes/wp-db.php');
include_once('wp-load.php' );

global $wpdb;
if(date('h')>=0){
if($totalrating == 0){
echo "data tidak terupdate";
}
else{
echo "data terupdate";
$wpdb->update('wp_grp_google_place', array('user_ratings_total'=>$totalrating), array('place_id'=>'your_place_id'));
}

}

$result = $wpdb->get_results ( "
    SELECT * 
    FROM  wp_grp_google_place
        
" );

foreach ( $result as $page )
{
   
   echo '<br/>'.$page->user_ratings_total.'<br/>';
}

?>
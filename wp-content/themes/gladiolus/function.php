<?php 

require_once('wp_bootstrap_navwalker.php');
function gladiolus_theme_setup(){
	register_nav_menus(array(
		'primary'=> __('Primary Menu')
		));
}
add_action('after_setup_theme', 'gladiolus_theme_setup');



 ?>

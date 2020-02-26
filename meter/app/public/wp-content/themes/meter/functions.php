<?php 
	function meter_files(){
		//wp_enqueue_stript('meter_galleri-slider', get_theme_file_uri('/js/galleri-slider.js'), NULL, microtime(), true);//microtime() rettes til version udgaven, 1.0 inden udgivelse. Så browseren hurtigere kan uploade.
		wp_enqueue_style('google-fonts', '//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500&display=swap');
		wp_enqueue_style('font-awsome', '//kit.fontawesome.com/80821de148.js');
		wp_enqueue_style('meter_main_styles', get_stylesheet_uri(), NULL, microtime()); //NULL og microtime(), slettes inden udgivelse. Så browseren hurtigere kan uploade
	}
	add_action('wp_enqueue_scripts', 'meter_files');

	/////////////////////////////////////////////////////////////////////
	function meter_features(){
		register_nav_menu('headerMenuLocation', 'Header Menu Location');
		add_theme_support('title-tag');
	}
	add_action('after_setup_theme', 'meter_features');



	
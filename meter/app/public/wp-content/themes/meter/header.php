<!DOCTYPE html>
<html <?php language_attributes(); ?>>
	<head>
		<?php wp_head(); ?>
		<link href="<?php bloginfo('stylesheet_url');?>" rel="stylesheet">
		<meta charset="<?php bloginfo('charset'); ?>">
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
		<script src="https://kit.fontawesome.com/80821de148.js" crossorigin="anonymous"></script>
	</head>
	<body <?php body_class(); ?>>
	<header>
		<a href="<?php echo site_url('/') ?>"><img class="header-logo" src="<?php echo get_theme_file_uri('/images/meter-logo.jpg') ?>" alt="meter Logo"></a>
		<nav class="header_nav">
			<?php 
         	 wp_nav_menu(array(
           		'theme_location' => 'headerMenuLocation'
          	));
			?>
			<div class="header_dropDown-lines"></div>
		</nav>
	</header>

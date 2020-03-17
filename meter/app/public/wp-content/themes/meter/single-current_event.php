<?php 
	get_header(); 
?>

<h1 class="project_headerText">Current</h1>
<p class="singlePage_linkBack"><a href="<?php echo get_post_type_archive_link('current_event'); ?>">Back to Current events</a></p>
<?php 
	while(have_posts()){
		the_post(); ?>
		<section class="news_post_box">
		<img class="news_image_thumbnails" src="<?php echo get_theme_file_uri(); ?>" alt="news image">
		<div class="news_post_infoText">
		<h6 class="news_post_date news_post_text">Date: <?php 
				$eventDate = new DateTime(get_field('event_date'));
				echo $eventDate->format('d ');
				echo $eventDate->format('M ');
				echo $eventDate->format('Y ');
			?></h6>
			<h6 class="news_post_date news_post_text">Time: <?php the_field('event_time'); ?></h6>
			<h4 class="news_post_headerText news_post_text"><?php the_title(); ?></h4>
			<div class="news_post_lineBorder"></div>
			<p class="news_post_mainText news_post_text"><?php the_excerpt(); ?></p>
		</div>
		</section>
	<?php }
		echo paginate_links();
?>

<?php
	get_footer();
?>
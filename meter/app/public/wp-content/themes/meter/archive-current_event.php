<?php 
	get_header(); 
?>

<h1 class="project_headerText">Current</h1>

<?php 
	while(have_posts()){
		the_post(); ?>
		<section class="news_post_box">
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
			<p class="news_post_mainText news_post_text"><?php echo wp_trim_words( get_the_content(), 50); ?></p>
			<button class="news_post_button"><a href="<?php the_permalink(); ?>">Read More</a></button>
		</div>
		</section>
<?php
	}
?>

<?php
	get_footer();
?>

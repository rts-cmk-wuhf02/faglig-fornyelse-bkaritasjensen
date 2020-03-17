<?php 
	get_header(); 
?>

<h1 class="project_headerText">Past</h1>
<p class="singlePage_linkBack"><a href="<?php echo get_post_type_archive_link('past_event'); ?>">Back to Past events</a></p>
<?php 
	while(have_posts()){
		the_post(); ?>
		<section class="news_post_box">
		<div class="news_post_infoText">
		<img class="projectsPast_imageThumbnails" src="<?php echo get_theme_file_uri('/images/new-image.jpg') ?>" alt="news image">
			<h6 class="news_post_date news_post_text"><?php the_time('j F, Y'); ?></h6>
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
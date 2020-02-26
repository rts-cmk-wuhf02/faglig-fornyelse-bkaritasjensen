<?php 
	get_header(); 
?>

<h1>
	<?php 
	if(is_category()){ ?>
		<p class="archive_get-link-header-text"><?php echo single_cat_title(); ?></p>
	<?php } 
	if(is_tag()) { ?>
		<p class="archive_get-link-header-text"><?php echo single_tag_title(); ?></p>
	<?php }
	?>
</h1>
<?php 
	while(have_posts()){
		the_post(); ?>
		<section class="news_post_box">
		<img class="news_image_thumbnails" src="<?php echo get_theme_file_uri('/images/new-image.jpg') ?>" alt="news image">
		<div class="news_post_infoText">
			<h6 class="news_post_date news_post_text"><?php the_time('j F, Y'); ?></h6>
			<h4 class="news_post_headerText news_post_text"><?php the_title(); ?></h4>
			<div class="news_post_lineBorder"></div>
			<p class="news_post_mainText news_post_text"><?php the_excerpt(); ?></p>
			<button class="news_post_button"><a href="<?php the_permalink(); ?>">Read More</a></button>
		</div>
		</section>
	<?php }

	echo paginate_links();
?>


<?php
	get_footer();
?>
<?php 
	get_header(); 
?>

<h1 class="project_headerText">Past</h1>
<div class="projectsPast_outherMain">
<?php 
	while(have_posts()){
		the_post(); ?>
		<section class="projectsPast_singleMain">
		<img class="projectsPast_imageThumbnails" src="<?php echo get_theme_file_uri('/images/new-image.jpg') ?>" alt="news image">
		<h4 class="projectsPast_mainText"><?php the_title(); ?></h4>
		<button class="projectsPast_button"><a href="<?php the_permalink(); ?>">Read More</a></button>
		</section>
<?php 
	}
	echo paginate_links();
?>
</div>
<?php
	get_footer();
?>

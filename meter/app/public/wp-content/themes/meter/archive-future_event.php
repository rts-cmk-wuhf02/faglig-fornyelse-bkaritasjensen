<?php 
	get_header(); 
?>

<h1 class="project_headerText">Future</h1>

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
			<p class="news_post_mainText news_post_text"><?php the_excerpt(); ?></p>
		</div>
		</section>
		<?php
		$tags = get_the_tags(); 
			if( $tags ) {
				foreach( $tags as $tag ) { ?>
				<a class="singlePage_tags-links" href="<?php echo get_tag_link($tag->term_id); ?>"><?php echo $tag->name; ?></a>
			<?php } }

			$categories = get_the_category();
			if( $categories ) {
				foreach($categories as $category) { ?>
				 <a class="singlePage_tags-links" href="<?php echo get_category_link($category->term_id); ?>"><?php echo $category->name; ?></a>

	<?php 	}}
		}
		echo paginate_links();
?>

<?php
	get_footer();
?>

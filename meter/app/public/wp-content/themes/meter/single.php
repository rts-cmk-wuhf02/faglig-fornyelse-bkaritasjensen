<?php 
	get_header(); ?>
<p class="singlePage_linkBack"><a href="<?php echo site_url('/news') ?>">Back to News</a></p>
<?php	while(have_posts()) {
		the_post(); ?>
		<div class="singlePage_headerBox">
			<img class="news_image_thumbnails" src="<?php echo get_theme_file_uri('/images/new-image.jpg') ?>" alt="news image">
			<h1 class="singlePage_headerText"><?php the_title(); ?></h1>
		</div>
		<p class="singlePage_contentText"><?php the_content(); ?></p>
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
			<?php }}
		}
	get_footer();
?>
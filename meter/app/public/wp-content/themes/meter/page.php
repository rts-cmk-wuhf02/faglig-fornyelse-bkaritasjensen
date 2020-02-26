<?php 
	get_header(); 

	while(have_posts()){
		the_post();
?>	

<main>
	<?php
	$theParent = wp_get_post_parent_id(get_the_ID());
		if ($theParent){ ?>
			<a>
				<div class="footer_info-border-line footer_info-border-line-last"></div>
				<p><?php the_title(); ?></p>
				<div class="footer_info-border-line footer_info-border-line-last"></div>
			</a>
	<?php	}
	?>
	<img src="<?php echo get_theme_file_uri('/images/about.jpg') ?>" alt="about page photo"/>
	<p>Husk at lave undertitel senere</p>
	<?php the_content(); ?>
</main>
	
<?php
	}
	get_footer();
?>
<?php

////////////////////////////////////// ADD FUTURE TO DASHBOARD
	function meter_future_events (){
		register_post_type('future_event', array(
			'supports' => array('title', 'editor', 'excerpt'),
			'rewrite' => array('slug' => 'future_events'),
			'has_archive' => true,
			'public' => true,
			'labels' => array(
				'name' => 'Future',
				'add_new_item' => 'Add new future event',
				'edit_item' => 'Edit future event',
				'all_item' => 'All future events',
				'singular_name' => 'Future event'
			),
			'menu_icon' => 'dashicons-calendar-alt'
		));
	}
	add_action('init', 'meter_future_events');

////////////////////////////////////// ADD CURRENT TO DASHBOARD
function meter_current_events (){
	register_post_type('current_event', array(
		'supports' => array('title', 'editor', 'excerpt'),
			'rewrite' => array('slug' => 'current_events'),
			'has_archive' => true,
			'public' => true,
			'labels' => array(
				'name' => 'Current',
				'add_new_item' => 'Add new current event',
				'edit_item' => 'Edit current event',
				'all_item' => 'All current events',
				'singular_name' => 'Current event'
		),
		'menu_icon' => 'dashicons-calendar-alt'
	));
}
add_action('init', 'meter_current_events');

////////////////////////////////////// ADD PAST TO DASHBOARD
function meter_past_events (){
	register_post_type('past_event', array(
		'rewrite' => array('slug' => 'past_events'),
		'has_archive' => true,
		'public' => true,
		'labels' => array(
			'name' => 'Past',
			'add_new_item' => 'Add new past event',
			'edit_item' => 'Edit past event',
			'all_item' => 'All past events',
			'singular_name' => 'Past events'
		),
		'menu_icon' => 'dashicons-calendar-alt'
	));
}
add_action('init', 'meter_past_events');
<?php
remove_action('wp_head', 'wlwmanifest_link'); 
remove_action('wp_head', 'wp_generator'); 
remove_action('wp_head', 'rest_output_link_wp_head');
remove_action('wp_head', 'rsd_link'); 
remove_action('wp_print_styles',     'print_emoji_styles' );
remove_action('admin_print_styles',  'print_emoji_styles' );
remove_action('wp_head',             'print_emoji_detection_script', 7 );
remove_action('admin_print_scripts', 'print_emoji_detection_script' );
remove_action( 'wp_enqueue_scripts', 'wp_enqueue_global_styles' );

add_action( 'wp_enqueue_scripts', function () {
    wp_enqueue_style( 'slick', get_template_directory_uri() . '/assets/slick/slick.css');
    wp_enqueue_style( 'slider', get_template_directory_uri() . '/assets/slick/slick-theme.css');
    wp_enqueue_style( 'style', get_template_directory_uri() . '/assets/css/index.css');

  

	wp_deregister_script( 'jquery' );
	wp_register_script( 'jquery', '//code.jquery.com/jquery-1.11.0.min.js', false, '1.11', true );
	wp_enqueue_script( 'jquery' );

	wp_deregister_script( 'jquery-migrate' );
	wp_register_script( 'jquery-migrate', '//code.jquery.com/jquery-migrate-1.2.1.min.js', array( 'jquery' ), '1.2.1', true );
	wp_enqueue_script( 'jquery-migrate' );


    wp_enqueue_script( 'slider', get_template_directory_uri() . '/assets/slick/slick.min.js', array('jquery'), 'null', true);
    wp_enqueue_script( 'slick', get_template_directory_uri() . '/assets/js/slick.js', array(), 'null', true );
    wp_enqueue_script( 'index', get_template_directory_uri() . '/assets/js/index.js', array(), 'null', true );

});


?>
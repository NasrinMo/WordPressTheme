<?php
/*	
=======================================
 Include nasrin_script_enqueue
=======================================
*/
function nasrin_script_enqueue(){

	//css
	wp_enqueue_style('bootstrap', get_template_directory_uri() . '/css/bootstrap-3.3.4/dist/css/bootstrap.min.css', array(), '3.3.4', 'all');
	wp_enqueue_style('customstyle', get_template_directory_uri() . '/css/nasrin.css', array(), '1.0.0', 'all');

	//js
	wp_enqueue_script('jquery');
	wp_enqueue_script('bootstrapjs', get_template_directory_uri() . '/js/bootstrap.min.js', array(), '3.3.4', true);
	wp_enqueue_script('customjs', get_template_directory_uri() . '/js/nasrin.js', array(), '1.0.0', true);

}

add_action('wp_enqueue_scripts','nasrin_script_enqueue');

/*	
=======================================
 Activate menus
=======================================
*/
function nasrin_theme_setup(){

	add_theme_support('menus');

	register_nav_menu('primary','Primary Header Navigation');
	register_nav_menu('secondary','Footer Navigation');

}

add_action('init','nasrin_theme_setup');

/*	
=======================================
 Theme support function
=======================================
*/
add_theme_support('custom-background');
add_theme_support( 'custom-header' );
add_theme_support('post-thumbnails');
add_theme_support( 'post-formats', array( 'aside', 'image','video' ) );
add_theme_support( 'html5', array('search-form') );

/*	
=======================================
 Slidebar function
=======================================
*/
function nasrin_widget_setup(){

	register_sidebar(
		array(
			'name' => 'Sidebar',
			'id' => 'sidebar-1',
			'class' => 'custom',
			'description' => 'Standard Sidebar',
			'before_widget' => '<aside id="%1$s" class="widget %2$s">',
			'after_widget' => '</aside>',
			'before_title' => '<h1 class="widget-title">',
			'after_title' => '</h1>',
		)
	);

	register_sidebar(
		array(
			'name' => 'Sidebar-less',
			'id' => 'sidebar-2',
			'class' => 'custom',
			'description' => 'Standard Sidebar With less option',
			'before_widget' => '<aside id="%1$s" class="widget %2$s">',
			'after_widget' => '</aside>',
			'before_title' => '<h1 class="widget-title">',
			'after_title' => '</h1>',
		)
	);
}

add_action('widgets_init','nasrin_widget_setup');

/*	
=======================================
 Include Walker File
=======================================
*/
require get_template_directory().'/inc/walker.php';

/*	
=======================================
 Head function
=======================================
*/
function nasrin_remove_version(){
	return '';
}

add_filter('the_generator','nasrin_remove_version');

/*	
=======================================
 Custom Post Type
=======================================
*/

function nasrin_custom_type (){
	$labels = array(
		'name' => 'Portfolio',
		'singular_name' => 'Portfolio',
		'add_new' => 'Add Item',
		'all_items' => 'All Items',
		'add_new_item' => 'Add Item',
		'edit_item' => 'Edit Item',
		'new_item' => 'New Item',
		'view_item' => 'View Item',
		'search_item' => 'Search Portfolio',
		'not_found' => 'No items found',
		'not_found_in_trash' => 'No items found in trash',
		'parent_item_colon' => 'Parent Item'
	);
	$args = array(
		'labels' => $labels,
		'public' => true,
		'has_archive' => true,
		'publicly_queryable' => true,
		'query_var' => true,
		'rewrite' => true,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array(
			'title',
			'editor',
			'excerpt',
			'thumbnail',
			'revisions'
		),
		//'taxonomies' => array('category','post_tag'),
		'menu_position' => 5,
		'exclude_from_search' => false,
	);

	register_post_type('portfolio',$args);
}

add_action('init' ,'nasrin_custom_type');

function nasrin_custom_taxonomies(){
	//taxonomy for portfolio 
	//taxonomy hierarchical is like category
	//taxonomy not hierarchical is like tag
	//category for post

	//add new taxonomy hierarchical
	$labels = array(
		'name' => 'Fields',
		'singular_name' => 'Fields',
		'search_items' => 'Search Fields',
		'all_items' => 'All Fields',
		'parent_item' => 'Parent Field',
		'parent_item_colon' => 'Parent Field:',
		'edit_item' => 'Edit Field',
		'update_item' => 'Update Field',
		'add_new_item' => 'Add New Field',
		'new_item_name' => 'New Field Name',
		'menu_name' => 'Fields'
	);

	$args = array(
		'hierarchical' => true,
		'labels' => $labels,
		'show_ui' => true,
		'show_admin_column' => true,
		'query_var' => true,
		'rewrite' => array('slug' => 'field')
	);

	register_taxonomy('field',array('portfolio'), $args);

	//add new taxonomy NOT hierarchical
	register_taxonomy('software','portfolio',array(
		'label' => 'software',
		'rewrite' => array('slug' => 'software'),
		'hierarchical' => false
	));

}

add_action('init' , 'nasrin_custom_taxonomies');

/*	
=======================================
 Custom Term Function
=======================================
*/
function nasrin_get_terms($postID,$term){

	$terms_list = wp_get_post_terms($postID, $term); 
	$output = '';

	$i=0;
	foreach ($terms_list as $term) { $i++;
		if ($i>1) { $output .= ','; }
		$output .= '<a href="'. get_term_link($term) . '">'. $term->name .'</a>';
	}

	return $output;
}





<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta <?php bloginfo('charset'); ?> >
	<title><?php bloginfo('name'); wp_title('|'); ?></title>
	<?php wp_head(); ?>
	<meta name="description" content="<?php bloginfo('description');  ?>">
</head>

<?php
	if (is_front_page()) {
		$nasrin_classes = array('nasrin-class','my-class');
	}else{
		$nasrin_classes = array('no-nasrin-class');
	}
?>

<body <?php body_class($nasrin_classes) ?>>
		
	<div class="container">
	
		<div class="row">
			
			<div class="col-xs-12">
				
				<nav class="navbar navbar-default navbar-fixed-top">
				  <div class="container">
				    <!-- Brand and toggle get grouped for better mobile display -->
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				      <a class="navbar-brand" href="#">Nasrin Theme</a>
				    </div>
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<?php 
							wp_nav_menu(array(
								'theme_location' => 'primary',
								'container' => false,
								'menu_class' => 'nav navbar-nav navbar-right',
								'depth' => 2,
								'walker' => new Walker_Nav_Primary()
								)
							);
						?>
					</div>
				  </div><!-- /.container-fluid -->
				</nav>
			</div>

			<div class="col-xs-12">
				<div class="search-form-container">
					<div class="container">
						<?php get_search_form(); ?>
					</div>
				</div>
			</div>

		</div>
		
		<!-- header image -->
		<img src="<?php //header_image(); ?>" height="<?php //echo get_custom_header()->height; ?>" width="<?php //echo get_custom_header()->width; ?>" alt="" />

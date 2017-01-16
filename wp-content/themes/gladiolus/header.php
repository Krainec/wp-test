<!DOCTYPE html>
<html lang="en">
<head <?php language_attributes(); ?> >
    <meta charset="<?php bloginfo('charset'); ?> ">    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description"  content="<?php bloginfo('description') ?> ">
    <title>
        <?php bloginfo('name'); ?> |
        <?php is_front_page() ? bloginfo('description') : wp_title(); ?>
    </title>
    <meta name="description"  content="">       
    <link href="<?php bloginfo('template_url'); ?>/css/font-awesome.min.css" rel="stylesheet"> 
    <link href="<?php bloginfo('template_url'); ?>/css/bootstrap.css" rel="stylesheet">
    <link href="<?php bloginfo('stylesheet_url'); ?>" rel="stylesheet">
    <!-- <script src="<?php bloginfo('template_url'); ?>/js/respond.js"></script> -->
    <?php wp_head(); ?>
</head>
<body>
<div class="mein-menu">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>
              
          </div>
          <div class="collapse navbar-collapse ">
              <ul class="nav navbar-nav" id="nav-menu">
                  <li class="active"><a href="#">главная</a></li>
                 <li><a href="">консалтинг</a></li>
                   <li><a href="">тренинг</a></li>
                   <li><a href="">блог</a></li>
                   <li><a href="">о нас</a></li>
                   <li><a href="">отзывы</a></li>
                   <li><a href="">контакты</a></li>  
               </ul>
          </div>
              </div>
              <!-- <?php
                          wp_nav_menu( array(
                'menu'              => 'primary',
                'theme_location'    => 'primary',
                'depth'             => 2,
                'container'         => 'div',
                'container_class'   => 'collapse navbar-collapse',
                      'container_id'      => 'bs-example-navbar-collapse-1',
                'menu_class'        => 'nav navbar-nav',
                'fallback_cb'       => 'wp_bootstrap_navwalker::fallback',
                'walker'            => new wp_bootstrap_navwalker())
                          );
                      ?> -->
    </nav>
</div>
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
  <title>Интернет-магазин сантехники</title>
  <?php wp_head();?>
</head>

<body class="page">
  <header class="header">
    <div class="header__top">
      <div class="header__top_left">
        <ul class='header__list'>
          <li class='header__social-item'>
          <a href="tel:<?php echo $GLOBALS['shop']['phone_digits']; ?>">
              <img class='header__social-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/phone.svg" alt='logo' />
            </a>
          </li>
          <li class='header__social-item'>
          <a href="<?php echo $GLOBALS['shop']['whatsapp_url']; ?>" target="_blank" rel="noreferrer">
              <img class='header__social-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/whatsapp.svg" alt='logo' />
            </a>
          </li>
          <li class='header__social-item'>
          <a href="<?php echo $GLOBALS['shop']['instagram_url']; ?>" target="_blank" rel="noreferrer">
              <img class='header__social-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/instagram.svg" alt='logo' />
            </a>
          </li>
          <li class='header__social-item'>
          <a href="<?php echo $GLOBALS['shop']['telegram_url']; ?>" target="_blank" rel="noreferrer">
              <img class='header__social-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/telegram.svg" alt='logo' />
            </a>
          </li>
          <li class='header__social-item'>
          <a href="<?php echo $GLOBALS['shop']['vk_url']; ?>" target="_blank" rel="noreferrer">
              <img class='header__social-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/vk.svg" alt='logo' />
            </a>
          </li>
        </ul>
      </div>

      <div class="header__top_right">
        <nav class="header__menu-horizontal">

        <?php
          wp_nav_menu( [
            'theme_location'  => 'menu',
            'container'       => null, 
            'menu_class'      => 'header__list', 
            'list_item_class'  => 'header__menu-links',
            'link_class'   => 'header__menu-link'
          ] );
        ?>
        </nav>
      </div>
    </div>

    <div class="header__center">
      <div class="header__center_left">
      <?php  the_custom_logo (); ?>
        <h1 class="header__center_title"><?php echo $GLOBALS['shop']['name']; ?></h1>
      </div>

      <div class="header__center_center">
        <ul class="header__list">
          <li class="header__services-links">
            <img class='header__center_iqon' src="<?php echo wp_get_attachment_image_url(carbon_get_theme_option( 'benefit_image_1' )); ?>" />
            <p class="header__center_text"><?php echo $GLOBALS['shop']['benefit_description_1']; ?></p>
          </li>
          <li class="header__services-links">
          <img class='header__center_iqon' src="<?php echo wp_get_attachment_image_url(carbon_get_theme_option( 'benefit_image_2' )); ?>" />
            <p class="header__center_text"><?php echo $GLOBALS['shop']['benefit_description_2']; ?></p>
          </li>
          <li class="header__services-links">
          <img class='header__center_iqon' src="<?php echo wp_get_attachment_image_url(carbon_get_theme_option( 'benefit_image_3' )); ?>" />
            <p class="header__center_text"><?php echo $GLOBALS['shop']['benefit_description_3']; ?></p>
          </li>
        </ul>
      </div>

      <div class="header__center_right">
        <ul class='header__list_menu'>
          <li class='header__menu-item'>
            <i class="fa fa-search" aria-hidden="true"></i>
          </li>
          <li class='header__menu-item'>
            <a href="#" target="_blank" rel="noreferrer">
              <i class="fa fa-heart" aria-hidden="true"></i>
            </a>
          </li>
          <li class='header__menu-item'>
            <a href="#" target="_blank" rel="noreferrer">
              <i class="fa fa-shopping-basket" aria-hidden="true"></i>
            </a>
          </li>
          <li class='header__menu-item'>
            <input id="menu-toggle" type="checkbox" />
            <label class='header__menu-toggler' for="menu-toggle">
              <div class='header-button'></div>
            </label>
          </li>
        </ul>
      </div>
    </div>

    <div class="header__bottom">
      <nav class="header__menu-horizontal">
      <?php
          wp_nav_menu( [
            'theme_location'  => 'katalog',
            'container'       => null, 
            'menu_class'      => 'header__list', 
            'list_item_class'  => 'header__menu-links',
            'link_class'   => 'header__catalog-link'
          ] );
        ?>
      </nav>
    </div>

    <div class="menu hide" id="menu">
      <button class='popup__close' id="menu-close"></button>
      <div class="menu__position">
        <span class="menu__title">Категории товаров</span>
        <nav>
        <?php
          wp_nav_menu( [
            'theme_location'  => 'katalog',
            'container'       => null, 
            'menu_class'      => 'menu__list', 
            'list_item_class'  => 'menu__links',
            'link_class'   => 'menu__link'
          ] );
        ?>
        </nav>
      </div>
      <div class="menu__position">
        <span class="menu__title">Навигация</span>
        <nav>
        <?php
          wp_nav_menu( [
            'theme_location'  => 'menu',
            'container'       => null, 
            'menu_class'      => 'menu__list', 
            'list_item_class'  => 'menu__links',
            'link_class'   => 'menu__link'
          ] );
        ?>
        </nav>
      </div>
    </div>
  </header>
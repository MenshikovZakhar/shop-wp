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
            <a href="#" target="_blank" rel="noreferrer">
              <img class='header__social-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/phone.svg" alt='logo' />
            </a>
          </li>
          <li class='header__social-item'>
            <a href="#">
              <img class='header__social-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/whatsapp.svg" alt='logo' />
            </a>
          </li>
          <li class='header__social-item'>
            <a href="#" target="_blank" rel="noreferrer">
              <img class='header__social-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/instagram.svg" alt='logo' />
            </a>
          </li>
          <li class='header__social-item'>
            <a href="#" target="_blank" rel="noreferrer">
              <img class='header__social-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/telegram.svg" alt='logo' />
            </a>
          </li>
          <li class='header__social-item'>
            <a href="#" target="_blank" rel="noreferrer">
              <img class='header__social-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/vk.svg" alt='logo' />
            </a>
          </li>
        </ul>
      </div>

      <div class="header__top_right">
        <nav class="header__menu-horizontal">
          <ul class="header__list">
            <li class="header__menu-links"><a href="#" class="header__menu-link">О нас</a></li>
            <li class="header__menu-links"><a href="#" class="header__menu-link">Оплата и доставка</a></li>
            <li class="header__menu-links"><a href="#" class="header__menu-link">Гарантия и возврат</a></li>
            <li class="header__menu-links"><a href="#" class="header__menu-link">Контакты</a>
            </li>
          </ul>
        </nav>
      </div>
    </div>

    <div class="header__center">
      <div class="header__center_left">
      <?php  the_custom_logo (); ?>
        <h1 class="header__center_title">Интернет-магазин товаров для ванной комнаты</h1>
      </div>

      <div class="header__center_center">
        <ul class="header__list">
          <li class="header__services-links">
            <img class='header__center_iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/icon_2.png" alt='logo' />
            <p class="header__center_text">Бесплатная доставка от 3000 руб.</p>
          </li>
          <li class="header__services-links">
            <img class='header__center_iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/icon_1.png" alt='logo' />
            <p class="header__center_text">Удобные способ оплаты </p>
          </li>
          <li class="header__services-links">
            <img class='header__center_iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/icon_3.png" alt='logo' />
            <p class="header__center_text">Гарантия на все товары </p>
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
        <ul class="header__list">
          <li class="header__menu-links"><a href="group.html" class="header__catalog-link">Раковины</a></li>
          <li class="header__menu-links"><a href="#" class="header__catalog-link">Смесители</a></li>
          <li class="header__menu-links"><a href="#" class="header__catalog-link">Унитазы</a></li>
          <li class="header__menu-links"><a href="#" class="header__catalog-link">Душевые кабины</a>
          <li class="header__menu-links"><a href="#" class="header__catalog-link">Ванны</a>
          </li>
        </ul>
      </nav>
    </div>

    <div class="menu hide" id="menu">
      <button class='popup__close' id="menu-close"></button>
      <div class="menu__position">
        <span class="menu__title">Категории товаров</span>
        <ul class="menu__list">
          <li class="menu__links"><a href="group.html" class="menu__link">Раковины</a></li>
          <li class="menu__links"><a href="#" class="menu__link">Смесители</a></li>
          <li class="menu__links"><a href="#" class="menu__link">Унитазы</a></li>
          <li class="menu__links"><a href="#" class="menu__link">Душевые кабины</a>
          <li class="menu__links"><a href="#" class="menu__link">Ванны</a>
          </li>
        </ul>
      </div>
      <div class="menu__position">
        <span class="menu__title">Навигация</span>
        <ul class="menu__list" id="menu">
          <li class="menu__links"><a href="index.html" class="menu__link">О нас</a></li>
          <li class="menu__links"><a href="#" class="menu__link">Оплата и доставка</a></li>
          <li class="menu__links"><a href="#" class="menu__link">Гарантия и возврат</a></li>
          <li class="menu__links"><a href="#" class="menu__link">Контакты</a></li>
        </ul>
      </div>
    </div>
  </header>
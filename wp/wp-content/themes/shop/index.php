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
        <a href="index.html" rel="noreferrer">
          <img class='header__logo' src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.png" alt='logo' />
        </a>
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

  <main class="content">
    <section class="slider">
      <div class="slide ">
      <img class="slide__img" src="<?php echo get_template_directory_uri(); ?>/assets/images/img-1.jpg" alt="">
    </div>
      <div class="slide ">
    <img class="slide__img" src="<?php echo get_template_directory_uri();?>/assets/images/img-2.jpg" alt="">
</div>
      <div class="slider__arrow">
        <div id="arrow-left" class="arrow">&#10094;</div>
        <div id="arrow-right" class="arrow">&#10095;</div>
      </div>

      <div class="slider__description">
        <h1 class="slider__title">Скидка 10% на следующую покупку</h1>
        <p class="slider__text">Строймастер любит своих покупателей и хочет, чтобы Вам было покупать комфортнее. Именно
          для этого мы запускаем акцию "до 10% скидка на следующую покупку. </p>
        <a class="slider__link" href="#" target="_blank" rel="noreferrer">
          <div class="slider__link_text">В каталог</div>
        </a>
      </div>
    </section>

    <section class="catalog">
      <div class="catalog__group">
        <h3 class="catalog__title">Группа товаров №1</h3>
        <ul class="catalog__list slick-example">
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/1.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №1</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>

            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>


          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/1.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №2</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/1.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №3</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/1.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №4</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/1.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №5</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/1.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №6</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
        </ul>
        <a class="slider__link" href="group.html" target="_blank" rel="noreferrer">
          <div class="slider__link_text">Смотреть все</div>
        </a>
      </div>

      <div class="catalog__group">
        <h3 class="catalog__title">Группа товаров №2</h3>
        <ul class="catalog__list slick-example">
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/2.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №1</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/2.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №2</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/2.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №3</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/2.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №4</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/2.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №7</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/2.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №6</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
        </ul>
        <a class="slider__link" href="group.html" target="_blank" rel="noreferrer">
          <div class="slider__link_text">Смотреть все</div>
        </a>
      </div>

      <div class="catalog__group">
        <h3 class="catalog__title">Группа товаров №3</h3>
        <ul class="catalog__list slick-example">
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/3.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №1</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/3.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №2</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/3.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №3</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/3.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №4</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/3.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №5</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/3.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №6</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
        </ul>
        <a class="slider__link" href="group.html" target="_blank" rel="noreferrer">
          <div class="slider__link_text">Смотреть все</div>
        </a>
      </div>
      <div class="catalog__group">
        <h3 class="catalog__title">Группа товаров №4</h3>
        <ul class="catalog__list slick-example">
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/4.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №1</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/4.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №2</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/4.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №3</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/4.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №4</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/4.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №5</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/4.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №6</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
        </ul>
        <a class="slider__link" href="group.html" target="_blank" rel="noreferrer">
          <div class="slider__link_text">Смотреть все</div>
        </a>
      </div>
      <div class="catalog__group">
        <h3 class="catalog__title">Группа товаров №5</h3>
        <ul class="catalog__list slick-example">
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/5.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №1</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/5.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №2</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/5.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №3</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/5.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №4</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/5.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №5</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo get_template_directory_uri(); ?>/assets/images/5.png" />
            <div class="catalog__characteristic">
              <p class="catalog__name">Товар №6</p>
              <p class="catalog__price">1000.00 руб.</p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>

          </li>
        </ul>
        <a class="slider__link" href="group.html" target="_blank" rel="noreferrer">
          <div class="slider__link_text">Смотреть все</div>
        </a>
      </div>
    </section>
  </main>

  <footer class="footer">
    <div class="footer__top">
      <div class="footer__top_right">
        <h3 class="footer__title">О магазине</h3>
        <nav class="footer__menu">
          <ul class="footer__list">
            <li class="footer__menu-links"><a href="#" class="footer__menu-link">О нас</a></li>
            <li class="footer__menu-links"><a href="#" class="footer__menu-link">Оплата и доставка</a></li>
            <li class="footer__menu-links"><a href="#" class="footer__menu-link">Гарантия и возврат</a></li>
            <li class="footer__menu-links"><a href="#" class="footer__menu-link">Контакты</a>
            </li>
          </ul>
        </nav>
      </div>

      <div class="footer__top_center">
        <h3 class="footer__title">Каталог</h3>
        <nav class="footer__menu">
          <ul class="footer__list">
            <li class="footer__menu-links"><a href="#" class="footer__menu-link">Раковины</a></li>
            <li class="footer__menu-links"><a href="#" class="footer__menu-link">Смесители</a></li>
            <li class="footer__menu-links"><a href="#" class="footer__menu-link">Унитазы</a></li>
            <li class="footer__menu-links"><a href="#" class="footer__menu-link">Душевые кабины</a>
            <li class="footer__menu-links"><a href="#" class="footer__menu-link">Ванны</a>
            </li>
          </ul>
        </nav>
      </div>

      <div class="footer__top_right">
        <h3 class="footer__title">Контакты</h3>
        <nav class="footer__menu">
          <ul class="footer__list">
            <li class="footer__menu-links">
              <p class='footer__subtitle'>
                <img class='footer__contacts-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/location.png" alt='logo' />Челябинск, Образцова 13
              </p>
            </li>
            <li class="footer__menu-links">
              <p class='footer__subtitle'>
                <img class='footer__contacts-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/location-2.png" alt='logo' />+7(951)484-00-77
              </p>
            </li>
            <li class="footer__menu-links">
              <p class='footer__subtitle'>
                <img class='footer__contacts-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/email.png" alt='logo' />colorist@yandex.ru
              </p>
            </li>
          </ul>
        </nav>
      </div>
    </div>
    <div class="footer__bottom">
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
  </footer>


  <?php wp_footer(); ?>


</body>

</html>
<footer class="footer">



<div class="popup popup-order">
  <div class="popup__wrapper">
    <div class="popup__inner">
      <div class="popup__content">
        <button class="btn-close popup__btn-close popup-close"></button>
        <h2 class="page-title">Корзина</h2>
        <div class="cart js-cart-wrapper">
          <form class="form cart__form form-send">
            <div class="cart__items js-cart">
            </div>
            <div class="cart__totals">
              <div>Итого: <span class="cart__bold"><span class="js-cart-total-price"></span> ₽</span></div>
            </div>
            <div class="order">
            <h3 class="order__title">Заполните форму</h3>
              <div class="form__main">
                <input class="form__input" type="text" name="Имя" placeholder="Имя" required="">
                <input class="form__input" type="text" name="Телефон" placeholder="Телефон" required="">
                <input class="form__input" type="text" name="Адрес" placeholder="Адрес" required="">
                <input class="js-cart-total-price-input" type="hidden" name="Общая сумма">
                <select class="form__input" name="оплата">
                  <option value="Оплата наличными">Оплата наличными</option>
                  <option value="Оплата картой">Оплата картой</option>
                </select>
                <button class="btn form__btn" type="submit">Отправить</button>
              </div>
            </div>
          </form>
          <div class="cart__empty">
            <p class="cart__info">Нет товаров</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- popup-thanks -->
<div class="popup popup-thanks">
  <div class="popup__wrapper">
    <div class="popup__inner">
      <div class="popup__content">
        <button class="btn-close popup__btn-close popup-close"></button>
        <h2 class="page-title popup__title">Успешно отправлено</h2>
        <p class="popup__subtitle">Мы уже начали готовить ваш заказ</p>
      </div>
    </div>
  </div>
</div>
<!-- /.popup-thanks -->

<!-- popup-error -->
<div class="popup popup-error">
  <div class="popup__wrapper">
    <div class="popup__inner">
      <div class="popup__content">
        <button class="btn-close popup__btn-close popup-close"></button>
        <h2 class="page-title popup__title">Произошла ошибка</h2>
        <p class="popup__subtitle">Пожалуйста, сделайте заказ по номеру <a class="popup__link" href="<?php echo $GLOBALS['pizza_time']['phone_digits']; ?>"><?php echo $GLOBALS['pizza_time']['phone']; ?></a></p>
      </div>
    </div>
  </div>
</div>
<!-- /.popup-error -->

<button class="cart-btn" data-popup="popup-order">
  <span class="cart-btn__counter js-cart-total-count-items">0</span>
  <svg class="cart-btn__icon" viewBox="0 -31 512.00026 512" xmlns="http://www.w3.org/2000/svg">
    <path d="m164.960938 300.003906h.023437c.019531 0 .039063-.003906.058594-.003906h271.957031c6.695312 0 12.582031-4.441406 14.421875-10.878906l60-210c1.292969-4.527344.386719-9.394532-2.445313-13.152344-2.835937-3.757812-7.269531-5.96875-11.976562-5.96875h-366.632812l-10.722657-48.253906c-1.527343-6.863282-7.613281-11.746094-14.644531-11.746094h-90c-8.285156 0-15 6.714844-15 15s6.714844 15 15 15h77.96875c1.898438 8.550781 51.3125 230.917969 54.15625 243.710938-15.941406 6.929687-27.125 22.824218-27.125 41.289062 0 24.8125 20.1875 45 45 45h272c8.285156 0 15-6.714844 15-15s-6.714844-15-15-15h-272c-8.269531 0-15-6.730469-15-15 0-8.257812 6.707031-14.976562 14.960938-14.996094zm312.152343-210.003906-51.429687 180h-248.652344l-40-180zm0 0" />
    <path d="m150 405c0 24.8125 20.1875 45 45 45s45-20.1875 45-45-20.1875-45-45-45-45 20.1875-45 45zm45-15c8.269531 0 15 6.730469 15 15s-6.730469 15-15 15-15-6.730469-15-15 6.730469-15 15-15zm0 0" />
    <path d="m362 405c0 24.8125 20.1875 45 45 45s45-20.1875 45-45-20.1875-45-45-45-45 20.1875-45 45zm45-15c8.269531 0 15 6.730469 15 15s-6.730469 15-15 15-15-6.730469-15-15 6.730469-15 15-15zm0 0" />
  </svg>
</button>


    <div class="footer__top">
      <div class="footer__top_right">
        <h3 class="footer__title">О магазине</h3>
        <nav class="footer__menu">
        <?php
          wp_nav_menu( [
            'theme_location'  => 'menu',
            'container'       => null, 
            'menu_class'      => 'footer__list', 
            'list_item_class'  => 'footer__menu-links',
            'link_class'   => 'footer__menu-link'
          ] );
        ?>
        </nav>
      </div>

      <div class="footer__top_center">
        <h3 class="footer__title">Каталог</h3>
        <nav class="footer__menu">
        <?php
          wp_nav_menu( [
            'theme_location'  => 'katalog',
            'container'       => null, 
            'menu_class'      => 'footer__list', 
            'list_item_class'  => 'footer__menu-links',
            'link_class'   => 'footer__menu-link'
          ] );
        ?>
        </nav>
      </div>

      <div class="footer__top_right">
        <h3 class="footer__title">Контакты</h3>
        <nav class="footer__menu">
          <ul class="footer__list">
            <li class="footer__menu-links">
              <p class='footer__subtitle'>
                <img class='footer__contacts-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/location.png" alt='logo' />
                <?php echo $GLOBALS['shop']['address']; ?>
              </p>
            </li>
            <li class="footer__menu-links">
              <p class='footer__subtitle'>
                <img class='footer__contacts-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/location-2.png" alt='logo' />
                <?php echo $GLOBALS['shop']['phone']; ?>
              </p>
            </li>
            <li class="footer__menu-links">
              <p class='footer__subtitle'>
                <img class='footer__contacts-iqon' src="<?php echo get_template_directory_uri(); ?>/assets/images/email.png" alt='logo' />
                <?php echo $GLOBALS['shop']['email']; ?>
              </p>
            </li>
          </ul>
        </nav>
      </div>
    </div>
    <div class="footer__bottom">
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
  </footer>
  <?php wp_footer(); ?>
</body>
</html>
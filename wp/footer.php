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
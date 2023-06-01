<?php get_header();?>
  
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

  <?php get_footer();?>
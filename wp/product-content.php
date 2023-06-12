<?php
  $product_id = get_the_ID();
  $product_price = carbon_get_post_meta($product_id, 'product_price');
  $product_img_src = get_the_post_thumbnail_url($product_id, 'full');

?>

          <li class="catalog__product">
            <img class="catalog__image" src="<?php echo $product_img_src; ?>"/>
            <div class="catalog__characteristic">
              <p class="catalog__name"><?php the_title(); ?></p>
              <p class="catalog__price"><?php echo $product_price; ?></p>
            </div>
            <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
              <div class="catalog__button">Подробнее</div>
            </a>
          </li>


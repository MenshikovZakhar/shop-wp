<?php
  $product_id = get_the_ID();
  $product_price = carbon_get_post_meta($product_id, 'product_price');
  $product_img_src = get_the_post_thumbnail_url($product_id, 'full');

?>

<a  class="catalog__link" href="<?php the_permalink(); ?>">
<li class="group__product">
                        <img class="group__image" src="<?php echo $product_img_src; ?>" />
                        <div class="group__characteristic">
                            <p class="group__name"><?php the_title(); ?></p>
                            <p class="group__price"><?php echo $product_price; ?></p>
                        </div>
                            <div class="group__button">Подробнее</div>
</li>
</a>
         



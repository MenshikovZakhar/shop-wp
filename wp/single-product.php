
<?php get_header();?>

<?php
  $product_id = get_the_ID();
  $product_img_src = get_the_post_thumbnail_url($product_id, 'product');
  $product_img_src_webp = convertToWebpSrc($product_img_src);
  $product_img_src = get_the_post_thumbnail_url($product_id, 'full');
  $thumbnail_id_1 = carbon_get_post_meta($product_id, 'photo_1');
  $thumbnail_id_2 = carbon_get_post_meta($product_id, 'photo_2');
  $thumbnail_id_3 = carbon_get_post_meta($product_id, 'photo_3');
  $thumbnail_url_1 = wp_get_attachment_image_url( $thumbnail_id_1, 'full' );
  $thumbnail_url_2 = wp_get_attachment_image_url( $thumbnail_id_2, 'full' );
  $thumbnail_url_3 = wp_get_attachment_image_url( $thumbnail_id_3, 'full' );

  $product_categories = get_the_terms($product_id, 'product-categories');
  $product_categories_str = '';
  foreach ($product_categories as $category) {
    $product_categories_str .= "$category->slug,";
  }
  $product_categories_str = substr($product_categories_str, 0, -1);

?>

    <main class="content">
        <section class="product">
        <?php if ( have_posts() ) : ?>
            <div class="product__description js-product">
                <div class="product__images">
                    <div class="product__images_min">
                    <img class="product__image_min" src="<?php echo $thumbnail_url_1; ?>"/>
                    <img class="product__image_min" src="<?php echo $thumbnail_url_2; ?>"/>
                    <img class="product__image_min" src="<?php echo $thumbnail_url_3; ?>"/>
                    </div>
                    <div class="product__images_max">
                    <img class="product__image_max" src="<?php echo $product_img_src; ?>"/>
                    </div>
                </div>
                <div class="product__panel">
                    <h1 class="product__title"><?php the_title(); ?></h1>
                    <div class="product__top">
                        <div class="product__availability"><?php echo carbon_get_post_meta($product_id, 'product_availability'); ?></div>
                        <div class="product__like">

                        <img class="product__image-like" src="<?php echo get_template_directory_uri(); ?>/assets/images/like.svg" alt='logo' />
                            <span>В избранное</span>
                        </div>
                    </div>
                    <div class="product__top-about">
                    <?php echo carbon_get_the_post_meta('short_description'); ?>
                    </div>
                    <div class="product__buy">
                        <span class="product__price js-product-price-value"><?php echo carbon_get_post_meta($product_id, 'product_price'); ?> руб.</span>
                        <button class="product__basket js-btn-add-to-cart">
                            <i class='fas fa fa-shopping-cart'></i>
                            <div class="shopping-basket"> В корзину</div>
                        </button>
                    </div>
                    <div class="product__features">
                        <span class="product__features-title">Свойства</span>

                        <?php echo carbon_get_the_post_meta('features'); ?>

                    </div>
                </div>
            </div>

            <div class="product__about">
                <h2 class="product__title"><?php the_title(); ?></h2>
                <p class="product__text"> <?php echo carbon_get_the_post_meta('full_description');?></p>
            </div>
        </section>
    </main>
    <?php endif; ?>
    <?php get_footer();?>
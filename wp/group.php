
<?php
/*
Template Name: Group
*/
?>
<?php $page_id = get_the_ID(); ?>
<?php get_header();?>

    <main class="content">
        <section class="group">
            <div class="group__group">
                <h3 class="group__title">Группа товаров №1</h3>
                

                <?php
      $catalog_products = carbon_get_post_meta( $page_id, 'catalog_products' );
      $catalog_products_ids = wp_list_pluck($catalog_products, 'id');

      $catalog_products_args = [
        'post_type' => 'product',
        'post__in' => $catalog_products_ids,

        'tax_query' => [
          [
            'taxonomy' => 'product-categories',
            'field'    => 'term_id',
            'terms'    => [ 5, 6, ],
          ]
        ],
  
      ];
      $catalog_products_query = new WP_Query( $catalog_products_args );
    ?>


  <?php if ( $catalog_products_query->have_posts() ) : ?>
    
    <ul class="catalog__list slick-example" >
  
    <?php query_posts('cat=6');
    while ( $catalog_products_query->have_posts() ) : $catalog_products_query->the_post(); ?>
        
    <?php echo get_template_part('product-content'); ?>

    <?php endwhile; ?>

    <?php endif; ?>
  </ul>
      </div>

              
                <nav class="navigation pagination" role="navigation">
                    <div class="nav-links"><span aria-current="page" class="page-numbers current">1</span>
                        <a class="page-numbers" href="">2</a>
                        <a class="next page-numbers" href="">Далее</a>
                    </div>
                </nav>
            </div>
        </section>
    </main>
   
    <?php get_footer();?>

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
    <h3 class="group__title"><?php the_title();	?></h3>
    <?php


$catalog_products = carbon_get_post_meta( $page_id, 'catalog_products' );
$catalog_products_ids = wp_list_pluck($catalog_products, 'id');
    $paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
    $query = new WP_Query( array(
      'posts_per_page' => 8,
      'paged' => $paged,
      'post_type' => 'product',
      'post__in' => $catalog_products_ids,

        'tax_query' => [
          [
            'taxonomy' => 'product-categories',
            'field'    => 'term_id',
            'terms'    => [ 5, 6 ],
          ]
        ],
    ) );
?>

<?php if ( $query->have_posts() ) : ?>
  <ul class="group__list" >
<?php while ( $query->have_posts() ) : $query->the_post(); ?>

<?php echo get_template_part('group-content'); ?>

<?php endwhile; ?>
</ul>
<div class="pagination">
    <?php
        echo paginate_links( array(
            'base'         => str_replace( 999999999, '%#%', esc_url( get_pagenum_link( 999999999 ) ) ),
            'total'        => $query->max_num_pages,
            'current'      => max( 1, get_query_var( 'paged' ) ),
            'format'       => '?paged=%#%',
            'show_all'     => false,
            'type'         => 'plain',
            'end_size'     => 2,
            'mid_size'     => 1,
            'prev_next'    => true,
            'prev_text'    => sprintf( '<i></i> %1$s', __( 'Назад', 'text-domain' ) ),
            'next_text'    => sprintf( '%1$s <i></i>', __( 'Дальше', 'text-domain' ) ),
            'add_args'     => false,
            'add_fragment' => '',
        ) );
    ?>
</div>

<?php wp_reset_postdata(); ?>
<?php else : ?>
    <p><?php _e( 'К сожалению, ни один из постов не подошел под ваши критерии.' ); ?></p>
<?php endif; ?>

 
  
  </div>
  </section>
</main>
   
    <?php get_footer();?>
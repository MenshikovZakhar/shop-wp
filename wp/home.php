<?php
/*
Template Name: Home
*/
?>
<?php $page_id = get_the_ID(); ?>
<?php get_header();?>

<main class="content">
	
<section class="slider">
<?php
global $post;

$myposts = get_posts([ 
	'posts_per_page' => -1,
  'category' => 2,
]);

if( $myposts ){
	foreach( $myposts as $post ){
		setup_postdata( $post );
		?>
          
          <div class="slide ">
            <?php the_post_thumbnail(
                array (1920, 600),
                array (
                    'class' => "slide__img",
                )
              ); ?>
<div class="slider__description">
        <h1 class="slider__title"><?php the_title();	?></h1>
        <?php the_content();	?>      
         <a class="slider__link" href="#" target="_blank" rel="noreferrer">
          <div class="slider__link_text">В каталог</div>
        </a>
        </div>
          </div>
          <?php }} wp_reset_postdata();?>     
     
            <div class="slider__arrow">
        <div id="arrow-left" class="arrow">&#10094;</div>
        <div id="arrow-right" class="arrow">&#10095;</div>
        </div>
            </section>
    
    <section class="catalog">
      <div class="catalog__group">
        <h3 class="catalog__title">Раковины</h3>

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
            'terms'    => [ 5 ],
          ]
        ],
  
      ];
      $catalog_products_query = new WP_Query( $catalog_products_args );
    ?>


  <?php if ( $catalog_products_query->have_posts() ) : ?>
    
    <ul class="catalog__list slick-example" >
  
    <?php
    while ( $catalog_products_query->have_posts() ) : $catalog_products_query->the_post(); ?>
        
    <?php echo get_template_part('product-content'); ?>

    <?php endwhile; ?>

    <?php endif; ?>
  </ul>
        <a class="slider__link" href="<?php echo get_permalink(31); ?>" target="_blank" rel="noreferrer">
          <div class="slider__link_text">Смотреть все</div>
        </a>
      </div>


      <div class="catalog__group">
        <h3 class="catalog__title">Смесители</h3>

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
            'terms'    => [ 6 ],
          ]
        ],
      ];
      $catalog_products_query = new WP_Query( $catalog_products_args );
    ?>


  <?php if ( $catalog_products_query->have_posts() ) : ?>
    <ul class="catalog__list slick-example">

    <?php while ( $catalog_products_query->have_posts() ) : $catalog_products_query->the_post(); ?>
        
    <?php echo get_template_part('product-content'); ?>

    <?php endwhile; ?>

    <?php endif; ?>
  </ul>
        <a class="slider__link" href="<?php echo get_permalink(33); ?>" target="_blank" rel="noreferrer" target="_blank" rel="noreferrer">
          <div class="slider__link_text">Смотреть все</div>
        </a>
      </div>


      <div class="catalog__group">
        <h3 class="catalog__title">Унитазы</h3>

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
            'terms'    => [ 7 ],
          ]
        ],
      ];
      $catalog_products_query = new WP_Query( $catalog_products_args );
    ?>
  <?php if ( $catalog_products_query->have_posts() ) : ?>
    <ul class="catalog__list slick-example">

    <?php while ( $catalog_products_query->have_posts() ) : $catalog_products_query->the_post(); ?>
        
    <?php echo get_template_part('product-content'); ?>

    <?php endwhile; ?>

    <?php endif; ?>
  </ul>
        <a class="slider__link" href="<?php echo get_permalink(35); ?>" target="_blank" rel="noreferrer" target="_blank" rel="noreferrer">
          <div class="slider__link_text">Смотреть все</div>
        </a>
      </div>


      <div class="catalog__group">
        <h3 class="catalog__title">Душевые кабины</h3>

        <?php
      $catalog_products = carbon_get_post_meta( $page_id, 'catalog_products' );
      $catalog_products_ids = wp_list_pluck($catalog_products, 'id');

      $catalog_products_args = [
        'post_type' => 'product',
       

        'tax_query' => [
          [
            'taxonomy' => 'product-categories',
            'field'    => 'term_id',
            'terms'    => [ 8 ],
          ]
        ],
      ];
      $catalog_products_query = new WP_Query( $catalog_products_args );
    ?>
  <?php if ( $catalog_products_query->have_posts() ) : ?>
    <ul class="catalog__list slick-example">

    <?php while ( $catalog_products_query->have_posts() ) : $catalog_products_query->the_post(); ?>
        
    <?php echo get_template_part('product-content'); ?>

    <?php endwhile; ?>

    <?php endif; ?>
  </ul>
        <a class="slider__link" href="<?php echo get_permalink(37); ?>" target="_blank" rel="noreferrer" target="_blank" rel="noreferrer">
          <div class="slider__link_text">Смотреть все</div>
        </a>
      </div>


      <div class="catalog__group">
        <h3 class="catalog__title">Ванны</h3>

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
            'terms'    => [ 9 ],
          ]
        ],
      ];
      $catalog_products_query = new WP_Query( $catalog_products_args );
    ?>
  <?php if ( $catalog_products_query->have_posts() ) : ?>
    <ul class="catalog__list slick-example">

    <?php while ( $catalog_products_query->have_posts() ) : $catalog_products_query->the_post(); ?>
        
    <?php echo get_template_part('product-content'); ?>

    <?php endwhile; ?>

    <?php endif; ?>
  </ul>
        <a class="slider__link" href="<?php echo get_permalink(39); ?>" target="_blank" rel="noreferrer" target="_blank" rel="noreferrer">
          <div class="slider__link_text">Смотреть все</div>
        </a>
</div>

    </section>
  </main>

<?php get_footer();?>
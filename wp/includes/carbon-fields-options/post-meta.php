<?php

if (!defined('ABSPATH')) {
  exit;
}

use Carbon_Fields\Container;
use Carbon_Fields\Field;

Container::make( 'post_meta', 'Дополнительные поля' )
->show_on_page(9)
->add_tab( 'Каталог', [
  Field::make( 'association', 'catalog_products', 'Товары' )
  ->set_types( [
      [
          'type'      => 'post',
          'post_type' => 'product',
      ]
   ] )
      ]);

  Container::make( 'post_meta', 'Дополнительные поля' )
  ->show_on_post_type('product')
  ->add_tab( 'Цена товара', [
      Field::make( 'text', 'product_price', 'Цена' ),
  ]);

  

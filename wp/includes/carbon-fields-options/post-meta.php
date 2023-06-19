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
->show_on_page(31)
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
->show_on_page(33)
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
->show_on_page(35)
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
    Field::make( 'text', 'product_availability', 'Наличие товара' ),
      Field::make( 'text', 'product_price', 'Цена' ),
      Field::make("textarea", 'short_description', "Краткое описание")
      ->set_rows(5) 
      ->help_text(''),
      Field::make("rich_text", "features", "Свойства")
			 ->help_text(''),
      Field::make("textarea", 'full_description', "Полное описание описание")
      ->set_rows(8) 
      ->help_text(''),
      Field::make("image", "photo_1", "Фото_1"),
      Field::make("image", "photo_2", "Фото_2"),
      Field::make("image", "photo_3", "Фото_3"),
  ]);

  

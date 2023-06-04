<?php

if (!defined('ABSPATH')) {
  exit;
}

use Carbon_Fields\Container;
use Carbon_Fields\Field;

Container::make( 'theme_options', 'Настройки сайта' )
  

  ->add_tab( 'Контакты', [
    Field::make( 'text', 'site_phone', 'Телефон' ),
    Field::make( 'text', 'site_address', 'Адрес' ),
    Field::make( 'text', 'site_email', 'Эл.почта' ),
    Field::make( 'text', 'site_fb_url', 'Facebook' ),
    Field::make( 'text', 'site_inst_url', 'Instagram' ),
  ]);
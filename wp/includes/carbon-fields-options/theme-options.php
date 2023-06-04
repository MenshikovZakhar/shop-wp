<?php

if (!defined('ABSPATH')) {
  exit;
}

use Carbon_Fields\Container;
use Carbon_Fields\Field;

Container::make( 'theme_options', 'Настройки сайта' )
  

  ->add_tab( 'Контакты', [
    Field::make( 'text', 'site_phone', 'Телефон' ),
    Field::make( 'text', 'site_phone_digits', 'Телефон без пробелов в формате +79999999999' ),
    Field::make( 'text', 'site_address', 'Адрес' ),
    Field::make( 'text', 'site_email', 'Эл.почта' ),
    Field::make( 'text', 'site_whatsapp_url', 'Whatsapp' ),
    Field::make( 'text', 'site_instagram_url', 'Instagram' ),
    Field::make( 'text', 'site_telegram_url', 'Telegram' ),
    Field::make( 'text', 'site_vk_url', 'VK' ),
  ]);
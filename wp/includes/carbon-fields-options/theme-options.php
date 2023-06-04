<?php

if (!defined('ABSPATH')) {
  exit;
}

use Carbon_Fields\Container;
use Carbon_Fields\Field;

Container::make( 'theme_options', 'Настройки сайта' )
->add_tab( 'Общие настройки', [
  Field::make( 'text', 'site_name', 'Название' ),
])

  ->add_tab( 'Контакты', [
    Field::make( 'text', 'site_phone', 'Телефон' ),
    Field::make( 'text', 'site_phone_digits', 'Телефон без пробелов в формате +79999999999' ),
    Field::make( 'text', 'site_address', 'Адрес' ),
    Field::make( 'text', 'site_email', 'Эл.почта' ),
    Field::make( 'text', 'site_whatsapp_url', 'Whatsapp' ),
    Field::make( 'text', 'site_instagram_url', 'Instagram' ),
    Field::make( 'text', 'site_telegram_url', 'Telegram' ),
    Field::make( 'text', 'site_vk_url', 'VK' ),
  ])

  ->add_tab( 'Наши приемущества (шапка)', [
    Field::make( 'text', 'benefit_description_1', 'Приемущество №1' ),
    Field::make( 'image', 'benefit_image_1', 'Приемущество №1' ),
    Field::make( 'text', 'benefit_description_2', 'Приемущество №2' ),
    Field::make( 'image', 'benefit_image_2', 'Приемущество №2' ),
    Field::make( 'text', 'benefit_description_3', 'Приемущество №3' ),
    Field::make( 'image', 'benefit_image_3', 'Приемущество №3' ),   
  ]);
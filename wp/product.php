<?php
/*
Template Name: Product
*/
?>


<?php
  $product_id = get_the_ID();

  $product_price = carbon_get_post_meta($product_id, 'product_price');
  $product_attributes = carbon_get_post_meta($product_id, 'product_attributes');
  $product_img_src = get_the_post_thumbnail_url($product_id, 'product');
  $product_img_src_webp = convertToWebpSrc($product_img_src);

  
?>

<?php get_header();?>

    <main class="content">
        <section class="product">
            <div class="product__description">
                <div class="product__images">
                    <div class="product__images_min">
                        <img class="product__image_min" src="./images/1.png" />
                        <img class="product__image_min" src="./images/1.png" />
                    </div>
                    <div class="product__images_max">
                        <img class="product__image_max" src="./images/1.png" />
                    </div>
                </div>
                <div class="product__panel">
                    <h1 class="product__title">Товар №1</h1>
                    <div class="product__top">
                        <div class="product__availability">В наличии</div>
                        <div class="product__like">
                            <img class="product__image-like" src="./images/like.svg" />
                            <span>В избранное</span>
                        </div>
                    </div>
                    <div class="product__top-about">
                        Ванна акриловая Acryelia 1Марка с просторной формой чаши позволяет принимать как ванну, так
                        и душ.
                        Ванна изготовлена из АБС-пластика. Акриловые ванны всегда теплые, они долго сохраняют
                        температуру
                        воды. Акриловые ванны не шумят при наборе воды.
                    </div>
                    <div class="product__buy">
                        <span class="product__price">1000 рублей</span>

                        <button class="product__basket">
                            <i class='fas fa fa-shopping-cart'></i>
                            <div class="shopping-basket"> В корзину</div>
                        </button>
                    </div>
                    <div class="product__features">
                        <span class="product__features-title">Свойства</span>
                        <ul class="product__list">
                            <li class="product__features-links">
                                <span class="product__features-text">Производитель</span>
                                <span class="product__features-text">Santek</span>
                            </li>
                            <li class="product__features-links">
                                <span class="product__features-text">Единица измерения</span>
                                <span class="product__features-text">шт.</span>
                            </li>
                            <li class="product__features-links">
                                <span class="product__features-text">Ширина</span>
                                <span class="product__features-text">75</span>
                            </li>
                            <li class="product__features-links">
                                <span class="product__features-text">Длина</span>
                                <span class="product__features-text">75</span>
                            </li>
                            <li class="product__features-links">
                                <span class="product__features-text">Глубина</span>
                                <span class="product__features-text">25</span>
                            </li>
                            <li class="product__features-links">
                                <span class="product__features-text">Материал</span>
                                <span class="product__features-text">Акрил</span>
                            </li>
                            <li class="product__features-links">
                                <span class="product__features-text">Страна производитель</span>
                                <span class="product__features-text">Россия</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="product__about">
                <h2 class="product__title">Товар №1</h2>
                <p class="product__text">Ванна акриловая Acryelia 1Марка с просторной формой чаши позволяет принимать
                    как ванну,
                    так и душ. Ванна изготовлена из АБС-пластика. Акриловые ванны всегда теплые, они долго сохраняют
                    температуру
                    воды. Акриловые ванны не шумят при наборе воды. Поверхность хоть и гладкая, но не скользкая. Не
                    слишком
                    глубокие повреждения ванны поддаются реставрации. Царапины можно зашлифовать и обработать
                    специальным
                    составом. Однако с акриловой ванной все же нужно обращаться бережно. Слой акрила со временем может
                    истончаться, а от падения острого предмета могут появиться серьезные повреждения, устранить которые
                    будет
                    сложно или даже невозможно.</p>
            </div>
        </section>
    </main>
    <?php get_footer();?>
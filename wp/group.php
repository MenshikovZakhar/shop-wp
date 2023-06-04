
<?php
/*
Template Name: Group
*/
?>

<?php get_header();?>

    <main class="content">
        <section class="group">
            <div class="group__group">
                <h3 class="group__title">Группа товаров №1</h3>
                <ul class="group__list">
                    <li class="group__product">
                        <img class="group__image" src="./images/1.png" />
                        <div class="group__characteristic">
                            <p class="group__name">Товар №1</p>
                            <p class="group__price">1000.00 руб.</p>
                        </div>

                        <a class="group__link" href="product.html" target="_blank" rel="noreferrer">
                            <div class="group__button">Подробнее</div>
                        </a>
                    </li>
                    <li class="group__product">
                        <img class="group__image" src="./images/1.png" />
                        <div class="group__characteristic">
                            <p class="group__name">Товар №2</p>
                            <p class="group__price">1000.00 руб.</p>
                        </div>
                        <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
                            <div class="group__button">Подробнее</div>
                        </a>

                    </li>
                    <li class="group__product">
                        <img class="group__image" src="./images/1.png" />
                        <div class="group__characteristic">
                            <p class="group__name">Товар №3</p>
                            <p class="group__price">1000.00 руб.</p>
                        </div>
                        <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
                            <div class="group__button">Подробнее</div>
                        </a>

                    </li>
                    <li class="group__product">
                        <img class="group__image" src="./images/1.png" />
                        <div class="group__characteristic">
                            <p class="group__name">Товар №4</p>
                            <p class="group__price">1000.00 руб.</p>
                        </div>
                        <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
                            <div class="group__button">Подробнее</div>
                        </a>

                    </li>
                    <li class="group__product">
                        <img class="group__image" src="./images/1.png" />
                        <div class="group__characteristic">
                            <p class="group__name">Товар №5</p>
                            <p class="group__price">1000.00 руб.</p>
                        </div>
                        <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
                            <div class="group__button">Подробнее</div>
                        </a>

                    </li>
                    <li class="group__product">
                        <img class="group__image" src="./images/1.png" />
                        <div class="group__characteristic">
                            <p class="group__name">Товар №6</p>
                            <p class="group__price">1000.00 руб.</p>
                        </div>
                        <a class="slider__link" href="product.html" target="_blank" rel="noreferrer">
                            <div class="group__button">Подробнее</div>
                        </a>

                    </li>
                </ul>
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
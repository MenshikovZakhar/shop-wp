
let sliderImages = document.querySelectorAll(".slide"),
    arrowLeft = document.querySelector("#arrow-left"),
    arrowRight = document.querySelector("#arrow-right"),
    current = 0;

function reset() {
    for (let i = 0; i < sliderImages.length; i++) {
        sliderImages[i].style.display = "none";
    }
}

function startSlide() {
    reset();
    sliderImages[0].style.display = "block";
}

function slideLeft() {
    reset();
    sliderImages[current - 1].style.display = "block";
    current--;
}

function slideRight() {
    reset();
    sliderImages[current + 1].style.display = "block";
    current++;
}

arrowLeft.addEventListener("click", function () {
    if (current === 0) {
        current = sliderImages.length;
    }
    slideLeft();
});

arrowRight.addEventListener("click", function () {
    if (current === sliderImages.length - 1) {
        current = -1;
    }
    slideRight();
});
startSlide();

$(function () {


    $('.slick-example').slick({
        infinite: true,
        dots: false,
        slidesToShow: 5,
        slidesToScroll: 1,
        responsive: [

            {
                breakpoint: 1380,
                settings: {
                    slidesToShow: 4,
                }
            },

            {
                breakpoint: 1100,
                settings: {
                    slidesToShow: 3,
                }
            },
            {
                breakpoint: 830,
                settings: {
                    slidesToShow: 2,
                }
            },

            {
                breakpoint: 740,
                settings: {
                    slidesToShow: 2,
                }
            },
            {
                breakpoint: 570,
                settings: {
                    slidesToShow: 1,
                }
            }
        ]
    })
})
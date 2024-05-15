const exampleSliderInfo = [
    {
        title: 'Партнер ОКНА ПЕТЕРБУРГА', city: "Санкт-Петербург",
    },
    {
        title: 'Партнер ОКНА АТТИК', city: "Москва",
    },
    {
        title: 'Партнер ОКНА ВЕКА', city: "Санкт-Петербург",
    },
    {
        title: 'Партнер Окна АТТИК', city: "Москва",
    },
    {
        title: 'Партнер ОКНА ВЕКА', city: "Санкт-Петербург",
    },
    {
        title: 'Партнер ОКНА ВЕКА', city: "Санкт-Петербург",
    },
    {
        title: 'Партнер Окна АТТИК', city: "Москва",
    },
    {
        title: 'Партнер ОКНА ВЕКА', city: "Санкт-Петербург",
    },
    {
        title: 'Партнер САТЕЛС', city: "Москва",
    },
    {
        title: 'Партнер САТЕЛС', city: "Москва",
    },
]

const examplesSliderThumbnails = new Swiper('.examples_slider_thumbnails', {
    freeMode: true,
    loop: false,
    slidesPerView: 7,
    spaceBetween: 64,
    watchSlidesProgress: true,
})

window.addEventListener('resize', function () {
    let width = window.innerWidth;
    if (width > 650 && width <= 800) {
        examplesSliderThumbnails.params.slidesPerView = 3;
        examplesSliderThumbnails.params.spaceBetween = 18;
    } else if (width > 800 && width <= 1000) {
        examplesSliderThumbnails.params.slidesPerView = 4;
        examplesSliderThumbnails.params.spaceBetween = 18;
    } else if (width > 1000 && width <= 1300) {
        examplesSliderThumbnails.params.slidesPerView = 6;
        examplesSliderThumbnails.params.spaceBetween = 24;
    } else {
        examplesSliderThumbnails.params.slidesPerView = 7;
        examplesSliderThumbnails.params.spaceBetween = 32;
    }
})

const resizeEvent = new Event('resize')

window.dispatchEvent(resizeEvent);

const examplesSlider = new Swiper('.examples_slider', {
    loop: true,

    pagination: {
        el: ".examples-pagination-fraction",
        type: "fraction"
    },

    navigation: {
        nextEl: '.examples-button-next',
        prevEl: '.examples-button-prev',
    },

    on: {
        slideChange: function() {
            let slideIndex = this.realIndex;
            document.getElementById('examples_info_title').innerText = exampleSliderInfo[slideIndex].title
            document.getElementById('examples_info_city').innerText = exampleSliderInfo[slideIndex].city
        }
    },

    thumbs: {
        swiper: examplesSliderThumbnails
    }
});
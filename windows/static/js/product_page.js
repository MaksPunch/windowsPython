const productAdvantagesSlider = new Swiper('.product_advantages_slider', {
    loop: true,
    autoHeight: true,

    pagination: {
        el: ".product-advantages-pagination-fraction",
        type: "fraction"
    },

    navigation: {
        prevEl: ".product-advantages-button-prev",
        nextEl: ".product-advantages-button-next"
    }
})

const otherProductsSlider = new Swiper('.other_products_slider', {
    loop: true,
    autoHeight: true,

    slidesPerView: "auto",
    spaceBetween: 16,
    autoplay: true,

    navigation: {
        prevEl: ".other-products-button-prev",
        nextEl: ".other-products-button-next"
    },

    pagination: {
        type: "fraction",
        el: ".other-products-pagination-fraction"
    }
})

const productPhotosSlider = new Swiper('.product_photos_slider', {
    loop: true,
    effect: "fade",

    pagination: {
        el: ".product_photos_slider_controls_one .product-photos-pagination-fraction",
        type: "fraction"
    },

    navigation: {
        prevEl: ".product_photos_slider_controls_one .product-photos-button-prev",
        nextEl: ".product_photos_slider_controls_one .product-photos-button-next"
    }
})


window.addEventListener('resize', function () {
    let width = window.innerWidth;
    if (width <= 1200) {
        let fragment = document.createDocumentFragment();
        const controls = document.querySelector('.product_photos_slider_controls_one')
        fragment.appendChild(controls)
        document.querySelector('.product_photos_slider').appendChild(fragment);
    } else {
        let fragment = document.createDocumentFragment();
        const controls = document.querySelector('.product_photos_slider_controls_one')
        fragment.appendChild(controls)
        document.querySelector('.product_photos_slider_header').appendChild(fragment);
    }
})

const resizeEventProductPage = new Event('resize')

window.dispatchEvent(resizeEventProductPage);
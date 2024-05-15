const whyUsSlider = new Swiper('.why_us_certificates_slider', {
    loop: true,
    slidesPerView: 2,
    spaceBetween: 15,

    navigation: {
        nextEl: '.why_us_certificates_slider_button_next',
        prevEl: '.why_us_certificates_slider_button_prev',
    },
});
const reviewsSlider = new Swiper('.reviews_slider', {
    loop: true,
    slidesPerView: 3,
    spaceBetween: 30,
    pagination: {
        el: ".revies-swiper-pagination",
        type: "fraction"
    },

    navigation: {
        nextEl: '.reviews-button-next',
        prevEl: '.reviews-button-prev',
    },
})

window.addEventListener('resize', function () {
    let width = window.innerWidth;
    if (width < 1300 && width >= 650) {
        reviewsSlider.params.slidesPerView = 2
    } else if (width >= 1300) {
        reviewsSlider.params.slidesPerView = 3
    } else if (width < 650) {
        reviewsSlider.params.slidesPerView = 1
    }
})

const reviewsResizeEvent = new Event('resize')

window.dispatchEvent(reviewsResizeEvent)

const review_buttons = document.querySelectorAll('.review_more');
review_buttons.forEach((el) => {
    el.addEventListener('click', function (e)  {
        const parent = e.target.closest('.review_container');
        const text = parent.querySelector('.review_text').innerText;
        const client_name = parent.querySelector('.review_name').innerText;
        const rate = parent.querySelector('.review_rate').innerHTML;
        const modal = document.querySelector('.full_review_modal');
        modal.style.opacity = '1';
        modal.style.zIndex = '100';
        modal.querySelector('.review_text').innerText = text;
        modal.querySelector('.review_name').innerText = client_name;
        modal.querySelector('.review_rate').innerHTML = rate;
    })
})

document.querySelector('.full_review_modal').addEventListener('click', function (e) {
    const target = e.target.closest('.review_container');
    if (target && !e.target.closest('.xmark')) {
        return;
    }
    requestAnimationFrame(() => {
        requestAnimationFrame(() => {
            this.style.opacity = '0';
            this.style.zIndex = '-1';
        })
    })
})
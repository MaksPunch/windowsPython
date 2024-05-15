const faqHeaders = document.querySelectorAll('.faq_header');
faqHeaders.forEach((e) => {
    e.addEventListener('click', function (e) {
        const faq_body = this.closest('.faq').querySelector('.faq_body');
        const plus = this.closest('.faq_header').querySelector('.plus');
        if (faq_body.style.maxHeight === '0px' || !faq_body.style.maxHeight) {
            faq_body.style.maxHeight = '500px';
            plus.style.transform = 'rotate(0)'
        } else {
            faq_body.style.maxHeight = '0';
            plus.style.transform = 'rotate(90deg)'
        }
    })
})
const orderCallButton = document.querySelectorAll('button.order_call');
orderCallButton.forEach(el => {
    el.addEventListener('click', function (e) {
        const modal = document.querySelector('.order_call_modal');
        modal.style.opacity = '1';
        modal.style.zIndex = '100';
    })
})
const orderMeasureModal = document.querySelectorAll('button.order_measure');
orderMeasureModal.forEach(el => {
    el.addEventListener('click', function (e) {
        const modal = document.querySelector('.order_measure_modal');
        modal.style.opacity = '1';
        modal.style.zIndex = '100';
    })
})

const modals = document.querySelectorAll('.order_modal');
modals.forEach(el => {
    el.addEventListener('click', function (e) {
        const target = e.target.closest('.order_modal_content');
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
})
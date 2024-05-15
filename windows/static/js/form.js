const forms = document.querySelectorAll('form.order_form');
const showFormResponse = (responseDiv, responseType, el, button, oldText) => {
    responseDiv.style.display = "flex";
    requestAnimationFrame(() => {
        requestAnimationFrame(() => {
            responseDiv.style.opacity = '1';
        })
    })
    const error_response = responseDiv.querySelector('.' + responseType);
    error_response.style.display = 'flex';
    el.style.display = "none";
    setTimeout(() => {
        el.style.display = 'flex';
        el.style.opacity = '0'
        responseDiv.style.opacity = '0';
        responseDiv.style.display = 'none';
        error_response.style.display = 'none'
        button.innerHTML = oldText;
        requestAnimationFrame(() => {
            requestAnimationFrame(() => {
                el.style.opacity = '1'
            })
        })
    }, 2000)
}

forms.forEach(el => {
    el.addEventListener('submit', function (e) {
        e.preventDefault();
        const formData = new FormData(el);
        const responseDiv = el.closest('div').querySelector('.response_container');
        const button = el.querySelector('button');
        const oldText = button.innerText;
        button.innerHTML = '';
        const loader = document.createElement('div');
        loader.classList.add('loader');
        button.append(loader);
        const res = fetch('make_order', {method: "POST", body: formData})
            .then(res => res.json())
            .then(res => {
                if (res.message === 'ok') {
                    showFormResponse(responseDiv, 'success_response', el, button, oldText)
                }
            })
            .catch(e => {
                if (e) {
                    showFormResponse(responseDiv, 'error_response', el, button, oldText)
                }
            });
    })
})
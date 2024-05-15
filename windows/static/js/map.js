// Функция ymaps.ready() будет вызвана, когда
// загрузятся все компоненты API, а также когда будет готово DOM-дерево.
ymaps.ready(init);
function init(){
    // Создание карты.
    var myMap = new ymaps.Map("map", {
        // Координаты центра карты.
        // Порядок по умолчанию: «широта, долгота».
        // Чтобы не определять координаты центра карты вручную,
        // воспользуйтесь инструментом Определение координат.
        center: [59.212777, 39.841289],
        // Уровень масштабирования. Допустимые значения:
        // от 0 (весь мир) до 19.
        zoom: 16
    });

    myMap.geoObjects.add(new ymaps.Placemark([59.212777, 39.841289], {
        balloonContent: "ООО PLIDOWS"
    }, {
        preset: "islands#redDotIcon"
    }))


    myMap.behaviors.disable('scrollZoom');

    var ctrlKey = false;
    var ctrlMessVisible = false;
    var timer;

// Отслеживаем скролл мыши на карте, чтобы показывать уведомление
    myMap.events.add(['wheel', 'mousedown'], function(e) {
        if (e.get('type') == 'wheel') {
            if (!ctrlKey) { // Ctrl не нажат, показываем уведомление
                $('.ymap_ctrl_display').fadeIn(300);
                ctrlMessVisible = true;
                clearTimeout(timer); // Очищаем таймер, чтобы продолжать показывать уведомление
                timer = setTimeout(function() {
                    $('.ymap_ctrl_display').fadeOut(300);
                    ctrlMessVisible = false;
                }, 1500);
            }
            else { // Ctrl нажат, скрываем сообщение
                $('.ymap_ctrl_display').fadeOut(100);
            }
        }
        if (e.get('type') == 'mousedown' && ctrlMessVisible) { // Скрываем уведомление при клике на карте
            $('.ymap_ctrl_display').fadeOut(100);
        }
    });

    // Обрабатываем нажатие на Ctrl
    $(document).keydown(function(e) {
        if (e.which === 17 && !ctrlKey) { // Ctrl нажат: включаем масштабирование мышью
            ctrlKey = true;
            myMap.behaviors.enable('scrollZoom');
        }
    });
    $(document).keyup(function(e) { // Ctrl не нажат: выключаем масштабирование мышью
        if (e.which === 17) {
            ctrlKey = false;
            myMap.behaviors.disable('scrollZoom');
        }
    });
}
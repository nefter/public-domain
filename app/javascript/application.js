// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"

document.addEventListener('DOMContentLoaded', () => {
    // Functions to open and close a modal
    function openModal($el) {
        $el.classList.add('is-active');
    }

    function closeModal($el) {
        $el.classList.remove('is-active');
    }

    function closeAllModals() {
        (document.querySelectorAll('.modal') || []).forEach(($modal) => {
            closeModal($modal);
        });
    }

    // Add a click event on buttons to open a specific modal
    (document.querySelectorAll('.js-modal-trigger') || []).forEach(($trigger) => {
        const modal = $trigger.dataset.target;
        const $target = document.getElementById(modal);
        console.log($target);

        $trigger.addEventListener('click', () => {
            openModal($target);
        });
    });

    // Add a click event on various child elements to close the parent modal
    (document.querySelectorAll('.modal-background, .modal-close, .modal-card-head .delete, .modal-card-foot .button') || []).forEach(($close) => {
        const $target = $close.closest('.modal');

        $close.addEventListener('click', () => {
            closeModal($target);
        });
    });

    // Add a keyboard event to close all modals
    document.addEventListener('keydown', (event) => {
        const e = event || window.event;

        if (e.keyCode === 27) { // Escape key
            closeAllModals();
        }
    });
});

// bulmaCarousel
bulmaCarousel.attach('#carousel-demo', {
    slidesToScroll: 1,
    slidesToShow: 6,
    infinite: true,
    pagination: false,
    navigationSwipe: true,
    // autoplay: true,
    breakpoints: [{
        changePoint: 480,
        slidesToShow: 1,
        slidesToScroll: 1
    }, {
        changePoint: 640,
        slidesToShow: 2,
        slidesToScroll: 2
    }, {
        changePoint: 768,
        slidesToShow: 6,
        slidesToScroll: 6
    }, {
        changePoint: 1280,
        slidesToShow: 6,
        slidesToScroll: 6
    }]
});

// Initialize all div with carousel class
var carousels = bulmaCarousel.attach('.carousel', options);

// Loop on each carousel initialized
for (var i = 0; i < carousels.length; i++) {
    // Add listener to  event
    carousels[i].on('before:show', state => {
        console.log(state);
    });
}
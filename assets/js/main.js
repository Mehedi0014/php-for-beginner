
$(document).ready(function() {   

    $('#sliderArea').owlCarousel({
        loop: true,
        autoplay: true,
        items: 1,
        nav: true,
        navText: ['Prev','Next'],
        autoplayTimeout: 5000,        
        animateIn: 'animate__fadeIn',
        animateOut: 'animate__fadeOut'
    })

    $('#serviceCategoriesCarousel').owlCarousel({
        loop:true,
        margin:30,
        autoplay: 1,
        nav:true,
        navText: ['<i class="fa fa-arrow-left"></i>','<i class="fa fa-arrow-right"></i>'],
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:4
            }
        }
    })





}); // Close document dot ready.
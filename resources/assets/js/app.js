'use strict';

var _ = require('lodash');
window.$ = window.jQuery = require('jquery');
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});

require('materialize-css');
require('slick-carousel');
require('sweetalert');
require('./home');
require('./newsletter');

let lazyImages = [...document.querySelectorAll('.lazy')];

function lazyLoad() {
    lazyImages.forEach(image => {
        if(elementVisible(image)){
            image.src = image.dataset.src;
            image.onload = () => image.classList.add('loaded');
        }
    });
}

window.addEventListener('scroll', _.throttle(lazyLoad, 16));
window.addEventListener('resize', _.throttle(lazyLoad, 16));

$(document).ready(function(){
    function cargar(){
        setTimeout(function () {
            $('#loading').css('display','none');
            $('#content').css('visibility','initial');
            $('body').css('overflow-x','visible');
            $('body').css('overflow-y','visible');
            lazyLoad();
        },0);
    }
    window.load = cargar();
    $('.modal').modal({
        dismissible: false,
    });
    $('.sidenav').sidenav({
        edge: 'right',
    });
    $('.dropdown-trigger').dropdown({
        closeOnClick: false
    });
});

$('.close-menu').click(function () {
    $('.sidenav').sidenav('close');
});

$('.galleryClick').click(function () {
    $('html, body').animate({
        scrollTop: $('.sectionGalleryHome').offset().top - 100
    }, 1000);
});
$('.artistClick').click(function () {
    $('html, body').animate({
        scrollTop: $('.sectionPermanentHome').offset().top - 100
    }, 1000);
});
$('.aboutClick').click(function () {
    $('html, body').animate({
        scrollTop: $('.sectionAboutHome').offset().top - 100
    }, 1000);
});
$('.contactClick').click(function () {
    $('html, body').animate({
        scrollTop: $('.sectionInfoHome').offset().top - 100
    }, 1000);
});
$('.servicesClick').click(function () {
    $('html, body').animate({
        scrollTop: $('.sectionServices').offset().top - 100
    }, 1000);
});



function elementVisible(element){
    var visible = true;
    var windowTop = $(document).scrollTop();
    var windowBottom = windowTop + window.innerHeight;
    var elementPositionTop =  $(element).offset().top;
    var elementPositionBottom = elementPositionTop + $(element).height();
    if (elementPositionTop >= windowBottom || elementPositionBottom <= windowTop) {
        visible = false;
    }
    return visible;
}

$(window).scroll(function() {
    if ($(window).width() > 991) {
        if ($(document).scrollTop() > 20) {
            $('.header').addClass('header-shadow');
        } else {
            if ($(document).scrollTop() >= 0 && $(document).scrollTop() <= 15) {
                $('.header').removeClass('header-shadow');
            }
        }
    }
});

$('.modal').click(function (e) {
    if($(e.target).parents('.rowOne').length == 0){
        $('.modal').modal('close');
    }
});

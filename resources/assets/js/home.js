$(document).ready(function () {
    $('#sliderBanner').slick({
        dots: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        adaptiveHeight: true,
        arrows: false,
        autoplay: true,
        autoplaySpeed: 4000,
        cssEase: 'easeOutElastic',
        fade: true,
        swipe: true,
        pauseOnHover: false,
        pauseOnDotsHover: false,
        pauseOnFocus: false,
    });
    $('#slickProcess').slick({
        dots: false,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        adaptiveHeight: true,
        arrows: true,
        autoplay: true,
        autoplaySpeed: 4000,
        pauseOnHover: false,
        pauseOnDotsHover: false,
        pauseOnFocus: false,
        lazyLoad: 'ondemand',
        nextArrow: $('.sectionAboutProcess .arrowRight'),
        prevArrow: $('.sectionAboutProcess .arrowLeft'),
    });
    function sliderGallery(){
        $('#sliderGallery').slick({
            dots: true,
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            adaptiveHeight: true,
            arrows: false,
            autoplay: false,
            autoplaySpeed: 4000,
            pauseOnHover: false,
            pauseOnDotsHover: false,
            pauseOnFocus: false,
            lazyLoad: 'ondemand',
        });
        $('#sliderGallery .medium').click(function () {
            //$('#modalGallery .image').css('background-image', 'url('+$(this).attr('image')+')');
            $('#modalGallery img').attr('src',$(this).attr('image'));
            $('#modalGallery h1').html('<span>'+$(this).attr('title')+'</span> '+$(this).attr('subtitle'));
            $('#modalGallery h2 .year').html($(this).attr('year'));
            $('#modalGallery h2 .medida').html($(this).attr('medida'));
            $('#modalGallery').modal('open');
            $('.modal-overlay').click(function (e) {
                $('.modal').modal('close');
            });
        });
    }
    sliderGallery();
    function sliderExposition(){
        $('#sliderExpositions').slick({
            dots: true,
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            adaptiveHeight: true,
            arrows: false,
            autoplay: false,
            autoplaySpeed: 4000,
            pauseOnHover: false,
            pauseOnDotsHover: false,
            pauseOnFocus: false,
            lazyLoad: 'ondemand',
        });
    }
    sliderExposition();
    $('#slickPemanent').slick({
        dots: true,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        adaptiveHeight: true,
        arrows: false,
        autoplay: false,
        autoplaySpeed: 4000,
        pauseOnHover: false,
        pauseOnDotsHover: false,
        pauseOnFocus: false,
        lazyLoad: 'ondemand',
    });
    $('.click_one_h3').click(function () {
        $(this).hide();
        $('.sectionAboutHome .h3_1').css('height','auto');
    });
    $('.click_two_h3').click(function () {
        $(this).hide();
        $('.sectionBiographyHome .h3_2').css('height','auto');
    });
    $('.click_three_h3').click(function () {
        $(this).hide();
        $('.sectionAboutProcess .h3_3').css('height','auto');
    });

    $('#loaderGalley').hide();
    $('.sectionGalleryHome .row_2 h1').click(function () {
        $('.sectionGalleryHome .row_2 h1').removeClass('active');
        $(this).addClass('active');
        let id = this.id;
        $.ajax({
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            type: "POST",
            url: https+'getGalery',
            data: {
                id: id
            },
            beforeSend: function() {
                $('#gallerylist').hide();
                $("#gallerylist").html('');
                $('#loaderGalley').show();
            },
            complete: function(){
            },
            success: function( msg ) {
                setTimeout(function () {
                    $("#gallerylist").html(msg);
                    setTimeout(function () {
                        $('#loaderGalley').hide();
                        $('#gallerylist').show();
                        sliderGallery();
                        $('html, body').animate({
                            scrollTop: $('#gallerylist').offset().top - 200
                        }, 1000);
                    },2000);
                },0);
            }
        });
    });

    $('.sectionGalleryHome select').change(function () {
        let id = $('.sectionGalleryHome select').val();
        $.ajax({
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            type: "POST",
            url: https+'getGalery',
            data: {
                id: id
            },
            beforeSend: function() {
                $('#gallerylist').hide();
                $("#gallerylist").html('');
                $('#loaderGalley').show();
            },
            complete: function(){
            },
            success: function( msg ) {
                setTimeout(function () {
                    $("#gallerylist").html(msg);
                    setTimeout(function () {
                        $('#loaderGalley').hide();
                        $('#gallerylist').show();
                        sliderGallery();
                        $('html, body').animate({
                            scrollTop: $('#gallerylist').offset().top - 200
                        }, 1000);
                    },2000);
                },0);
            }
        });
    });

    $('#loaderExposition').hide();
    $('.sectionExpositionHome .row_2 h2').click(function () {
        $('.sectionExpositionHome .row_2 h2').removeClass('active');
        $(this).addClass('active');
        let id = this.id;
        $.ajax({
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            type: "POST",
            url: https+'getExpositions',
            data: {
                id: id
            },
            beforeSend: function() {
                $('#expositionlist').hide();
                $("#expositionlist").html('');
                $('#loaderExposition').show();
            },
            complete: function(){
            },
            success: function( msg ) {
                setTimeout(function () {
                    $("#expositionlist").html(msg);
                    setTimeout(function () {
                        $('#loaderExposition').hide();
                        $('#expositionlist').show();
                        sliderExposition();
                        $('html, body').animate({
                            scrollTop: $('#expositionlist').offset().top - 200
                        }, 1000);
                    },2000);
                },0);
            }
        });
    });

    $('.sectionExpositionHome select').change(function () {
        let id =  $('.sectionExpositionHome select').val();
        $.ajax({
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            type: "POST",
            url: https+'getExpositions',
            data: {
                id: id
            },
            beforeSend: function() {
                $('#expositionlist').hide();
                $("#expositionlist").html('');
                $('#loaderExposition').show();
            },
            complete: function(){
            },
            success: function( msg ) {
                setTimeout(function () {
                    $("#expositionlist").html(msg);
                    setTimeout(function () {
                        $('#loaderExposition').hide();
                        $('#expositionlist').show();
                        sliderExposition();
                        $('html, body').animate({
                            scrollTop: $('#expositionlist').offset().top - 200
                        }, 1000);
                    },2000);
                },0);
            }
        });
    });
});

$(document).ready(function() {
    "use strict";


    /* Submenu Effect */
    $('.mainmenu').superfish({
        delay: 0,
        animation: {height: 'show'},
        animationOut: {height: 'hide'},
        speed: 'fast',
        speedOut: 'fast'
    });

    //Mainmenu arrow

    $('.mainmenu > li > a').each(function() {
        if ($(this).parent('li').children('ul').size() > 0) {
            $(this).append('&nbsp;<i class="icon-angle-down"></i>');
        }
    });
    $('.mainmenu ul li a').each(function() {
        if ($(this).parent('li').children('ul').size() > 0) {
            $(this).append('<i class="icon-angle-down"></i>');
        }
    });


    //Top Advert
    if (readCookie('hideSuggestionBox') === 'true') {
        $('.iklon').hide();
    } else {
        $('.iklon').show();
    }
    ;
    $('.closeit').click(function() {
        $('.iklon').slideUp();
        createCookie('hideSuggestionBox', 'true', 1);
    });


    //Get Today's Date
    var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    var newDate = new Date();
    newDate.setDate(newDate.getDate());
    $('#Date').html("<i class='icon-calendar-empty'></i> &nbsp;&nbsp;" + dayNames[newDate.getDay()] + ", " + newDate.getDate() + ' ' + monthNames[newDate.getMonth()] + ' ' + newDate.getFullYear());

    //Search
    $('ul.slides').hide();

    $('#search').click(function() {
        $('.srcfield').toggleClass("slidingleft").focus();
        $('#search').toggleClass("mainclr");
    });

    //Topmenu Button
    $('.hdrbtn').hover(function() {
        $('ul', this).toggleClass("expandUp").toggleClass("fadeout");
    });



    // First Word Styling
    $('.fword').each(function() {
        var me = $(this)
                , t = me.text().split(' ');
        me.html('<span class="fwstyle">' + t.shift() + '</span> ' + t.join(' '));
    });


    /* FitVid.JS */
    $('body').fitVids();

    /* FLICKR */
    $('#flickr').jflickrfeed({
        limit: 8,
        qstrings: {
            id: '22543235@N05'
        },
        itemTemplate:
                '<li>' +
                '<a href="{{image_b}}" target="_blank" rel="prettyPhoto[flickr]"><div class="thumcont"><img src="{{image_s}}" alt="{{title}}" /></div></a>' +
                '</li>'
    }, function(data) {
        $('#flickr a').prettyPhoto({
            social_tools: '',
            theme: 'light_square'
        });
    });

    $('#simple-menu').sidr({
        name: 'sidr',
        side: 'left'
    });

    $('#righttrigger').sidr({
        name: 'rightmenu',
        side: 'right'
    });

});


/* Fire Script only when content loaded completely */
$(window).load(function() {

    "use strict";
    /* $('.footer').each(function(){  
     var highestBox = 0;
     $('.grid_4', this).each(function(){
     if($(this).height() > highestBox) 
     highestBox = $(this).height(); 
     });  
     $('.grid_4',this).height(highestBox);
     });     */


    $("a[rel^='prettyPhoto']").prettyPhoto({
        allow_resize: true,
        deeplinking: false
    });
    /* Scroll to top */
    $(window).scroll(function() {
        if ($(this).scrollTop() > 100) {
            $('.scrollup').addClass("expandUp");
        } else {
            $('.scrollup').removeClass("expandUp");
        }
    });
    $('.scrollup').click(function() {
        $("html, body").animate({scrollTop: 0}, 600);
        return false;
    });


    //Flexslider
    $('ul.slides').show();

    $('.bigslide').flexslider({
        animation: "slide",
        slideshow: false,
        controlNav: false,
        useCSS: false,
        prevText: "<i class='icon-arrow-left'></i>",
        nextText: "<i class='icon-arrow-right'></i>",
        start: function(slider) {
            var curSlide = slider.slides[slider.currentSlide];
            $(curSlide).find('.slidedate').addClass("slideRight");
            $(curSlide).find('.slidetitle').addClass("slideLeft");
        },
        after: function(slider) {
            var curSlide = slider.slides[slider.currentSlide];
            $(curSlide).find('.slidedate').addClass("slideRight");
            $(curSlide).find('.slidetitle').addClass("slideLeft");
        },
        before: function(slider) {
            var curSlide = slider.slides[slider.currentSlide];
            $(curSlide).find('.slidedate').removeClass("slideRight");
            $(curSlide).find('.slidetitle').removeClass("slideLeft");
        }
    });

    $('.sideslide').flexslider({
        animation: "slide",
        slideshow: false,
        controlNav: false,
        useCSS: false,
        slideshowSpeed: 5000,
        prevText: "<i class='icon-arrow-left'></i>",
        nextText: "<i class='icon-arrow-right'></i>",
        start: function(slider) {
            var curSlide = slider.slides[slider.currentSlide];
            $(curSlide).find('.slidedate').addClass("slideRight");
            $(curSlide).find('.slidetitle').addClass("slideLeft");
        },
        after: function(slider) {
            var curSlide = slider.slides[slider.currentSlide];
            $(curSlide).find('.slidedate').addClass("slideRight");
            $(curSlide).find('.slidetitle').addClass("slideLeft");
        },
        before: function(slider) {
            var curSlide = slider.slides[slider.currentSlide];
            $(curSlide).find('.slidedate').removeClass("slideRight");
            $(curSlide).find('.slidetitle').removeClass("slideLeft");
        }
    });

    $('.reviewslide').flexslider({
        animation: "slide",
        slideshow: false,
        smoothHeight: true,
        controlNav: false,
        useCSS: false,
        slideshowSpeed: 8000,
        prevText: "<i class='icon-chevron-left'></i>",
        nextText: "<i class='icon-chevron-right'></i>"
    });

    $('.featuredslides').flexslider({
        animation: "slide",
        slideshow: false,
        smoothHeight: true,
        controlNav: false,
        slideshowSpeed: 5000,
        prevText: "<i class='icon-chevron-left'></i>",
        nextText: "<i class='icon-chevron-right'></i>"
    });

    $('.newsticker').flexslider({
        animation: "slide",
        slideshow: true,
        direction: "vertical",
        smoothHeight: true,
        controlNav: false,
        slideshowSpeed: 5000,
        prevText: "<i class='icon-chevron-left'></i>",
        nextText: "<i class='icon-chevron-right'></i>"
    });
    $('.loopCarousel').flexslider({
        animation: "slide",
        slideshow: false,
        smoothHeight: true,
        controlNav: false,
        slideshowSpeed: 5000,
        prevText: "<i class='icon-chevron-left'></i>",
        nextText: "<i class='icon-chevron-right'></i>"
    });
});

$(window).scroll(function() {
    $('.reviews').each(function() {
        var imagePos = $(this).offset().top;

        var topOfWindow = $(window).scrollTop();
        if (imagePos < topOfWindow + 400) {
            $('.score_val', this).addClass("stretchRight");
        }
    });
});
$(function () {

    $('#myGalleryProject').galleryView({
        panel_width: 486,
        panel_height: 333
    });

    $('#jcarousel').jcarousel({ wrap: 'circular' })
    .jcarouselAutoscroll({
        interval: 2000,
        target: '+=1',
        autostart: true
    });

    $(".tabButton").each(function () {
        $(this).click(function () {
            $(".tabButton").removeClass("current");
            $("#projectDetail").html($(this).siblings(".tabContent").html());
            $(this).addClass("current");
        });
    });

    var url = window.location.href;
    $("#menu").find("a").each(function ()
    {
        var $self = $(this);
        if (url.indexOf($self.attr("href")) > 1)
        {
            $("#menu").find("li").removeClass("menu_active")
            $self.closest("li").addClass("menu_active");
        }
    });

    //Check to see if the window is top if not then display button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.scrollToTop').fadeIn();
        } else {
            $('.scrollToTop').fadeOut();
        }
    });

    //Click event to scroll to top
    $('.scrollToTop').click(function () {
        $('html, body').animate({ scrollTop: 0 }, 800);
        return false;
    });

    function isValidEmailAddress(emailAddress) {
        var regex = '/^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/';
        return pattern.test(emailAddress);
    };
})
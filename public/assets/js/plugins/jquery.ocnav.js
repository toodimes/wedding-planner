/* ===========================================================
 * OCNav - Offcanvas plugin for Bootstrap
 *
 * author: @geedmo
 * uri: http://geedmo.com
 *
 * Copyright (c) 2014, Geedmo. All rights reserved.
 * Released under CodeCanyon Regular License: http://codecanyon.net/licenses
 * =========================================================== */

!function() {
    
    var activeClass = 'active';

    $(function() {

        var menuWrapper = $('.oc-wrapper');

        $('.oc-toggle').click(function(){
            
            var $target = $($(this).data('target'))

            $target.toggleClass(activeClass)[0].offsetWidth
            menuWrapper.toggleClass(activeClass)
			$('html,body').animate({scrollTop: 0});
            return false;
        })

        $('.oc-close').click(function(){
            
            var $target = $(this).parents('.oc-navbar').eq(0);

            $target.removeClass(activeClass)[0].offsetWidth
            menuWrapper.removeClass(activeClass)
            return false;
        })


        var toggler = $('.oc-toggle').eq(0);
        
        checkReponsive();
        $(window).resize(checkReponsive)
        
        function checkReponsive(){
            var responsive = toggler.is(':visible');

            if(!responsive) {
                menuWrapper.removeClass(activeClass)
                $('.oc-navbar').removeClass(activeClass)
            }
 
        }

    });

}(window.jQuery);
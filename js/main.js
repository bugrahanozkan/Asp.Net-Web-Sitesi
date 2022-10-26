$(document).ready(function () {
    $(".opener").click(function () {
      
        if ($(this).hasClass("open1")) {
            // $(".openable.open").removeClass("open");
            $(".opener.open1 .sub").slideToggle(200);
            $(".opener.open1 .fa.fa-angle-left").removeClass("fa-angle-left").addClass("fa-angle-right");
            $(this).removeClass("open1");
           
        } else {
            if ($(".opener").hasClass("open1")) {
                $(".opener.open1 .fa.fa-angle-right").removeClass("fa-angle-right").addClass("fa-angle-left");
                $(".opener.open1 .sub").slideToggle(200);
                $(".opener").removeClass("open1");
            }

            $(this).addClass("open1");
            $(".opener.open1 .sub").slideToggle(200);
            $(".opener.open1 .fa.fa-angle-right").removeClass("fa-angle-right").addClass("fa-angle-left");
        }

    });

    $(".openable .acilir").click(function () {

            if ($(this).hasClass("open")) {
                $(".openable a.acilir.open").parent().children(".anasub").slideToggle(200);
                $(".openable a.acilir.open").parent().removeClass("open");
                $(".openable a.acilir.open .fa.fa-angle-up").removeClass("fa-angle-up").addClass("fa-angle-down");
                    $(this).removeClass("open");
            } else {
                if ($(".openable a.acilir").hasClass("open")) {
                    $(".openable a.acilir.open").parent().removeClass("open");

                    $(".openable a.acilir.open .fa.fa-angle-up").removeClass("fa-angle-up").addClass("fa-angle-down");
                    $(".openable a.acilir.open").parent().children(".anasub").slideToggle(200);
                    $(".openable a.acilir").removeClass("open");
                }

                $(this).addClass("open");
                $(".openable a.acilir.open").parent().addClass("open");

                $(".openable a.acilir.open").parent().children(".anasub").slideToggle(200);
                $(".openable a.acilir.open .fa.fa-angle-down").removeClass("fa-angle-down").addClass("fa-angle-up");
            }
    });

    var kontrol = 0;
    $(".arama").click(function () {
        
        if (kontrol == 0) {
            kontrol = 1;
            $(".arama i").removeClass("fa-search").addClass("fa-times");
        } else {
            kontrol = 0;
            $(".arama i").removeClass("fa-times").addClass("fa-search");
        }

        if ($(".arama").hasClass("open")) {
            $(".mask").css("left", "-100%");
            $(".menudis").css("right", "-300px");
            $(".menu").removeClass("open");
            $(".arama").removeClass("open");
           // $(".arama i").removeClass("fa-times").addClass("fa-search");


        } else {
         
            $(".arama").addClass("open");
            $(".mask").css("left", "0px");
           // $(".arama i").removeClass("fa-search").addClass("fa-times");
        }
       
    });
    var kontrol1 = 0;
    $(".user-o").click(function () {

        if (kontrol1 == 0) {
            kontrol1 = 1;
            $(".user-o i").removeClass("fa-user-o").addClass("fa-times");
        } else {
            kontrol1 = 0;
            $(".user-o i").removeClass("fa-times").addClass("fa-user-o");
        }

        if($(this).hasClass("open"))
            $(".profil_menu").slideToggle(200);
        else
            $(".profil_menu").slideToggle(200);
        
    });

});
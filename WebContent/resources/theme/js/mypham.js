$(document).ready(function () {
    $(".owl-carousel").owlCarousel({
    	
        items: 1,//so hinh hien thi tren 1 trang
       // margin:20,//khoang cach giua 2 trang
        loop: true,//lap lai 
        autoplay: true,//tu dong chay qua
        autoplayTimeout: 3000,//thoi gian chay qua cai khac
        nav:true,
        navSpeed: 3000,
        navText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>']
      });

      $(window).scroll(function () { 
        let currentPos = $(this).scrollTop();//vit ri hien tai cua thanh cuon
        console.log("vtri ",currentPos);
        if(currentPos>150){
          $('header').addClass("fixed fadeDown");
        }
        else{
          $('header').removeClass("fixed fadeDown");
        }
      });
});

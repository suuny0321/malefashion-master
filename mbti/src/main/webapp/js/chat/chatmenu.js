$(document).ready(function() {
	
	/* 2024-03-20 채팅방 방 생성, 방 관리 목록 토글 기능 추가 */
	$(function() {
		  function slideMenu() {
		    var activeState = $("#menu-container .menu-list").hasClass("active");
		    $("#menu-container .menu-list").animate({left: activeState ? "0%" : "-100%"}, 400);
		  }
		  
		  $("#hamburger-menu").click(function(event) {
		    event.stopPropagation();
		    $("#hamburger-menu").toggleClass("open");
		    $("#menu-container .menu-list").toggleClass("active");
		    if($('.accordion').css('display') == 'none'){            
		    	$('.accordion').fadeIn(300);        
		    }else{            
		    	$('.accordion').fadeOut(300);        
		    }
		    
		    slideMenu();

		    $("body").toggleClass("overflow-hidden");
		  });

		  $(".menu-list").find(".accordion-toggle").click(function() {
		    $(this).next().toggleClass("open").slideToggle("fast");
		    $(this).toggleClass("active-tab").find(".menu-link").toggleClass("active");

		    $(".menu-list .accordion-content").not($(this).next()).slideUp("fast").removeClass("open");
		    $(".menu-list .accordion-toggle").not(jQuery(this)).removeClass("active-tab").find(".menu-link").removeClass("active");
		  });
	}); // jQuery load
	
});
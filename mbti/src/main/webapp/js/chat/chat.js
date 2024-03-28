$(document).ready(function() {
	
	/* 2024-03-19 채팅방 목록 클릭 시 채팅 화면 보여주기 */
	document.querySelector('.chat[data-chat=person1]').classList.add('active-chat')
	document.querySelector('.person[data-chat=person1]').classList.add('active')
	
	let friends = {
	    list: document.querySelector('ul.people'),
	    all: document.querySelectorAll('.left .person'),
	    name: ''
	  },
	  chat = {
	    container: document.querySelector('.container .right'),
	    current: null,
	    person: null,
	    name: document.querySelector('.container .right .top .name')
	  }
	
	friends.all.forEach(f => {
	  f.addEventListener('mousedown', () => {
	    f.classList.contains('active') || setAciveChat(f)
	  })
	});
	
	function setAciveChat(f) {
	  friends.list.querySelector('.active').classList.remove('active')
	  f.classList.add('active')
	  chat.current = chat.container.querySelector('.active-chat')
	  chat.person = f.getAttribute('data-chat')
	  chat.current.classList.remove('active-chat')
	  chat.container.querySelector('[data-chat="' + chat.person + '"]').classList.add('active-chat')
	  friends.name = f.querySelector('.name').innerText
	  chat.name.innerHTML = friends.name
	  if($('.chatscl').css('display') == 'none'){            
		$('.chatscl').fadeIn(500);        
      }
	}

	/* 2024-03-19 방목록 검색 기능 추가 */
	$("#search").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		$(".people .name").filter(function() {
			console.log($(this).text().toLowerCase().indexOf(value) > -1)

			// toggle(true)는 선택한 요소를 보이도록 설정하는 메소드입니다.
			// toggle(false)는 선택한 요소에 style="display: none;" 속성이 추가되어 보이지 않도록 합니다. 
			$(this).parent().toggle($(this).text().toLowerCase().indexOf(value) > -1)
		});
	});
	
	/* 2024-03-21 채팅방 메시징 기능 추가 */
	var chatbox = document.getElementById("chatbox");
	chatbox.scrollTop = chatbox.scrollHeight;

	function newMessage() {
		message = $(".message-input").val();
		if($.trim(message) == '') {
			return false;
		}
		
		$('<div class="bubble me">' + message + '</div>').appendTo($('#chatbox'));
		$('.message-input').val(null);
		chatbox.scrollTop = chatbox.scrollHeight;
	};

	$('.send').click(function() {
	  newMessage();
	});

	$(window).on('keydown', function(e) {
	  	if (e.which == 13) {
	    	newMessage();
	    	return false;
	  	}
	});

});
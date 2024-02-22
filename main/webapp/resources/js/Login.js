var firstLoad = true;
	document.getElementById("login").onsubmit = function(e){
		var id = document.getElementById('id').value;
		consol.log(id);
		var pw = document.getElementById('pw').value;
		console.log(id);
		if(id == "" || pw == ""){
			alert("아이디와 비밀번호를 입력해주세요.")
			e.preventDefault();
		}
	}
	window.onload = function(){
		var error = "아이디와 비밀번호를 확인해주세요";
		
		if(error && !firstLoad){
			alert(error);
		}
		firstLoad = false;
	}
// 페이지가 로드될 때 실행되는 함수
    window.onload = function() {
        // 콘솔에 메시지 출력
        console.log("페이지가 열렸습니다.");
    };
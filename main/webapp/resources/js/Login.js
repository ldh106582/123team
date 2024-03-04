$(document).ready(function(){
    var firstLoad = true;

    $("#loginForm").submit(function(event){
        // 아이디와 비밀번호 입력값 가져오기
        var userId = $("#id").val().trim();
        var userPw = $("#pw").val().trim();
        console.log(userId);
        
        // 아이디와 비밀번호 유효성 검사
        if(userId === '' || userPw === '') {
            alert('아이디와 비밀번호를 입력해주세요.');
            event.preventDefault();
            return;
        }

        // Ajax 요청
        $.ajax({
            type: 'post',
            url: './confirm',
            data :{
                "userId": userId,
                "userPw": userPw,
            },
            success: function(response){
                if(response === "LoginSuccess"){
                    window.location.href = "./login";
                } else {
                    alert('아이디나 비밀번호가 일치하지 않습니다. 다시 확인해주세요.');
                }
            },
            error: function(xhr, status, error) {
                console.error('Ajax 오류 발생: ' + status, error);
            }
        });
        
        event.preventDefault(); // 기본 이벤트 방지
    });

    if(firstLoad){
        var error = "아이디와 비밀번호를 확인해주세요";
        if(error){
            alert(error);
        }
        firstLoad = false;
    }
});

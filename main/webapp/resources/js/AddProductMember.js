<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
$(document).ready(function(){
	$("#idConfirmBtn").click(function(){
	var personid = $("#id").val();
	$.ajax({
		url: "./ajax/idconfirm",
		type: "post",
		data: {personid: personid},
		success: function(response){
			alert("사용할 수 있는 아이디 입니다.");
		},
		error: function(request, satatus, error){
			alert("이미 사용하는 아이디입니다.");
		}
		});
	});
});

var a = document.getElementById("a");
alert(a);

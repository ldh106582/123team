<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

$(document).ready(function() {
    $("#addButton").click(function(event) {
        event.preventDefault();
        
        var amount = $("amount").val();
        
        $.ajax({
            type: 'post',
            url: '/123team/products/addcart',
            dataType: 'json',
            data: {
                "amount": amount
            },
            success: function(result) {
                if (result === true) {
                    alert("상품이 추가되었습니다.");
                } else {
                    alert("해당 상품은 추가할 수 없는 상품입니다.");
                }
            },
            error: function(request, error, status){
                console.log(error);
            }
        }); 
    });
});
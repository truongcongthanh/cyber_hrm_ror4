$(function (){
//    $("tbody").on("click","tr", function () {
//        var nhanvienid = $(this).attr("nhanvienid");
//        alert(nhanvienid);
//    });

    $(".form-index tr").click(function(){
        id = $(this).attr("nhanvienid");
        $.ajax({
            url: "http://localhost:3000/vn/signin",
            type: 'json',
            data: {id:id}
        }).done(function(json) {
            $("#nhanvien").find("h4").html(json.ten);
        });
    });
});


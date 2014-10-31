$(function () {
//    $("tbody").on("click","tr", function () {
//        var nhanvienid = $(this).attr("nhanvienid");
//        alert(nhanvienid);
//    });

    $(".form-index tr").click(function () {
        id = $(this).attr("nhanvienid");
        $.ajax({
            url: "nhanviens/laythongtin",
            dataType: 'json',
            data: {id: id}
        }).done(function (json) {
            $("#nhanvien").find("h4").html(json.holot + " " + json.ten);
            $("#nhanvien").find("#namsinh").html(json.namsinh);

        });
    });
});


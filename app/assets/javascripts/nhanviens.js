$(function () {
    $(".form-index tr").click(function () {
        id = $(this).attr("nhanvienid");
        $.ajax({
            url: "laythongtinnhanvien",
            dataType: 'json',
            data: {id: id}
        }).done(function (json) {
                $("#nhanvien").find("h4").html(json.holot + " " + json.ten);
                if (json.ngaysinh == '')
                    $("#nhanvien").find("#ngaysinh").html(json.namsinh);
                else
                    $("#nhanvien").find("#ngaysinh").html(json.ngaysinh);
            }
        )
        ;
    });
});


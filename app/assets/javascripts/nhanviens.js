function aaa(_id) {
    id = $(_id).attr("nhanvienid");
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
            $("#edit_nhanvien").attr("href","nhanviens/"+json.id+"/edit")
        }
    );
}

    // $(function () {
    //     $("#nhanvien_gioitinh").click(function () {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.get("gioitinh", function (json) {
    //                 alert(JSON.stringify(json));
    //                 string = "<option><%#= t "nhanviens.prompt_gioitinh" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_gioitinh").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_tinhtranghonnhan").click(function () {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.get("tinhtranghonnhan", function (json) {
    //                 string = "<option><%#= t "nhanviens.prompt_honnhan" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_tinhtranghonnhan").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_quoctich").click(function () {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.get("quoctich", function (json) {
    //                 string = "<option><%#= t "nhanviens.prompt_quoctich" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_quoctich").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_dantoc").click(function () {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.get("dantoc", function (json) {
    //                 string = "<option><%#= t "nhanviens.prompt_dantoc" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_dantoc").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_tongiao").click(function () {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.get("tongiao", function (json) {
    //                 string = "<option><%#= t "nhanviens.prompt_tongiao" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_tongiao").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_noisinh_tinh").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.get('danh_sach_tinh_tp', function (json) {
    //                 string = "<option><%#= t "nhanviens.prompt_tinhthanhphos" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_noisinh_tinh").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_noisinh_huyen").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.post('danh_sach_quan_huyen', {id: $("#nhanvien_noisinh_tinh").val()}, function (json) {

    //                 string = "<option><%#= t "nhanviens.prompt_quanhuyens" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_noisinh_huyen").html(string);
    //             });
    //         }
    //     });

    //     // $("#nhanvien_noisinh_xa").click(function (event) {
    //     //     if ($(this).find("option:first-child").attr('key') == 0) {
    //     //         $.post('danh_sach_phuong_xa', {id: $("#nhanvien_noisinh_huyen").val()}, function (json) {

    //     //             string = "<option><%#= t "nhanviens.prompt_phuongxas" %></option>";
    //     //             for (i = 0; i < json.length; i++) {
    //     //                 string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //     //             }
    //     //             $("#nhanvien_noisinh_xa").html(string);
    //     //         });
    //     //     }
    //     // });

    //     $("#nhanvien_nguyenquan_tinh").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.get('danh_sach_tinh_tp', function (json) {
    //                 string = "<option><%#= t "nhanviens.prompt_tinhthanhphos" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_nguyenquan_tinh").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_nguyenquan_huyen").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.post('danh_sach_quan_huyen', {id: $("#nhanvien_nguyenquan_tinh").val()}, function (json) {

    //                 string = "<option><%#= t "nhanviens.prompt_quanhuyens" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_nguyenquan_huyen").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_nguyenquan_xa").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.post('danh_sach_phuong_xa', {id: $("#nhanvien_nguyenquan_huyen").val()}, function (json) {

    //                 string = "<option><%#= t "nhanviens.prompt_phuongxas" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_nguyenquan_xa").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_thuongtru_tinh").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.get('danh_sach_tinh_tp', function (json) {
    //                 string = "<option><%#= t "nhanviens.prompt_tinhthanhphos" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_thuongtru_tinh").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_thuongtru_huyen").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.post('danh_sach_quan_huyen', {id: $("#nhanvien_thuongtru_tinh").val()}, function (json) {

    //                 string = "<option><%#= t "nhanviens.prompt_quanhuyens" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_thuongtru_huyen").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_thuongtru_xa").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.post('danh_sach_phuong_xa', {id: $("#nhanvien_thuongtru_huyen").val()}, function (json) {

    //                 string = "<option><%#= t "nhanviens.prompt_phuongxas" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_thuongtru_xa").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_tamtru_tinh").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.get('danh_sach_tinh_tp', function (json) {
    //                 string = "<option><%#= t "nhanviens.prompt_tinhthanhphos" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_tamtru_tinh").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_tamtru_huyen").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.post('danh_sach_quan_huyen', {id: $("#nhanvien_tamtru_tinh").val()}, function (json) {

    //                 string = "<option><%#= t "nhanviens.prompt_quanhuyens" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_tamtru_huyen").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_tamtru_xa").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.post('danh_sach_phuong_xa', {id: $("#nhanvien_tamtru_huyen").val()}, function (json) {

    //                 string = "<option><%#= t "nhanviens.prompt_phuongxas" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_tamtru_xa").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_noicapcmnd").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.get('danh_sach_tinh_tp', function (json) {
    //                 string = "<option><%#= t "nhanviens.prompt_tinhthanhphos" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_noicapcmnd").html(string);
    //             });
    //         }
    //     });

    //     $("#nhanvien_nganhang").click(function (event) {
    //         if ($(this).find("option:first-child").attr('key') == 0) {
    //             $.get('nganhang', function (json) {
    //                 string = "<option><%#= t "nhanviens.prompt_nganhang" %></option>";
    //                 for (i = 0; i < json.length; i++) {
    //                     string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
    //                 }
    //                 $("#nhanvien_nganhang").html(string);
    //             });
    //         }
    //     });

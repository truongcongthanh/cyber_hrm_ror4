function nhanvien(_id) {
    id = $(_id).attr("nhanvienid");
    $.ajax({
        url: "laythongtinnhanvien",
        dataType: 'json',
        data: {id: id}
    }).done(function (json) {
            $("body").data('dulieu_nhanvien', json);
            $('#nhanvien_chitiet').show();
            $("#nhanvien").find("h4").html(json.holot + " " + json.ten);
            if (json.ngaysinh == '')
                $("#nhanvien").find("#ngaysinh").html(json.namsinh);
            else
                $("#nhanvien").find("#ngaysinh").html(json.ngaysinh);
            $("#edit_nhanvien").attr("href", "nhanviens/" + json.id + "/edit")
        }
    );
}

function gioitinh(_gioitinh) {
    if ($(_gioitinh).find("option:first-child").attr('key') == 0) {
        $.get("/gioitinh", function (json) {
            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_gioitinh").html(string);
        });
    }
}

function tinhtranghonnhan(_honnhan) {
    if ($(_honnhan).find("option:first-child").attr('key') == 0) {
        $.get("/tinhtranghonnhan", function (json) {
            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_tinhtranghonnhan").html(string);
        });
    }
}

function quoctich(_quoctich) {
    if ($(_quoctich).find("option:first-child").attr('key') == 0) {
        $.get("/quoctich", function (json) {
            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_quoctich").html(string);
        });
    }
}

function dantoc(_dantoc) {
    if ($(_dantoc).find("option:first-child").attr('key') == 0) {
        $.get("/dantoc", function (json) {
            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_dantoc").html(string);
        });
    }
}

function tongiao(_tongiao) {
    if ($(_tongiao).find("option:first-child").attr('key') == 0) {
        $.get("/tongiao", function (json) {
            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_tongiao").html(string);
        });
    }
}

function noisinhtinh(_tinh) {
    var curV = $(_tinh).val();
    var curT = $(_tinh).text();
    var clickV = "";
    if ($(_tinh).find("option:first-child").attr('key') == 0) {
        $.get('/danh_sach_tinh_tp', function (json) {
            string = "<option value=" + curV + ">" + curT + "</option>";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_noisinh_tinh").html(string);
        });
        clickV = $(_tinh).val();
    }
    if(curV != clickV)
    {
        curV = clickV;
        $.post('/danh_sach_quan_huyen', {id: $("#nhanvien_noisinh_tinh").val()}, function (json) {

            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_noisinh_huyen").html(string);
        });
    }
}

function noisinhhuyen(_huyen) {
    var curV = $(_huyen).val();
    var curT = $(_huyen).text();
    var clickV = "";
    if ($(_huyen).find("option:first-child").attr('key') == 0) {
        $.post('/danh_sach_quan_huyen', {id: $("#nhanvien_noisinh_tinh").val()}, function (json) {

            string = "<option value=" + curV + ">" + curT + "</option>";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_noisinh_huyen").html(string);
        });
        clickV = $(_huyen).val();
    }
    if(curV != clickV)
    {
        curV = clickV;
        $.post('/danh_sach_phuong_xa', {id: $("#nhanvien_noisinh_huyen").val()}, function (json) {
            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_noisinh_xa").html(string);
        });
    }

}

function noisinhxa(_xa) {
    var curV = $(_xa).val();
    var curT = $(_xa).text();
    var clickV = "";
    if ($(_xa).find("option:first-child").attr('key') == 0) {
        $.post('/danh_sach_phuong_xa', {id: $("#nhanvien_noisinh_huyen").val()}, function (json) {
            string = "<option value=" + curV + ">" + curT + "</option>";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_noisinh_xa").html(string);
        });
    }
}

function nguyenquantinh(_tinh) {
    var curV = $(_tinh).val();
    var curT = $(_tinh).text();
    var clickV = "";
    if ($(_tinh).find("option:first-child").attr('key') == 0) {
        $.get('/danh_sach_tinh_tp', function (json) {
            string = "<option value=" + curV + ">" + curT + "</option>";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_nguyenquan_tinh").html(string);
        });
        clickV = $(_tinh).val();
    }
    if(curV != clickV)
    {
        curV = clickV;
        $.post('/danh_sach_quan_huyen', {id: $("#nhanvien_nguyenquan_tinh").val()}, function (json) {

            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_nguyenquan_huyen").html(string);
        });
    }
}

function nguyenquanhuyen(_huyen) {
    var curV = $(_huyen).val();
    var curT = $(_huyen).text();
    var clickV = "";
    if ($(_huyen).find("option:first-child").attr('key') == 0) {
        $.post('/danh_sach_quan_huyen', {id: $("#nhanvien_nguyenquan_tinh").val()}, function (json) {

            string = "<option value=" + curV + ">" + curT + "</option>";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_nguyenquan_huyen").html(string);
        });
        clickV = $(_huyen).val();
    }
    if(curV != clickV)
    {
        curV = clickV;
        $.post('/danh_sach_phuong_xa', {id: $("#nhanvien_nguyenquan_huyen").val()}, function (json) {

            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_nguyenquan_xa").html(string);
        });
    }
}


function nguyenquanxa(_xa) {
    var curV = $(_xa).val();
    var curT = $(_xa).text();
    var clickV = "";
    if ($(_xa).find("option:first-child").attr('key') == 0) {
        $.post('/danh_sach_phuong_xa', {id: $("#nhanvien_nguyenquan_huyen").val()}, function (json) {

            string = "<option value=" + curV + ">" + curT + "</option>";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_nguyenquan_xa").html(string);
        });
    }
}

function thuongtrutinh(_tinh) {
    var curV = $(_tinh).val();
    var curT = $(_tinh).text();
    var clickV = "";
    if ($(_tinh).find("option:first-child").attr('key') == 0) {
        $.get('/danh_sach_tinh_tp', function (json) {
            string = "<option value=" + curV + ">" + curT + "</option>";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_thuongtru_tinh").html(string);
        });
        clickV = $(_tinh).val();
    }
    if(curV != clickV)
    {
        curV = clickV
        $.post('/danh_sach_quan_huyen', {id: $("#nhanvien_thuongtru_tinh").val()}, function (json) {

            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_thuongtru_huyen").html(string);
        });
    }
}

function thuongtruhuyen(_huyen) {
    var curV = $(_huyen).val();
    var curT = $(_huyen).text();
    var clickV = "";
    if ($(_huyen).find("option:first-child").attr('key') == 0) {
        $.post('/danh_sach_quan_huyen', {id: $("#nhanvien_thuongtru_tinh").val()}, function (json) {

            string = "<option value=" + curV + ">" + curT + "</option>";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_thuongtru_huyen").html(string);
        });
        clickV = $(_huyen).val();
    }
    if(curV != clickV)
    {
        curV = clickV;
        $.post('/danh_sach_phuong_xa', {id: $("#nhanvien_thuongtru_huyen").val()}, function (json) {

            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_thuongtru_xa").html(string);
        });
    }
}

function thuongtruxa(_xa) {
    var curV = $(_xa).val();
    var curT = $(_xa).text();
    var clickV = "";
    if ($(_xa).find("option:first-child").attr('key') == 0) {
        $.post('/danh_sach_phuong_xa', {id: $("#nhanvien_thuongtru_huyen").val()}, function (json) {

            string = "<option value=" + curV + ">" + curT + "</option>";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_thuongtru_xa").html(string);
        });
    }
}

function tamtrutinh(_tinh) {
    var curV = $(_tinh).val();
    var curT = $(_tinh).text();
    var clickV = "";
    if ($(_tinh).find("option:first-child").attr('key') == 0) {
        $.get('/danh_sach_tinh_tp', function (json) {
            string = "<option value=" + curV + ">" + curT + "</option>";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_tamtru_tinh").html(string);
            clickV = $(_tinh).val();
        });
    }
    if (curV != clickV) {
        curV = clickV;
        $.post('/danh_sach_quan_huyen', {id: $("#nhanvien_tamtru_tinh").val()}, function (json) {

            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_tamtru_huyen").html(string);
        });
    }

}

function tamtruhuyen(_huyen) {
    var curV = $(_huyen).val();
    var curT = $(_huyen).text();
    var clickV = "";
    if ($(_huyen).find("option:first-child").attr('key') == 0) {
        $.post('/danh_sach_quan_huyen', {id: $("#nhanvien_tamtru_tinh").val()}, function (json) {

            string = "<option value=" + curV + ">" + curT + "</option>";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_tamtru_huyen").html(string);
            clickV = $(_huyen).val();
        });
    }
    if(curV != clickV){
        $.post('/danh_sach_phuong_xa', {id: $("#nhanvien_tamtru_huyen").val()}, function (json) {

            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_tamtru_xa").html(string);
        });
    }

}

function tamtruxa(_xa) {
    var curV = $(_xa).val();
    var curT = $(_xa).text();
    var clickV = "";
    if ($(_xa).find("option:first-child").attr('key') == 0) {
        $.post('/danh_sach_phuong_xa', {id: $("#nhanvien_tamtru_huyen").val()}, function (json) {

            string = "<option value=" + curV + ">" + curT + "</option>";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_tamtru_xa").html(string);
        });
    }
}

function noicapcmnd(_tinh) {
    if ($(_tinh).find("option:first-child").attr('key') == 0) {
        $.get('/danh_sach_tinh_tp', function (json) {
            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_noicapcmnd").html(string);
        });
    }
}

function nganhang(_nganhang) {
    if ($(_nganhang).find("option:first-child").attr('key') == 0) {
        $.get('/nganhang', function (json) {
            string = "";
            for (i = 0; i < json.length; i++) {
                string += "<option value='" + json[i].id + "'>" + json[i].ten + "</option>";
            }
            $("#nhanvien_nganhang").html(string);
        });
    }
}
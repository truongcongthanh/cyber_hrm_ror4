# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->

  quanhuyens_noisinh = $('#nhanvien_noisinh_huyen').html()
  $('#nhanvien_noisinh_tinh').change ->

    noisinh_tinh = $('#form-modal > #nhanvien_noisinh_tinh :selected').text()
    options = $(quanhuyens_noisinh).filter("optgroup[label='#{noisinh_tinh}']").html()
    if options
      $('#nhanvien_noisinh_huyen').html(options)
    else
      $('#nhanvien_noisinh_huyen').empty

  phuongxas_noisinh = $('#nhanvien_noisinh_xa').html()
  $('#nhanvien_noisinh_quan').change ->
    noisinh_quan = $('#form-modal > #nhanvien_noisinh_quan :selected').text()
    options = $(phuongxas_noisinh).filter("optgroup[label='#{noisinh_quan}']").html()
    if options
      $('#nhanvien_noisinh_xa').html(options)
    else
      $('#nhanvien_noisinh_xa').empty

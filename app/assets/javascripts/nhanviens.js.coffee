# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery(document).ready ->

  quanhuyens_noisinh = $("#nhanvien_noisinh_huyen").html()
  alert(quanhuyens_noisinh)
  $('#nhanvien_noisinh_tinh').change ->
    nhanvien_noisinh_tinh = $('#nhanvien_noisinh_tinh :selected').text()
    options = $(quanhuyens_noisinh).filter("value='#{nhanvien_noisinh_tinh}'").html()
    if options
      $('#nhanvien_noisinh_huyen').html(options)
    else
      $('#nhanvien_noisinh_huyen').empty
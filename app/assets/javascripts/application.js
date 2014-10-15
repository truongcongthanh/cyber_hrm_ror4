//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap.min
//= require_tree .

$(function () {
    $("#tinhthanhphos").on("click", ".pagination a", function () {
        $.getScript(this.href);
        return false;
    });
    $("#tinhthanhphos_search input").keyup(function () {
        $.get($("#tinhthanhphos_search").attr("action"), $("#tinhthanhphos_search").serialize(), null, "script");
        return false;
    });
});
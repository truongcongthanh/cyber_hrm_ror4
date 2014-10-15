//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap.min
//= require_tree .


$(function(){
    $("#tinhthanhphos").on("click",".pagination a",function()
    {
        $.getScript(this.href);
        return false;
    });
});
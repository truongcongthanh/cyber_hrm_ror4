//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap.min
//= require_tree

function show_confirm_modal(path, question) {
    $('#confirm-modal #question').text(question);
    $('#confirm-modal #delete').on("click", function () {
        $.ajax({
            async: false,
            type: "DELETE",
            url: path,
            success: function () {
                $('#confirm-modal').modal('hide');
            },
            dataType: 'script'
        });
        $('#confirm-modal').modal('hide');
    });
    $('#confirm-modal').show();
}

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


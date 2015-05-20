// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
$('#myModal').on('shown.bs.modal', function () {
    $('#myInput').focus()
})

$('form').submit(function() {
    var valuesToSubmit = $(this).serialize();
    $.ajax({
        type: "POST",
        url: $(this).attr('action'), //sumbits it to the given url of the form
        data: valuesToSubmit,
        dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
    }).success(function(json){
        console.log("success", json);
    });
    return false; // prevents normal behaviour
});

$(document).ready(function(){

    var replaceWith = $('<input name="temp" type="text" />'),
        connectWith = $('input[name="hiddenField"]');


    $.fn.inlineEdit = function(replaceWith, connectWith) {

        $(this).click(function() {
            var elem = $(this);
            var elemId = (elem.attr('id')).substr(elem.attr('id').length-1);
            console.log(elem);
            //var prevEl = $(elem+":firstChild");
            //var markId = $(elem+":firstChild");
            //alert(markId.attr('id'));
            elem.hide();
            elem.after(replaceWith);
            replaceWith.focus();

            replaceWith.blur(function() {
                connectWith.val("");
                if ($(this).val() == "") {
                    $(this).val(0);
                }
                    //connectWith.val($(this).val()).change();
                elem.text($(this).val());
                var posting = $.post( "/marks/"+elemId+"/update", { mark: elem.text()} );
                posting.done();
                $(this).val("");
                    //this.empty();
                //}

                $(this).remove();
                //connectWith.remove();
                elem.show();
            });
        });

    };
    $('span.datainfo').inlineEdit(replaceWith, connectWith);

});


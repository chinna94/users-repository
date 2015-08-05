// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .




$(".dock-item").on("click", function(){
        var x
        x=document.getElementById("demo100").value
    $.ajax({
        url : "/tweets",
        type : "post",
        data : { x: JSON.stringify(array) }
    });
        new Ajax.Request('tweeters/index',{
            method: 'get',
            parameters:{
                qt: 20
            }
        });
})


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
//= require foundation
//= require_tree .

$(function(){ $(document).foundation(); });

// $(function(){
//   if ($("h1")[1].innerHTML === "Weddings"){
//     fader.init()
//   }
// });

// var fader = {} || fader

// fader.init = function(){

//   $(".mouseover-show").each(function(i, box) {
//     $(this).hover(
//       function(){
//         $($(".parallax-mirror")[($(".parallax-window").length - i -1)]).css( "-webkit-filter", "grayscale(0%)")
//       }
//       ,
//       function(){
//         $($(".parallax-mirror")[($(".parallax-window").length - i -1)]).css( "-webkit-filter", "grayscale(50%)")
//       }
//       )
//   })


//   $(".parallax-mirror").each(function(i){
//     $(this).css("-webkit-filter", "grayscale(100%)")
//   })
// }
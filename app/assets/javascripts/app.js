$(function(){
});

var fader = fader || {}

fader.init = function(){
  
  for (i = 0; i < $(".parallax-window").length; i++){
    $(".parallax-window")[i].mouseover(
      console.log("hover found")
      // $(".parallax-mirror")[($(".parallax-window").length - i)].css( "-webkit-filter", "grayscale(0%)")
      // ,
      // $(".parallax-mirror")[($(".parallax-window").length - i)].css( "-webkit-filter", "grayscale(100%)")
      )

  };
}
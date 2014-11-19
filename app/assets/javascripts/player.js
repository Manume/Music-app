$(function(){


  


  $('.carousel .item').each(function(){
  var next = $(this).next();
  if (!next.length) {
    next = $(this).siblings(':first');
  }
  next.children(':first-child').clone().appendTo($(this));
  
  for (var i=0;i<2;i++) {
    next=next.next();
    if (!next.length) {
      next = $(this).siblings(':first');
    }
    
    next.children(':first-child').clone().appendTo($(this));
  }
});



   




//js for multiple slide carousel
 
//ends multiple slide carousel

// playlist buttons 
/* player 1: jukebox, player2:all audio, player3:video, player4:dailybread, player5:radio, player6:audio bible 
  /* myplaylist= audio juke box, myplaylist2= radio, myplaylist3= video */

$.ajax({ 
        type: 'GET',
        url:window.location ,
        dataType: "json",
        success: function(json){
           $.each(json,function(data){ 
            myPlaylist.add({title:$(this).attr("title"), artist:$(this).attr("artist"), m4a:$(this).attr("audio_url")});
             });
              }
           });




  

  


 $("#jquery_jplayer_1").bind($.jPlayer.event.setmedia, function(event) { 
  $("#jquery_jplayer_1").jPlayer("play");
    });

 

  var myPlaylist = new jPlayerPlaylist({
  jPlayer: "#jquery_jplayer_1",
  cssSelectorAncestor: "#jp_container_1"
  }, 
  [
 
  ], 
{
    playlistOptions: {
    autoPlay: false,
    loopOnPrevious: false,
    shuffleOnLoop: false,
     addTime: 'fast',
     enableRemoveControls: false

},
    supplied: "m4a,ogg,mp3",
    preload: "auto",
   solution: "html,flash",
  });

 


   $("#jplayer_inspector_1").jPlayerInspector({jPlayer:$("#jquery_jplayer_1")});
    



   
});



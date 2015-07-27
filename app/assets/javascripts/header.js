$(function(){
  var $menuOpen = $('#menu-open');
  var $menuClose = $('#menu-close');
  var $menu = $('#menu');
  
  $menuOpen.on('click', function(e){
    e.preventDefault();
    $menu.addClass('ul-open');
    $(this).toggle();
    $menuClose.toggle();
    
  });

  $menuClose.on('click', function(e){
      e.preventDefault();
      $menu.removeClass('ul-open');
      $(this).toggle();
      $menuOpen.toggle();
      
    });
});
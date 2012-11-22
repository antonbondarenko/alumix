var menuids=["tree1"];
var menu_size=7;
var menu_rsize=0;
var menu_cont = '#tree1 ';
var menu_animating=false;
var menu_delay = 300;
var menu_hover_delay = 1500;
var menu_hover_timer = 0;
var menu_i = 0;


function buildsubmenus(){
    
    if (menu_i) { $(".main .menu").show();}
    else {$(".main .menu").hide();}
    
    if (menu_i < menu_rsize-1) {$(".main .menu_down").show(); }
    else { $(".main .menu_down").hide(); }
        
    clearInterval(menu_hover_timer);
    $('.shown').hide();
    $('.shown').removeClass('shown');
    $(menu_cont + ' > li').unbind('mouseenter mouseleave');
    
    $(menu_cont + ' > li').hover(
        function(){
            
            $('.shown').hide();
            $('.shown').removeClass('shown');
            $(menu_cont + ' > li.a').removeClass('a');

            if ($('ul', this).size()) {
                $(this).addClass('a');
                var t = $('ul', this);
                t.show();
                t.addClass('shown');
                if (menu_hover_timer) clearInterval(menu_hover_timer);
                menu_hover_timer=0;        
            }
        },
        function(){
            //if ($('ul',this).size()) debugger;
            if ($('ul', this).size()) {
                menu_hover_timer = setInterval(function(){
                    //debugger;
                    $(menu_cont + ' > li.a').removeClass('a');
                    $('.shown').hide();
                    $('.shown').removeClass('shown');                
                    clearInterval(menu_hover_timer);
                    menu_hover_timer=0;
                },menu_hover_delay);
            }
        }
    );
  
  for (var i=0; i<7;i++) {
      
      var t = $(menu_cont+ ' > li').eq(i);
      var b = $('ul',t);
      b.css('top',parseInt(i*40)+'px');
  }
    
}

if (window.addEventListener)
window.addEventListener("load", buildsubmenus, false);
else if (window.attachEvent)
window.attachEvent("onload", buildsubmenus);



function menu_step(vector){
    
    if ( menu_animating || menu_rsize <= menu_size) return false;
    
    if (vector == 1) {
        menu_animating=true;
        $(menu_cont+ ' > li:first').slideUp(menu_delay,function(){
            menu_animating=false;
            menu_i++;

             $(this).clone(true).appendTo(menu_cont);
             $(menu_cont+ ' > li:last').show();
             $(this).remove();
             buildsubmenus();
        });
        
    } 
    if (vector == -1) {
        menu_animating=true;
        
         $(menu_cont+ ' > li:last').hide();
         $(menu_cont+ ' > li:last').clone(true).prependTo(menu_cont);
         $(menu_cont+ ' > li:last').remove();
         var first = $(menu_cont+ ' > li:first');
         
         first.slideDown(menu_delay,function(){
             menu_i--;
             menu_animating=false;
			 buildsubmenus();
         });
    }
}



$(document).ready(function(){
   
    menu_rsize= $('#tree1 > li').size();
   $(".menu_upper li:last").addClass('rightLi');           
  
    $(".rightContent li").hover( 
        function() { $(this).addClass("hover"); }, 
        function() { $(this).removeClass("hover"); } 
    ); 
    
    $('img.menu').click(function(){ menu_step(-1);});
    $('img.menu_down').click(function(){menu_step(1);});
	
});
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require gmaps
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require foundation
//= require_tree .
//jQuery.noConflict();
/******************************************************************************
    Open The Post Window
    The functions are similar to each other so it may be able to combine each other 
******************************************************************************/

var ready;
ready = function() {
/*
    $(".post_new").click(function(){
        var path = "new_"+'<%= controller.controller_name%>'+"_path";
        $("#window").fadeIn(1000);
        $("#popup_contents").fadeIn(1000);
        return;    
    });
    
    $(".comment_new").click(function(){
        var id = $(this).attr('id');
        $("#window").fadeIn(1000);
        $("."+id).fadeIn(1000);
        return;    
    });
    
    $(".picture").click(function(){
     var id = $(this).attr('id');
     $("#window").fadeIn(1000);
     $(".pic-"+id).fadeIn(1000);
    });
   
    $("#click").click(function(){
  	 $("#hide").fadeIn(1000);
    });
    
    $(".comp").click(function(){
    	$("#hide").fadeIn(1000);
    	$("#big-popup-contents").fadeIn(1000);
    	return;
    });
    
    $(".post").click(function(){
        $("#hide").fadeIn(1000);
        $("#new_form").fadeIn(1000);
        return;
    });

/******************************************************************************
    Smooth big div
******************************************************************************/


    $(".readmore").on('click',function(event){
        event.preventDefault();
        var $id = $(this).attr("id");
        var $target_id = "#post-"+$id; 
        var $long = ".long-"+$id;
        var $short = ".short-"+$id;
        
        jQuery($target_id).animate({marginRight: 0,width:"490px",'min-height':"250px" }, 1000);
        jQuery($target_id).addClass("extended");
        jQuery($long).fadeIn(1000);
        jQuery($long).removeClass("inactive").addClass("active");
        jQuery($short).fadeOut(100);
        jQuery($short).removeClass("active").addClass("inactive");
    });

/******************************************************************************
    Smooth small div
******************************************************************************/
    $(".return").on('click',function(event){
        event.preventDefault();
        var $id = $(this).prev().attr("id");
        var $target_id = "#post-"+$id; 
        var $long = ".long-"+$id;
        var $short = ".short-"+$id;
        jQuery($target_id).removeClass("extended");
        jQuery($short).fadeIn(350);
        jQuery($short).removeClass("inactive").addClass("active");      
        jQuery($long).fadeOut(350);
        jQuery($long).removeClass("active").addClass("inactive");
        jQuery($target_id).animate({marginRight: '15px',width:"200px",'min-height':"250px" }, 1000);

        
    });


/******************************************************************************
    Popup window for resort maps 
******************************************************************************/
    $(".popup_link").click(function(){
        $(".big_window").fadeIn(1000);
        return;
    });
/******************************************************************************
    Close The Post Window
******************************************************************************/
    $(".close").click(function(){
        $("#popup_contents").fadeOut(1000);
        $(".popup_contents_comments").fadeOut(1000);
        $(".popup-picture").fadeOut(1000);
        $("#window").fadeOut(1000);
        return;
    });
    $("#close").click(function(){
    	$("#hide").fadeOut(1000);
    	$("#big-popup-contents").fadeOut(1000);
    	return;
    });

/******************************************************************************
    End of screen 
******************************************************************************
    $(window).scroll(function() {
        if($(window).scrollTop() + $(window).height() == $(document).height())
        {   
            var $url = window.location.pathname;
            $page = parseInt(getURLParameter("page"));
            if( $page == NaN){ $page = '1'; }   
            $next_page = parseInt($page) + 1;
            $(".post-set").after("<div class='post-set-'"+$page+"'> page "+$page+" next page "+$next_page+"</div>").load("http://localhost:3000/microposts/posts?page="+$next_page);
            $(".post-set-"+$page).load("http://localhost:3000/microposts/posts?page="+$next_page);
            alert("bottom!");  
        }
    }); */

/******************************************************************************
    micropost_image tweek tool
******************************************************************************/
$('#micropost_image').addClass('file');
    
    
});// End of ready 



/********************************************************************************
  [Fixme]  Micropost thing 
********************************************************************************/
function post_id($id)
{
    var $id_tag = "'#post-"+$id+"'";
    var $id_target = "#"+$id;
    var $url = "'/microposts/"+$id+" #"+$id_tag+ "'";
    $($id_target).load($url);
                
    return;
    
}


/********************************************************************************
    Place show page : phone number tweek tool 
********************************************************************************/
    
function phone_number_tweek($phone_number)
{

    var $area_code = 'Null';
    var $three_degits = 'Null';
    var $last_four = 'Null';
    var $new_phone_number_str = "(";
    var counter=0;
    $phone_number = $phone_number.toString();
    for(counter;counter<3;counter++)
    {
        if($area_code == 'Null')
        {  $area_code = $phone_number.charAt(counter);    }
        else
        {   $area_code += $phone_number.charAt(counter);    }
    }
    $new_phone_number_str += $area_code;
    $new_phone_number_str += ") ";
    
    for(counter;counter<6;counter++)
    {
        if($three_degits == 'Null')
        {  $three_degits = $phone_number.charAt(counter);    }
        else
        {   $three_degits += $phone_number.charAt(counter); }
    }
    $new_phone_number_str += $three_degits;
    $new_phone_number_str += "-";
    
    for(counter;counter<10;counter++)
    {
        if($last_four == 'Null')
        {  $last_four = $phone_number.charAt(counter);    }
        else
        {   $last_four += $phone_number.charAt(counter);    }
    }
    $new_phone_number_str += $last_four;
    
    $(".phone").append($new_phone_number_str);
    return;
};
    

/********************************Phone	**********************************************
    Dragable Contents Box
******************************************************************************/

$(function() {
		$( ".ui-draggable" ).draggable();
	});

/******************************************************************************
    Boolean function 
        return 
******************************************************************************/
function bool(s,id){
    if( s == true)
    {    $("#"+id).append('O').addClass("green");   return; }
    else
    {   $("#"+id).append('X').addClass("red");     return;  }
    
};



/******************************************************************************
    Get URL params
******************************************************************************/
function getURLParameter(name) {
    return decodeURI(
        (RegExp(name + '=' + '(.+?)(&|$)').exec(location.search)||[,null])[1]
    );
}


$(document).ready(ready);
$(document).on('page:load', ready);

function Scroll(){
var top = document.getElementById('purch');
var ypos = window.pageYOffset;
	if(ypos < 160) {
		top.style.top = "-54px";
	}
	else{
		top.style.top = "46px";
	}
}
window.addEventListener("scroll",Scroll);

jQuery(function($) {
  function fixDiv() {
    var $cache = $('#ads_left');
    if ($(window).scrollTop() > 170)
      $cache.css({
        'position': 'fixed',
        'top': '10px'
      });
    else
      $cache.css({
        'position': 'none',
        'top': 'auto'
      });
  }
  $(window).scroll(fixDiv);
  fixDiv();
  ////////
  $(".pImg").click(function(){
    var src = $(this).attr("src");
    $(".p_image img").attr("src",src);
  });
  ///////// qte controle ////////
  $(".qteM").click(function(){
    var qte = $("#qte").val();
    qte--;
    if(qte<=0) qte=1;
    $("#qte").val(qte);
  });
  $(".qteP").click(function(){
    var qte = $("#qte").val();
    qte++;
	var nbStock = $("#nbStock").val();
    if(qte>nbStock) qte=nbStock;
    $("#qte").val(qte);
  });
});
$(document).ready(function(){
    $('.tooltipped').tooltip({delay: 50});
});
$(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal').modal();
});
$(document).ready(function() {
    $('select').material_select();
});

$(document).ready(function() {
	$("#pannierqte").bind('keyup keydown mouseup click input', function () {
		var stk = $("#hiddennbstock").val();
	    var userstk = $("#pannierqte").val();
		if(userstk>stk){
			$("#pannierqte").val(stk);
		}
	});
});

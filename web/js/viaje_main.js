$(document).ready(function(){
        $('div.toggle a:first').addClass('activ');
	$('.formulario form').hide();
	$('.formulario form:first').show();

	$('div.toggle a').click(function(){
		$('div.toggle a').removeClass('activ');
		$(this).addClass('activ');
		$('.formulario form').hide();

		var activeTab = $(this).attr('href');
		$(activeTab).show();
		return false;
	});
});
$(document).ready(function(){
	$('ul.tabs li a:first').addClass('active');
	$('.secciones article').hide();
	$('.secciones article:first').show();

	$('ul.tabs li a').click(function(){
		$('ul.tabs li a').removeClass('active');
		$(this).addClass('active');
		$('.secciones article').hide();

		var activeTab = $(this).attr('href');
		$(activeTab).show();
		return false;
	});
});



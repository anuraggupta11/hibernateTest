$( document ).ready(function() {
	$.validate({
		  borderColorOnError : 'red',
		  modules : 'security',
		  onModulesLoaded : function() {
		    

		    $('input[name="pass"]').displayPasswordStrength();
		  }
		});
	$('.login-submit').unbind().click(function (){
		$(this).parent().parent().find('form').submit()
	});
});
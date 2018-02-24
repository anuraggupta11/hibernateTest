$(document).ready(function() {
	
	$('.wizard').each(function(){
		
		attachCustomWizardEvent($(this));
		$(this).find('.step').each(function (){
			attachEnableDisableEvent($(this));
			var steps = $(this).attr('data-step');
			if(steps == 1){
				$(this).show();
			}else{
				$(this).hide();

			}
		});
		
		
		
		$('.wizard_previous').prop('disabled', true);
		$('.wizard_previous').unbind().click(function(){
			handlePreviousStep($(this));			
		});
		$('.wizard_next').unbind().click(function(){
			handleNextStep($(this));
		});
		$(this).attr('current-step',1);
		fillProgressBar($(this));
	});
	
});



function fillProgressBar(wizard){
	var total_step = $(wizard).find('form').find('.step').length;
	for(var i =0; i <total_step; i ++ ){
		var myclass = "gray-progress-bg";
		if(i == 0 ){
			myclass = "bg-success";
		}
		
		$(wizard).find('.progress').append('  <div class="progress-bar '+myclass+'" role="progressbar" style="width: '+
				(100/parseInt(total_step))+'%'
				+'" aria-valuenow="'+
				(100/parseInt(total_step))
				+'" aria-valuemin="0" aria-valuemax="100"></div>');

	}
	
	
}



function attachCustomWizardEvent(wizard){
	$(wizard).on( "formchangeEvent", function( event, isvalidate, formelement ) {
	    console.log( event ); // "bar"
	    console.log( isvalidate );           // "bim"
	    console.log( formelement );           // "baz"
	    var step_div = $(formelement).parent().closest('.step');
	    var isvalid = true;
	     $(step_div).find('.form-group').each(function(){
	    	if($(this).hasClass('has-danger') || !$(this).hasClass('has-success')){
	    		isvalid= false;
	    	}
	    	
	    });
	    if(isvalid){
			 $(step_div).attr('data-validation',true);
			 
		 }else{
			 $(step_div).attr('data-validation',false);
			
			 
		 }
	    
		$(step_div).trigger( "stepelementchange",[step_div]);

		
	    //if they are valid then set data attr data-validation true
	});
}

function attachEnableDisableEvent(step){
	$(step).on( "stepelementchange", function( event, step_div ) {
		var flag =  $(step_div).attr('data-validation')
		if(flag === "true"){
	    	$(step_div).parent().parent().find('.wizard_next').prop('disabled',false);

		}else{
	    	$(step_div).parent().parent().find('.wizard_next').prop('disabled',true);

		}
	});
}

function handleNextStep(button){
	var current_step = $(button).parent().parent().attr('current-step');
	$(button).parent().find('.step').each(function () {
		var step_no = $(this).attr('data-step');
		if(parseInt(current_step) === parseInt(step_no)){
			var validation = $(this).attr('data-validation');
			if(validation === "true"){
				$('.wizard_previous').prop('disabled', false);
				goToNext($(button));
			}
		}
	});
	
	log('next');
}

function goToNext(button){
	var current_step =parseInt( $(button).parent().parent().attr('current-step'));
	log('my current_step '+current_step);
	var total_count =$(button).parent().find('.step').length;
	if(current_step+1 <= total_count ){
		$(button).parent().find('.step').each(function () {
			var step_no = parseInt($(this).attr('data-step'));
			if(current_step+1 == step_no){
				$(this).show();
				$(button).parent().parent().attr('current-step',current_step+1);
				$(button).parent().parent().find('.progress').find('.progress-bar').each(function(index){
					if(index === current_step){
						$(this).removeClass('gray-progress-bg').removeClass('bg-info').addClass('bg-success');
					}else{
						if(index < current_step)
						$(this).removeClass('bg-success').removeClass('gray-progress-bg').addClass('bg-info');
						else
							$(this).removeClass('bg-success').removeClass('bg-info').addClass('gray-progress-bg');

					}
				})
				
				
				
			}else{
				$(this).hide();

			}
			
		});
	}
	
	
	
	
	
}


function handlePreviousStep(button){
	var current_step =parseInt( $(button).parent().parent().attr('current-step'));
	var total_count =$(button).parent().find('.step').length;
	if(current_step-1 > 0  ){
		$(button).parent().find('.step').each(function () {
			var step_no = parseInt($(this).attr('data-step'));
			if(current_step-1 == step_no){
				$(this).show();
				$(button).parent().parent().attr('current-step',current_step-1);
				$(button).parent().parent().find('.progress').find('.progress-bar').each(function(index){
					if(index+1 === current_step-1){
						$(this).removeClass('gray-progress-bg').removeClass('bg-info').addClass('bg-success');

					}else{
						if(index+1 >= current_step)
						$(this).removeClass('bg-success').removeClass('bg-info').addClass('gray-progress-bg');
						else{
							$(this).removeClass('gray-progress-bg').removeClass('bg-success').addClass('bg-info');

						}

					}
				})
				
				
				
			}else{
				$(this).hide();

			}
			
		});
	}
}

function log(msg){
	console.log(msg);
}
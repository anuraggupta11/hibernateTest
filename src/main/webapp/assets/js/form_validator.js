$(document).ready(function() {

	$('.form_validator').each(function (){
		
		var form = $(this)[0];

	     $.each(form.elements,function(index, formelement) {
	     	
	     	onChangeFormelement(formelement);
	     
	     });
	     
	     $(this).find('.formsubmit').unbind().click(function(){
	    	 formsubmit($(this));
	     });
	});

});


function formsubmit(button){
	log('sss'+button);
	 var form = button.parent()[0];
	 
	 var isFormValid =true;
	 $.each(form.elements,function(index, formelement) {
		 log(formelement.type);
		 var flag = validate(formelement);
			if(flag){
				addSucessClass(formelement);
			}else{
				addErrorClass(formelement);
				if(isFormValid)
				$(formelement).focus();

				isFormValid=false;
			}
		 
			
	     });
	 if(isFormValid){
		 if($(form).attr('data-ajax')){
			 var url = $(form).attr('action');

			


			 $.post( url,  {data:JSON.stringify(getFormData($(form)))},function( data ) {
				  alert( "Data Loaded: " + data );
				});
		 }else{
			 form.submit(); 
		 }
		 
	 }
}



function formvalueCheck(formelement){
	
	switch(formelement.value){
	case "":
		addErrorClass(formelement);
		break;
		
	default:
		
	}
	
}

function onChangeFormelement(formelement){
	
	if(formelement.type!=="select-one" && formelement.type!=="file" && formelement.type!=="button" ){
	
	$(formelement).unbind().keyup(function() {	
		var flag = validate(formelement);
		try{
			$(formelement).trigger( "formchangeEvent",[flag,$(formelement)]);
			}catch(e){}
		if(flag){
			addSucessClass(formelement);
		}else{
			addErrorClass(formelement);
		}
	});
	}else{
		if(formelement.type!=="button" ){
			$(formelement).unbind().change(function (){
				var flag = validate(formelement);
				if(flag){
					addSucessClass(formelement);
				}else{
					addErrorClass(formelement);
				}
				try{
					$(formelement).trigger( "formchangeEvent",[flag,$(formelement)]);
					}catch(e){}
			});
		}
	}
}


function validate(formelement){
	
	var val= formelement.value;
	var min_length = 0;
	
	if($(formelement).attr('data-min-length')){
		min_length = $(formelement).attr('data-min-length')
	}
	
	
	
	switch(formelement.type){
	case "email":
		var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		return filter.test(formelement.value) && formelement.value.length> min_length ;
	case "password":	
		return formelement.value.length> min_length ;
	case "textarea":
	case "text":
		return formelement.value.length> min_length ;
	case "number":
		return formelement.value.length> 0 ;
	case "datetime-local":
		var reg = /^(0?[1-9]|1[012])(:[0-5]\d) [APap][mM]$/;
		return reg.test(formelement.value) ;
	case "select-one":
		return formelement.options.selectedIndex > 0 ;
	case "radio":
	case "file":
		if(formelement.type === "file"){
			getBase64($(formelement)[0].files[0]);
		}
		
		return formelement.value !== undefined &&  formelement.value !== "" ;
	case "hidden":
		return true;
		
	default:
		return true;
	}
}




function addErrorClass(formelement){
	
	$(formelement).removeClass('form-control-success');
	$(formelement).parent().removeClass('has-success');
	$(formelement).addClass('form-control-danger');
	$(formelement).parent().addClass('has-danger');
	var error_message=$(formelement).attr('data-error-msg');
	if(!error_message){
		
		error_message =$(formelement).attr('name')+" is required";
		if($(formelement).attr('data-min-length')){
			error_message += ' with minimum of '+$(formelement).attr('data-min-length')+' characters';
		}

	}
	var error_label = '<div class="form-control-feedback">'+error_message+'</div>';
	$(formelement).parent().find('.form-control-feedback').remove();
	$(formelement).after($(error_label));
}

function addSucessClass(formelement){
	$(formelement).removeClass('form-control-danger');
	$(formelement).parent().removeClass('has-danger');
	$(formelement).addClass('form-control-success');
	$(formelement).parent().addClass('has-success');
	$(formelement).parent().find('.form-control-feedback').remove();
	
}

function log(message){
	console.log(message);
}



function getBase64(file) {
	var filename = file.name;
	log('file name '+filename);
	   var reader = new FileReader();
	   reader.readAsDataURL(file);
	   reader.onload = function () {
	     $('#file_content').val(encodeURI(reader.result));
	     $('#file_content').attr('name',filename+'_file');
	   };
	   reader.onerror = function (error) {
	     console.log('Error: ', error);
	   };
	}


function getFormData($form){
	   var unindexed_array = $form.serializeArray();
	   var indexed_array = {};

	   $.map(unindexed_array, function(n, i){
	       indexed_array[n['name']] = n['value'];
	   });

	   return indexed_array;
	}
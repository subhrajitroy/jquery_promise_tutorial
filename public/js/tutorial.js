(function($){

	
	$('document').ready(function(){

		$("#clickMe").click(function(){
			$.when($.ajax({ 
				url : "/journeys"
				
			})).then(function(data,textStatus,xhr){
				log(data);
			},
			function(data,textStatus,xhr){
				log(data.status)
			},
			function(data,textStatus,xhr){
				log("In Progress")
			})

		});
	});

	function log(message){
		$("#journeys").text(message);
	}

})(jQuery);
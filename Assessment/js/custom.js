			$(function(){
				$("ul.nav").superfish({
					animation:{
					height: "show",
					width: "show"
					}, speed : 500
				});
                $("ul.nav").bind('click', function () {
                    $('ul.nav').hideSuperfishUl();
                });	
				//tooltip
				$(".tooltip").easyTooltip();
		
				// Check all the checkboxes when the head one is selected:
				$('.checkall').click(
					function(){
						$(this).parent().parent().parent().parent().find("input[type='checkbox']").attr('checked', $(this).is(':checked'));   
					}
				);

				$(".close").click(
					function () {
						$(this).fadeTo(400, 0, function () { // Links with the class "close" will close parent
							$(this).slideUp(400);
						});
					return false;
					}
				);

				
				//sortable, portlets
				$(".column").sortable({
					connectWith: '.column'
				});
				
				$(".sort").sortable({
					connectWith: '.sort'
				});
				

				$(".portlet").addClass("ui-widget ui-widget-content ui-helper-clearfix ui-corner-all")
				.find(".portlet-header")
				.addClass("ui-widget-header ui-corner-all")
				.prepend('<span class="ui-icon ui-icon-circle-arrow-s"></span>')
				.end()
				.find(".portlet-content");

				$(".portlet-header .ui-icon").click(function() {
					$(this).toggleClass("ui-icon-minusthick");
					$(this).parents(".portlet:first").find(".portlet-content").toggle();
				});

				$(".column").disableSelection();
				
				
			
				// Accordion
				$("#accordion").accordion({ header: "h3" });
	
				// Tabs
				$('#tabs').tabs();
	
				// Dialog			
				$('#dialog').dialog({
					autoOpen: false,
					width: 500,
					buttons: {
						"Ok": function() { 
							$(this).dialog("close"); 
						}, 
						"Cancel": function() { 
							$(this).dialog("close"); 
						} 
					}
				});
				
				// Dialog			
				$('#dialogS').dialog({
					autoOpen: false,
					width: 500,
					buttons: {
						"No": function() { 
						    var strNo="tempNo";
                            document.getElementById("Hidden1").value=strNo;
    						$(this).dialog("close"); 
						}, 
						"Yes": function() { 
						    var strYes="tempYes";
                            document.getElementById("Hidden1").value=strYes;
							$(this).dialog("close"); 	
						} 
					}

			});
				
				// Dialog Link
				$('#dialog_link').click(function(){
					$('#dialog').dialog('open');
					return false;
				});

				// Dialog Link
				$('#dialogS_link').click(function(){
					$('#dialogS').dialog('open');
					return false;
				});

				// Datepicker
				$('#datepicker').datepicker({
					inline: true,
                    changeMonth: true,
                    changeYear: true,
                    yearRange: "1900:2022"
				});
				// Datepicker1
				$('#datepicker1').datepicker({
				    inline: true,
				    changeMonth: true,
				    changeYear: true,
				    yearRange: "1900:2022"
				});
					// Datepicker2
				$('#datepicker2').datepicker({
				    inline: true,
				    changeMonth: true,
				    changeYear: true,
				    yearRange: "1900:2022"
				});
				// Datepicker3
				$('#datepicker3').datepicker({
				    inline: true,
				    changeMonth: true,
				    changeYear: true,
				    yearRange: "1900:2022"
				});
					// Datepicker4
				$('#datepicker4').datepicker({
				    inline: true,
				    changeMonth: true,
				    changeYear: true,
				    yearRange: "1900:2022"
				});
					// Datepicker5
				$('#datepicker5').datepicker({
				    inline: true,
				    changeMonth: true,
				    changeYear: true,
				    yearRange: "1900:2022"
				});
					// Datepicker6
				$('#datepicker6').datepicker({
				    inline: true,
				    changeMonth: true,
				    changeYear: true,
				    yearRange: "1900:2022"
				});
					// Datepicker7
				$('#datepicker7').datepicker({
				    inline: true,
				    changeMonth: true,
				    changeYear: true,
				    yearRange: "1900:2022"
				});
				
				// Slider
				$('#slider').slider({
					range: true,
					values: [20, 70]
				});
				
				// Progressbar
				$("#progressbar").progressbar({
					value: 40 
				});
				
				//hover states on the static widgets
				$('#dialog_link, ul#icons li').hover(
					function() { $(this).addClass('ui-state-hover'); }, 
					function() { $(this).removeClass('ui-state-hover'); }
				);
		
				$('textarea.wysiwyg').wysiwyg({
  				  controls: {
    				 strikeThrough : { visible : true },
    				 underline     : { visible : true },
      
   					 separator00 : { visible : true },
      
     				 justifyLeft   : { visible : true },
      				 justifyCenter : { visible : true },
     				 justifyRight  : { visible : true },
     				 justifyFull   : { visible : true },
      
 				     separator01 : { visible : true },
      
   				     indent  : { visible : true },
				    outdent : { visible : true },
      
     				 separator02 : { visible : true },
      
    				  subscript   : { visible : true },
    				  superscript : { visible : true },
      
   					   separator03 : { visible : true },
  	    
  					    undo : { visible : true },
   					   redo : { visible : true },
      
    				  separator04 : { visible : true },
      
     				 insertOrderedList    : { visible : true },
    				  insertUnorderedList  : { visible : true },
    				  insertHorizontalRule : { visible : true },
      
    				  h4mozilla : { visible : true && $.browser.mozilla, className : 'h4', command : 'heading', arguments : ['h4'], tags : ['h4'], tooltip : "Header 4" },
     				 h5mozilla : { visible : true && $.browser.mozilla, className : 'h5', command : 'heading', arguments : ['h5'], tags : ['h5'], tooltip : "Header 5" },
     				 h6mozilla : { visible : true && $.browser.mozilla, className : 'h6', command : 'heading', arguments : ['h6'], tags : ['h6'], tooltip : "Header 6" },
      
     				 h4 : { visible : true && !( $.browser.mozilla ), className : 'h4', command : 'formatBlock', arguments : ['<H4>'], tags : ['h4'], tooltip : "Header 4" },
     				 h5 : { visible : true && !( $.browser.mozilla ), className : 'h5', command : 'formatBlock', arguments : ['<H5>'], tags : ['h5'], tooltip : "Header 5" },
   					   h6 : { visible : true && !( $.browser.mozilla ), className : 'h6', command : 'formatBlock', arguments : ['<H6>'], tags : ['h6'], tooltip : "Header 6" },
      
   					   separator07 : { visible : true },
      
     				 cut   : { visible : true },
     				 copy  : { visible : true },
     				 paste : { visible : true }
   					 }
  				});


			});

(function($) {

	$.extend($.fn, {
		getForm : function (options) {
			if ( !this.length ) {
				return;
			}
			form = new $.form(options, this);
			return form;
		}
	});

	$.form = function (options, form) {
		this.options = $.extend(true, {}, $.form.defaults, options);
		this.currentForm = form;
		this.init();
	};

	$.extend($.form, {
		defaults : {
			inputOnClass : 'input_on',
			inputWrongClass : 'input_wrong',
			
			messageWrongClass : 'emph_notice',
			messageInfoClass : 'emph_pass',
			
			placeHolderImageClass : "", 
			
			onLabelClass : "lab_g", 
			outLabelClass : "screen_out",

            onFocusClass : "ico_focused",
			
			validationCheckPoint : "blur",
			
			validator: {},
			
			getElementForShowError : function (element) {
				return $(element).parent().parent();
			},
			
			getElementLabel : function (element) {
				return $(element).prev("label");
			},
			
			getElementErrorNotice : function (element) {
				return $(element).parent().parent().parent().find("p.desc_add");
			},
			
			getElementDimmedLayer : function () {
				return $(".dimmed_layer, .bg_dimmed");
			},
			
			getElementAllLayer : function () {
				return $(".userinfo_layer, .user_layer");
			},
			
			getElementViewPassword : function (element) {
				return $('input:text', element.parent().parent());
            },

            getElementGuideMessage : function (id) {
            }
		},

		methods : {
            showWebFocus : function (input) {
                input.next().children('span').first().addClass(this.options.onFocusClass);
            },
            hideWebFocus : function (input) {
                input.next().children('span').first().first().removeClass(this.options.onFocusClass);
            },
			showPlaceHolder : function (input, label) {
				if (this.options.placeHolderImageClass !== "" ) {
					input.addClass(this.options.placeHolderImageClass);
				}
				else {
					label.addClass(this.options.onLabelClass);
					label.removeClass(this.options.outLabelClass);
				}
			},
			
			hidePlaceHolder : function (input, label) {
				if (this.options.placeHolderImageClass !== "" ) {
					input.removeClass(this.options.placeHolderImageClass);
				} else {
					label.removeClass(this.options.onLabelClass);
					label.addClass(this.options.outLabelClass);
				}
			},
			
			initRow : function (row, notice) {
				row.removeClass(this.options.inputWrongClass);
				notice.html("").hide();
			},
			
			inputOn : function (row) {
				if(!row.hasClass(this.options.inputWrongClass)) {
					row.addClass(this.options.inputOnClass);
			    }
			},
			
			inputOff : function (row) {
				row.removeClass(this.options.inputOnClass);
			},
			
			inputWrong : function (row) {
				row.addClass(this.options.inputWrongClass);
			},
			
			showWrongMessage : function (notice, message) {
				notice.removeClass(this.options.messageInfoClass).addClass(this.options.messageWrongClass).html(message).show();
			},
			
			showInfoMessage : function (notice, message) {
				notice.removeClass(this.options.messageWrongClass).addClass(this.options.messageInfoClass).html(message).show();
			},
            showGuideMessage : function (notice, message) {
                notice.removeClass('').removeClass(this.options.messageWrongClass).html(message).show();
            },
			
			showRadioRow : function (value) {
				var form = this;
				var radioElement = $("input[type=radio][value="+value+"]");
				var radioRow = radioElement.parent().parent();
			  	
				radioElement.attr("checked", true);
				
				$('ul.list_certify > li').removeClass("on");
				radioRow.addClass("on");
				
				var rows = $('ul.list_certify > li').not(radioRow);
				rows.each(function () {
					var input = $('input[type=text], input[type=tel]', this);
					var row = form.options.getElementForShowError(input);
					var label = form.options.getElementLabel(input);
					var notice = form.options.getElementErrorNotice(input);
					var delButton = $(".btn_del", row);
					
					input.val("");
					delButton.hide();
					$.form.methods.initRow.call(form, row, notice);
					$.form.methods.showPlaceHolder.call(form, input, label);
				});
			}
		},
		
		prototype : {
			init : function () {
			},
			resetForm : function (selector) {
				var form = this;
				var options = this.options;
				var rows = $(selector, this.currentForm);
				
				rows.each(function () {
					var inputs = $('input[type=text], input[type=password]', $(this));
					inputs.each(function () {
						var input = $(this);
						var label = options.getElementLabel(input);
						var row = options.getElementForShowError(input);
						var notice = options.getElementErrorNotice(input);
						
						input.val("");
						input.blur();
						$.form.methods.initRow.call(form, row, notice);
						$.form.methods.showPlaceHolder.call(form, input, label);
					});
				});
			},
			initWebRow : function (selector) {
				var form = this;
				var options = this.options;
				var rows = $(selector, this.currentForm);
					
				rows.each(function () {
					var inputs = $('input[type=text], input[type=password]', $(this));
					
					inputs.each(function () {
						var input = $(this);
						var label = options.getElementLabel(input);
						var row = options.getElementForShowError(input);
						var notice = options.getElementErrorNotice(input);

						if (typeof input.val() !== "undefined" && $.trim(input.val()) !== "") {
							$.form.methods.hidePlaceHolder.call(form, input, label);
						} else {
							$.form.methods.showPlaceHolder.call(form, input, label);
						}
						
						input.focus(function () {
							$.form.methods.inputOn.call(form, row);
							$.form.methods.hidePlaceHolder.call(form, input, label);
						}).blur(function () {
							$.form.methods.inputOff.call(form, row);
							if (typeof input.val() !== "undefined" && $.trim(input.val()) === "") {
								input.val("");
								$.form.methods.showPlaceHolder.call(form, input, label);
							}
						}).keyup(function (event) {
							if (event.which == 13) {
								return true;
							} else { // 입력중에는 이벤트를 초기화한다.
                                if(typeof options.getElementGuideMessage(input[0].id) !== "undefined") {
                                    $.form.methods.initRow.call(form, row, notice);
                                    $.form.methods.inputOn.call(form, row);
                                    var message = options.getElementGuideMessage(input[0].id);
                                    $.form.methods.showGuideMessage.call(form, notice, message);
                                } else {
                                    $.form.methods.initRow.call(form, row, notice);
                                    $.form.methods.inputOn.call(form, row);
                                }
							}
						});
					});
				});
			},
            initTabFocusWeb : function(selecter) {
                var form = this;
                var rows = $(selecter, this.currentForm);
                rows.each(function () {
                    var inputs = $('input[type=radio], input[type=checkbox]', $(this));

                    inputs.each(function() {
                        var input = $(this);
                        input.focusin(function() {
                            try{
                                $.form.methods.showWebFocus.call(form, input);
                            }catch (error) {}
                        }).focusout(function(){
                            try{
                                $.form.methods.hideWebFocus.call(form, input);
                            }catch (error) {}
                        });

                        if (input.attr("type") === "radio") {
                            input.click(function(){
                                try {
                                    $.form.methods.hideWebFocus.call(form, input);
                                } catch (error) {}
                            }).keyup(function(){
                                try {
                                    form.methods.showWebFocus(form, input);
                                } catch (error) {}
                            });
                        }
                    })
                });
            },
            initMobileWebRow : function (selector) {
                var form = this;
                var options = this.options;
                var rows = $(selector, this.currentForm);

                rows.each(function () {
                    var inputs = $('input[type=text], input[type=password], input[type=tel]', $(this));

                    inputs.each(function () {
                        var input = $(this);
                        var label = options.getElementLabel(input);
                        var row = options.getElementForShowError(input);
                        var notice = options.getElementErrorNotice(input);
                        var delButton = $(".btn_del", row);

                        if (typeof input.val() !== "undefined" && $.trim(input.val()) !== "") {
                            $.form.methods.hidePlaceHolder.call(form, input, label);
                        } else {
                            $.form.methods.showPlaceHolder.call(form, input, label);
                        }
                        if(input.val()){
                            delButton.show();
                        }
                        input.focus(function () {
                            $.form.methods.inputOn.call(form, row);
                            $.form.methods.hidePlaceHolder.call(form, input, label);
                            if(input.val()) {
                                delButton.show();
                            } else {
                                delButton.hide();
                            }
                        }).blur(function () {
                            $.form.methods.inputOff.call(form, row);
                            if (typeof input.val() !== "undefined" && $.trim(input.val()) === "") {
                                input.val("");
                                $.form.methods.showPlaceHolder.call(form, input, label);
                                delButton.hide();
                            }
                        }).keyup(function (event) {
                            if (event.which == 13) {
                                return true;
                            } else { // 입력중에는 이벤트를 초기화한다.
                                if(typeof options.getElementGuideMessage(input[0].id) !== "undefined") {
                                    $.form.methods.initRow.call(form, row, notice);
                                    $.form.methods.inputOn.call(form, row);
                                    var message = options.getElementGuideMessage(input[0].id);
                                    $.form.methods.showGuideMessage.call(form, notice, message);
                                } else {
                                    $.form.methods.initRow.call(form, row, notice);
                                    $.form.methods.inputOn.call(form, row);
                                }
                            }
                            
                            if (input.val()) {
                                delButton.show();
                            } else {
                                delButton.hide();
                            }
                        });

                        if(delButton) {
                            delButton.mousedown(function(event) {
                                input.val("");
                                input.trigger("focus");
                                $.form.methods.initRow.call(form, row, notice);
                                $.form.methods.inputOn.call(form, row);
                                event.preventDefault();
                            });
                        }
                    });
                });
            },
	
			initWebRadioRow : function (selector) {
				var form = this;
				$("input[type=radio]", selector).change(function() {
					$.form.methods.showRadioRow.call(form, $(this).val());
				});
				
				var checkedValue = $("input[type=radio]:checked", selector).val();
				if (typeof checkedValue !== "undefined" && $.trim(checkedValue) !== "") {
					$.form.methods.showRadioRow.call(this, checkedValue);
				}				
			},

			
			showError : function (fieldId, message) {
				var input = $("#"+fieldId);
				var row = this.options.getElementForShowError(input);
				var label = this.options.getElementLabel(input);
				var notice = this.options.getElementErrorNotice(input);
				
				$.form.methods.inputWrong.call(this, row);
				$.form.methods.showWrongMessage.call(this, notice, message);
				
				if (typeof input.val() !== "undefined" && $.trim(input.val()) !== "") {
					$.form.methods.hidePlaceHolder.call(this, input, label);
				}
			},

			showInfo : function (fieldId, message) {
				var input = $("#"+fieldId);
				var notice = this.options.getElementErrorNotice(input);
				$.form.methods.showInfoMessage.call(this, notice, message);
				
			},
			
			showRadioRow : function (fieldValue) {
				$.form.methods.showRadioRow.call(this, fieldValue);
			},
			
			showLayer : function (layerId, message) {
				var dimmedLayer = this.options.getElementDimmedLayer();
				var allLayer = this.options.getElementAllLayer();
				var targetLayer = $("#"+layerId);
				
				if (typeof message !== "undefined" && $.trim(message) !== "") {
					$(".tit_layer",targetLayer).html(message);
				}
					
				dimmedLayer.show();
				allLayer.hide();
				targetLayer.show();
				$(".btn_ok, .btn_send").focus();
				$(window).scrollTop(0);
			},
			
			hideLayer : function (layerId) {
				var dimmedLayer = this.options.getElementDimmedLayer();
				var targetLayer = $("#"+layerId);
				
				targetLayer.hide();
				dimmedLayer.hide();
			},
			
			hideAllLayer : function () {
				var dimmedLayer = this.options.getElementDimmedLayer();
				var allLayer = this.options.getElementAllLayer();
				allLayer.hide();
				dimmedLayer.hide();
			},
			
			showPassword : function (passwordDivSelector, textDivSelector) {
				var passwordDiv =  $(passwordDivSelector);
				var textDiv =  $(textDivSelector);
				var textInput =  $('input[type=text]', textDiv);
				var textLabel =  this.options.getElementLabel(textInput);
				
				if (typeof textInput.val() !== "undefined" && $.trim(textInput.val()) !== "") {
					$.form.methods.hidePlaceHolder.call(this, textInput, textLabel);
				} else {
					$.form.methods.showPlaceHolder.call(this, textInput, textLabel);
				}
				passwordDiv.hide();
				textDiv.show();
			},
			
			hidePassword : function (passwordDivSelector, textDivSelector) {
				var textDiv =  $(textDivSelector);
				var passwordDiv =  $(passwordDivSelector);
				var passwordInput =  $('input[type=password]', passwordDiv);
				var passwordLabel =  this.options.getElementLabel(passwordInput);
				
				if (typeof passwordInput.val() !== "undefined" && $.trim(passwordInput.val()) !== "") {
					$.form.methods.hidePlaceHolder.call(this, passwordInput, passwordLabel);
				} else {
					$.form.methods.showPlaceHolder.call(this, passwordInput, passwordLabel);
				}
				textDiv.hide();
				passwordDiv.show();
			},
			
			bindPasswordEvent : function (passwordId) {
				var passwordInput =  $("#"+passwordId);
				var textInput =  this.options.getElementViewPassword(passwordInput);
				
				passwordInput.keyup( function (event) {
					var pw_val = $(this).val();
					textInput.val(pw_val);
				});
			
				textInput.keyup( function (event) {
					var textpw_val = $(this).val();
					passwordInput.val(textpw_val);
				});
			},
            bindingRadioChangeEvent : function (radioName) {
                $("[type=radio]").keydown(function(event) {
                    if(event.which == 37 || event.which == 38) {
                        var checkedRadio = $('input:radio[name="'+radioName+'"]:checked');
                        checkedRadio.next().children('span').first().first().removeClass('ico_focused');
                        var idx = $('input:radio[name="'+radioName+'"]').index(checkedRadio);
                        var prevIdx = idx-1;
                        if(prevIdx>=0) {
                            $('input:radio[name='+radioName+']:eq('+prevIdx+')').prop('checked', true);
                            $('input:radio[name='+radioName+']:eq('+prevIdx+')').change();
                        }
                        event.preventDefault();
                    } else if (event.which == 39 || event.which == 40) {
                        var checkedRadio = $('input:radio[name="'+radioName+'"]:checked');
                        checkedRadio.next().children('span').first().first().removeClass('ico_focused');
                        var idx = $('input:radio[name="'+radioName+'"]').index(checkedRadio);
                        var prevIdx = idx+1;
                        $('input:radio[name='+radioName+']:eq('+prevIdx+')').prop('checked', true);
                        $('input:radio[name='+radioName+']:eq('+prevIdx+')').change();
                        event.preventDefault();
                    }
                })
            },
			
			bindCheckBoxEvent : function () {
				var checkBox = $("input[type='checkbox']");
				
				checkBox.change( function () {
					var checkBoxRow = $("span, div").has($(this));
					var isChecked = $(this).is(":checked");
					if(isChecked) {
						checkBoxRow.addClass("check_on");
					} else {
						checkBoxRow.removeClass("check_on");
					}
				});
			},
			
			checkCheckbox : function(selector) {
				var checkBoxElement = $(selector);
				var checkBoxRow = $("span, div").has(checkBoxElement);
			  	
				checkBoxElement.attr("checked", true);
				checkBoxRow.addClass("check_on");
			},
			
			isStrongPassword : function(value) {
			    var hasCapital = 0;
				var hasSmall = 0;
				var hasDigit = 0;
				var hasSpecial = 0;
			    
			    if(value.length > 8) {
			    	for(var i=0; i<value.length; i++) {
			    		if(/[A-Z]/.test(value.substring(i, i+1))) {
			    			hasCapital = 1;
			    		} else if(/[a-z]/.test(value.substring(i, i+1))) {
			    			hasSmall = 1;
			    		} else if (/\d/.test(value.substring(i, i+1))) {
			    			hasDigit = 1;
			    		} else {
			    			hasSpecial = 1;
			    		}
			    		if((hasCapital+hasSmall+hasDigit+hasSpecial) == 3) {
			    			return true;
			    		}
			    	}
				}
				return false;
			}
		}
	});
	
}(jQuery));
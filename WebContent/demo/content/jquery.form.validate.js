(function($) {
	
	$.extend($.fn, {
		validate: function(options) {
			if ( !this.length ) {
				return;
			}
	
			var validator = $.data( this[0], "validator" );
			if ( validator ) {
				return validator;
			}
	
			validator = new $.validator( options, this[0] );
			$.data( this[0], "validator", validator );
			
			return validator;
		},
		
		rules: function() {
			var element = this[0];

			var data = $.validator.normalizeRules(
			$.extend(
				{},
				$.validator.staticRules(element)
			), element);

			// make sure required is at front
			if ( data.required ) {
				var param = data.required;
				delete data.required;
				data = $.extend({required: param}, data);
			}

			return data;
		},
		
		type: function() {
			var element = this[0];
			var data = $.validator.staticType(element);
			
			return data;
		}
	
	});

	$.validator = function( options, form ) {
		this.settings = $.extend( true, {}, $.validator.defaults, options );
		
		this.currentForm = form;
		this.init();
	};

	$.validator.format = function( source, params ) {
		if ( arguments.length === 1 ) {
			return function() {
				var args = $.makeArray(arguments);
				args.unshift(source);
				return $.validator.format.apply( this, args );
			};
		}
		if ( arguments.length > 2 && params.constructor !== Array  ) {
			params = $.makeArray(arguments).slice(1);
		}
		if ( params.constructor !== Array ) {
			params = [ params ];
		}
		$.each(params, function( i, n ) {
			source = source.replace( new RegExp("\\{" + i + "\\}", "g"), function() {
				return n;
			});
		});
		return source;
	};
	
	$.extend($.validator, {
		defaults: {
			messages: {},
			rules: {}
		},
		
		messages: {
			required: "내용을 입력해 주세요.",
			email: "이메일 주소를 정확하게 입력해 주세요.",
			findemail: "이메일 주소를 정확하게 입력해 주세요.",
			url: "URL를 정확하게 입력해 주세요.",
			date: "날짜를 정확하게 입력해 주세요.",
			dateISO: "날짜를 정확하게 입력해 주세요.",
			number: "숫자를 정확하게 입력해 주세요.",
			mobile: "잘못된 휴대폰 번호 입니다. 휴대폰 번호를 확인한 다음 다시 입력해 주세요.",
			passwordinvalid: "비밀번호는 영문 소문자,숫자,특수문자만 입력해 주세요!",
			nameinvalid: "사용할 수 없는 이름입니다. 다시 입력해 주세요.",
			koreannamelength: "한글 이름은 2~15자 까지 입력 가능해요.",
			englishnamelength: "영문 이름은 2~30자 까지 입력 가능해요.",
			daumidinvalid: "3~15자의 영문 소문자와 숫자, 빼기(-), 밑줄(_), 마침표(.)만 사용할 수 있습니다. (단, .은 처음과 끝에 사용불가, 숫자만 사용불가)",
            checkjuminnoformat:"개인정보(주민등록번호) 형태를 포함한 아이디는 사용할 수 없습니다.",
			existdaumidinvalid: "Daum 아이디를 정확히 입력해 주세요.",
			digits: "숫자만 입력 가능해요.",
			minlength: $.validator.format("{0}자 이상 입력해주세요."),
			maxlength: $.validator.format("{0}자 까지 입력 가능해요."),
			rangelength: $.validator.format("{0}~{1}자 까지 입력 가능해요."),
			min: $.validator.format("{0}자 이상 입력해주세요."),
			max: $.validator.format("{0}자 까지 입력 가능해요."),
			range: $.validator.format("{0}~{1}자 까지 입력 가능해요."),
			equalTo: "같은 값을 입력 해주세요.",
			notUpperCase: "대문자는 입력할 수 없습니다.",
			daumemailinvalid: "Daum 메일(@daum.net,@hanmail.net)은 사용할 수 없어요.", 
			daumemailnotsame: "지금 로그인한 다음메일은 입력할 수 없어요. 다른 이메일 주소를 입력해 주세요." ,
            birthyearlimit: "1900-2014 입력해 주세요.",
            birthyear: "년도는 숫자만 입력해 주세요.",
            telephone: "잘못된 유선전화 번호 입니다. 유선전화 번호를 확인한 다음 다시 입력해 주세요.",
            daumemailnotsameByValue : "지금 로그인한 다음메일은 입력할 수 없어요. 다른 이메일 주소를 입력해 주세요.",
            daumnameinvalid : "닉네임은 한글, 영문, 숫자 또는 '-', '_' 를 이용해 주세요.",
            othermail: "잘못된 이메일 주소 입니다. 이메일 주소를 확인한 다음 다시 입력해 주세요.",
            numberdaumnamelength :"닉네임은 한글 1~15자, 영문 2~30자까지 가능해요.",
            daumnamekoreannamelength : "닉네임은 한글 1~15자, 영문 2~30자까지 가능해요.",
            daumnameenglishnamelength : "닉네임은 한글 1~15자, 영문 2~30자까지 가능해요.",
            regnum : "사업자 등록번호가 잘못되었습니다.",
            contact: "휴대폰 또는 이메일 주소를 다시 확인해 주세요.",
            whitespace : "공백이 포함되어 있습니다.",
            onlydigits : "숫자만 입력 되어있습니다.",
            consecutive : "유추하기 쉬운 비밀번호는 사용할 수 없어요!",
            isasciiprintable : "영문자,숫자,특수문자만 비밀번호에 입력해 주세요!"
		},
		
		methods: {
			// http://docs.jquery.com/Plugins/Validation/Methods/required
			required: function( value, element, param ) {
				// check if dependency is met
				if ( !this.depend(param, element) ) {
					return "dependency-mismatch";
				}
				if ( element.nodeName.toLowerCase() === "select" ) {
					// could be an array for select-multiple or a string, both are fine this way
					var val = $(element).val();
					return val && val.length > 0;
				}
				if ( this.checkable(element) ) {
					return this.getLength(value, element) > 0;
				}
				return $.trim(value).length > 0;
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/email
			email: function( value, element ) {
				// contributed by Scott Gonzalez: http://projects.scottsplayground.com/email_address_validation/
				if(!$.validator.methods.maxlength.call( this, value, element, 100)) {
					return false;
				}
				
				return this.optional(element) || /^([a-z0-9._-]+)@([a-z0-9_-]+)(\.[a-z0-9]+){1,2}$/.test(value);
			},
			// http://docs.jquery.com/Plugins/Validation/Methods/email
			findemail: function( value, element ) {
				// contributed by Scott Gonzalez: http://projects.scottsplayground.com/email_address_validation/
				if(!$.validator.methods.maxlength.call( this, value, element, 100)) {
					return false;
				}
				
				return this.optional(element) || /^([a-z0-9.+_-]+)@([a-z0-9_-]+)(\.[a-z0-9]+){1,}$/.test(value);
			},
			othermail: function( value, element ) {
                // contributed by Scott Gonzalez: http://projects.scottsplayground.com/email_address_validation/
                if(!$.validator.methods.maxlength.call( this, value, element, 100)) {
                    return false;
                }

                return this.optional(element) || /^([a-z0-9.+_-]+)@([a-z0-9_-]+)(\.[a-z0-9]+){1,2}$/.test(value);
            },

			// http://docs.jquery.com/Plugins/Validation/Methods/url
			url: function( value, element ) {
				// contributed by Scott Gonzalez: http://projects.scottsplayground.com/iri/
				return this.optional(element) || /^(https?|s?ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i.test(value);
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/date
			date: function( value, element ) {
				return this.optional(element) || !/Invalid|NaN/.test(new Date(value).toString());
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/dateISO
			dateISO: function( value, element ) {
				return this.optional(element) || /^\d{4}\d{1,2}[\/\-]\d{1,2}$/.test(value);
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/number
			number: function( value, element ) {
				return this.optional(element) || /^-?(?:\d+|\d{1,3}(?:,\d{3})+)?(?:\.\d+)?$/.test(value);
			},
			
			mobile: function( value, element ) {
				return this.optional(element) || /^01([0|1|6|7|8|9])[-]?([0-9]{3,4})[-]?([0-9]{4})$/.test(value);
			},
			
			passwordinvalid: function( value, element ) {
				return this.optional(element) || /^[^ㄱ-ㅎ|ㅏ-ㅣ|가-힣]+$/.test(value);
			},
			
			nameinvalid: function( value, element ) {
				return this.optional(element) || /(^[A-Za-z\s]+$)|(^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]+$)/.test(value);
			},

            daumnamekoreannamelength: function( value, element ) {
				var isKorean = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]+$/.test(value);
				var length = $.isArray( value ) ? value.length : this.getLength($.trim(value), element);
				
				if(isKorean) {
					return this.optional(element) || (length >= 1 && length <= 15);
				}
				return true;
			},

            daumnameenglishnamelength: function( value, element ) {
				var isEnglish = /^[A-Za-z\s]+$/.test(value);
				var length = $.isArray( value ) ? value.length : this.getLength($.trim(value), element);
				
				if(isEnglish) {
					return this.optional(element) || (length >= 2 && length <= 30);
				}
				return true;
			},
            koreannamelength: function( value, element ) {
                var isKorean = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]+$/.test(value);
                var length = $.isArray( value ) ? value.length : this.getLength($.trim(value), element);

                if(isKorean) {
                    return this.optional(element) || (length >= 2 && length <= 15);
                }
                return true;
            },

            englishnamelength: function( value, element ) {
                var isEnglish = /^[A-Za-z\s]+$/.test(value);
                var length = $.isArray( value ) ? value.length : this.getLength($.trim(value), element);

                if(isEnglish) {
                    return this.optional(element) || (length >= 2 && length <= 30);
                }
                return true;
            },
			
			daumidinvalid: function( value, element ) {
				var isValidDaumId = (/^([a-z0-9-_])([a-z0-9-_\.]+)([a-z0-9-_])$/.test(value));
				var isValidDaumIdChars = /^.*[a-z-_\.]+.*$/.test(value); // check allowed characters (does not allow only numeric input)
				
				return this.optional(element) || (isValidDaumId && isValidDaumIdChars);
			},

            checkjuminnoformat: function ( value, element) {
                var checkNum = [2,3,4,5,6,7,8,9,2,3,4,5];

                var ssn = value.replace(/[^0-9]/g,'');

                if (ssn.length != 13) {
                    return true;
                }

                var buf = new Array(13);

                for (var i = 0; i < 13; i++) {
                    buf[i] = parseInt(ssn.charAt(i));
                }

                for (var sum = 0, i = 0; i < 12; i++) {
                    sum += (buf[i] *= checkNum[i]);
                }

                if ((11 - (sum % 11)) % 10 == buf[12]) {
                    return false;
                }

                return true;

            },
			existdaumidinvalid: function( value, element ) {
				var isValidDaumId = (/^([a-z0-9-_])([a-z0-9-_\.]+)([a-z0-9-_])$/.test(value));
				return this.optional(element) || (isValidDaumId);
			},
			
			// http://docs.jquery.com/Plugins/Validation/Methods/digits
			digits: function( value, element ) {
				return this.optional(element) || /^\d+$/.test(value);
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/minlength
			minlength: function( value, element, param ) {
				var length = $.isArray( value ) ? value.length : this.getLength($.trim(value), element);
				return this.optional(element) || length >= param;
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/maxlength
			maxlength: function( value, element, param ) {
				var length = $.isArray( value ) ? value.length : this.getLength($.trim(value), element);
				return this.optional(element) || length <= param;
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/rangelength
			rangelength: function( value, element, param ) {
				var length = $.isArray( value ) ? value.length : this.getLength($.trim(value), element);
				return this.optional(element) || ( length >= param[0] && length <= param[1] );
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/min
			min: function( value, element, param ) {
				return this.optional(element) || value >= param;
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/max
			max: function( value, element, param ) {
				return this.optional(element) || value <= param;
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/range
			range: function( value, element, param ) {
				return this.optional(element) || ( value >= param[0] && value <= param[1] );
			},

			// http://docs.jquery.com/Plugins/Validation/Methods/equalTo
			equalTo: function( value, element, param ) {
				// bind to the blur event of the target in order to revalidate whenever the target field is updated
				// TODO find a way to bind the event just once, avoiding the unbind-rebind overhead
				var target = $(param);
				if ( this.settings.onfocusout ) {
					target.unbind(".validate-equalTo").bind("blur.validate-equalTo", function() {
						$(element).valid();
					});
				}
				return value === target.val();
			},
			
			notUpperCase: function( value, element ) {
				return this.optional(element) || /^[^A-Z]*$/.test(value);
			}, 
			
			daumemailinvalid: function( value, element ) {
				var valueArray = value.split("@");
				var isValid = true;
				if(valueArray[1]){
					if(valueArray[1].toLowerCase().indexOf("hanmail.net") != -1 || valueArray[1].toLowerCase().indexOf("daum.net") != -1) {
						isValid = false;
					} 
				}
				return this.optional(element) || isValid;
			}, 
			
			daumemailnotsame: function( value, element, param) {
				if(!$.validator.methods.daumemailinvalid.call( this, value, element)) {
					var target = $('#' + param);
					var valueArray = value.split("@");
					if(valueArray[1]){
						return !(valueArray[0].toLowerCase() === target.val());
					}
				}
				
				return true;
			},

            birthyearlimit: function(value) {
                var currentYear = new Date().getFullYear();
                if(value !== "") {
                    if(value < 1900 || value > currentYear) {
                        return false;
                    }
                }
                return true;
            },
            birthyear: function(value, element) {
                if(value !== "") {
                    return this.optional(element) || /^\d+$/.test(value);
                }
                return true;
            },
            telephone: function( value, element ) {
                return this.optional(element) || /^(02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/.test(value);
            },
            daumemailnotsameByValue : function( value, element, param) {
                if(!$.validator.methods.daumemailinvalid.call( this, value, element)) {
                    var valueArray = value.split("@");
                    if(valueArray[1]){
                        return !(valueArray[0].toLowerCase() === param);
                    }
                }
                return true;
            },
            daumnameinvalid : function(value, element) {
                return this.optional(element) || /^[a-zA-Z0-9가-힣\s_-]*$/.test(value);
            },
            numberdaumnamelength: function( value, element ) {
                var isEnglish = /^[0-9-_\s]+$/.test(value);
                var length = $.isArray( value ) ? value.length : this.getLength($.trim(value), element);

                if(isEnglish) {
                    return this.optional(element) || (length > 1 && length <= 30);
                }
                return true;
            },
            regnum: function( value, element ) {
                return this.optional(element) || /^\d{3}-?\d{2}-?\d{5}$/.test(value);
            	
            },
            contact: function( value, element ) {
				return this.optional(element) || /^([a-z0-9.+_-]+)@([a-z0-9_-]+)(\.[a-z0-9]+){1,}$/.test(value) || /^01([0|1|6|7|8|9])[-]?([0-9]{3,4})[-]?([0-9]{4})$/.test(value);
			},
            whitespace: function( value, element ) {
                return this.optional(element) || /^\S+$/.test(value);
            },
            onlydigits: function( value, element ) {
				return this.optional(element) || !/^\d+$/.test(value);
			},
			consecutive: function( value, element ) {
				var alpaBig= "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			    var alpaSmall= "abcdefghijklmnopqrstuvwxyz";
			    
			    for(var i=0; i<alpaBig.length - value.length+1; i++){
			        if(alpaBig.substring(i,i+value.length) == value)
			        	return this.optional(element) || false;
			    }
				
			    for(i=0; i<alpaSmall.length - value.length+1; i++) {
			        if(alpaSmall.substring(i,i+value.length) == value)
			        	return this.optional(element) || false;
			    }
			    
			    for(i=1; i<value.length; i++){
			        if(value.substring(0,1) != value.substring(i,i+1) )
			        	return this.optional(element) || true;
			    }
			    
			    return this.optional(element) || false;
			}, isasciiprintable: function( value, element ) {
				var sz = value.length;
		        for (var i=0; i<sz; i++) {
		        	var code = value.charCodeAt(i);
		            if (!(code>=32 && code<127)) {
		            	return this.optional(element) || false;
		            }
		        }
		        return this.optional(element) || true;
		        
			}
		},

		prototype: {
			init: function() {
				this.reset();
				
				var rules = this.settings.rules;
				$.each(rules, function( key, value ) {
					rules[key] = $.validator.normalizeRule(value);
				});
			},
			
			form: function() {
				this.reset();
				
				elements = (this.currentElements = this.getElements());
				
				for(var i=0; elements[i]; i++) {
					this.hideError(elements[i]);
					this.checkElement(elements[i]);
				}
				
				this.showErrors();
				
				if(this.errorList.length !== 0) {
					$("#"+this.errorList[0].element.id).focus();
				    return false;
				}
				return true;
			},
			
			element: function(elementId) {
				this.reset();
				
				elements = (this.currentElements = this.getElements());
				
				for(var i=0; elements[i]; i++) {
					if(elements[i].id == elementId) {
						this.hideError(elements[i]);
						this.checkElement(elements[i]);
						
					}
				}
				
				this.showErrors();
				
				if(this.errorList.length !== 0) {
				  return false;
				}
				return true;
			},
			
			getFormErrorList: function() {
				this.reset();
				elements = (this.currentElements = this.getElements());
				for(var i=0; elements[i]; i++) {
					this.checkElement(elements[i]);
				}
				
				return this.errorList;
			},
			
			getElementErrorList: function(selector) {
				this.reset();
				elements = (this.currentElements = this.getElementsBySelector(selector));
				for(var i=0; elements[i]; i++) {
					this.checkElement(elements[i]);
				}
				return this.errorList;
			},
			
			initElementError: function(elementId) {
				elements = (this.currentElements = this.getElements());
				
				for(var i=0; elements[i]; i++) {
					if(elements[i].id == elementId) {
						this.hideError(elements[i]);
					}
				}
			},
			
			showElementError: function(elementId, errorMessage) {
				elements = (this.currentElements = this.getElements());
				
				for(var i=0; elements[i]; i++) {
					if(elements[i].id == elementId) {
						this.showError(elements[i], errorMessage);
					}
				}
			},
			
			showElementInfo: function(elementId, infoMessage) {
				elements = (this.currentElements = this.getElements());
				
				for(var i=0; elements[i]; i++) {
					if(elements[i].id == elementId) {
						this.showInfo(elements[i], infoMessage);
					}
				}
			},
			
			showErrors: function() {
				for(var i=0; this.errorList[i]; i++) {
					var error = this.errorList[i];
					if(error.type === "alert") {
						$("#"+error.element.id+"_input_info").addClass("input_wrong").removeClass("input_ok");
						alert(error.message);
						return;
					}
					this.showError(error.element, error.message);
				}
			},
			
			showError: function(element, message) {
				//input text case
				//input checkbox case
				if((element.id === "policyAgree" || element.id === "privacyAgree") && element.type === "checkbox") {
					var notice = $("#agree_notice");
					notice.html(message);
					notice.show();
				} else {
					//1. notice tag view
					//<p class="emph_notice">번호를 정확하게 입력해 주세요.</p>
					var notice = $("#"+element.id+"_notice");
					
					
					if(element.id === "password") {
						//notice.removeClass("emph_allow ico_allow").addClass("emph_notice ico_wrong");
						
						notice.removeClass("emph_allow");
						//유선웹정보수정
						notice.removeClass("emph_pass");
					}
					
					notice.html(message);
					notice.show();
					
					//2. class add
					//<div class="bg_user input_info">
					$("#"+element.id+"_input_info").addClass("input_wrong").removeClass("input_ok");
				}
			},
			
			showInfo: function(element, message) {
				var notice = $("#"+element.id+"_notice");
				
				if(element.id === "password") {
					//notice.removeClass("emph_notice ico_wrong").addClass("emph_allow ico_allow");
					notice.addClass("emph_allow");
					//유선웹정보수정
					notice.addClass("emph_pass");
				}
				
				notice.html(message);
				notice.show();
				
				$("#"+element.id+"_input_info").addClass("input_ok").removeClass("input_wrong");
			},
			
			hideError: function(element) {
				//input text case
				//input checkbox case
				if((element.id === "policyAgree" || element.id === "privacyAgree") && element.type === "checkbox") {
					var notice = $("#agree_notice");
					notice.html("");
					notice.hide();
				} else {
					var notice = $("#"+element.id+"_notice");
					
					//password info pass
					if((element.id === "password") && notice.hasClass("emph_allow")) {
						return;
					}
					//1. notice tag view
					//<p class="emph_notice">번호를 정확하게 입력해 주세요.</p>
					notice.html("");
					notice.hide();
					
					//2. class add
					//<div class="bg_user input_info">
					$("#"+element.id+"_input_info").removeClass("input_wrong");
					
					$(".lab_g").filter($("[for="+element.id+"]")).hide();
				}
			},
			
			checkElement: function(element) {
				var rules = $(element).rules();
				var type = $(element).type();
				var val = this.elementValue(element);
				var result;
				
				for (var method in rules ) {
					var rule = { method: method, parameters: rules[method] };
					try {
						result = $.validator.methods[method].call( this, val, element, rule.parameters );
						
						if ( !result ) {
							this.formatAndAdd( type, element, rule );
							return false;
						}
					} catch(e) {
						throw e;
					}
				}
				
				return true;
			},
			
			customMessage: function( name, method ) {
				var m = this.settings.messages[name];
				return m && (m.constructor === String ? m : m[method]);
			},

			findDefined: function() {
				for(var i = 0; i < arguments.length; i++) {
					if ( arguments[i] !== undefined ) {
						return arguments[i];
					}
				}
				return undefined;
			},

			defaultMessage: function( element, method ) {
				return this.findDefined(
					this.customMessage( element.name, method ),
					// title is never undefined, so handle empty string as undefined
					!this.settings.ignoreTitle && element.title || undefined,
					$.validator.messages[method],
					"<strong>Warning: No message defined for " + element.name + "</strong>"
				);
			},
			
			formatAndAdd: function( type, element, rule ) {
				var message = this.defaultMessage( element, rule.method ),
					theregex = /\$?\{(\d+)\}/g;
				if (theregex.test(message)) {
					message = $.validator.format(message.replace(theregex, "{$1}"), rule.parameters);
				}
				this.errorList.push({
					type: type,
					message: message,
					element: element
				});
			},
			
			elementValue: function( element ) {
				var type = $(element).attr("type"),
					val = $(element).val();

				if ( type === "radio" || type === "checkbox" ) {
					return $("input[name='" + $(element).attr("name") + "']:checked").val();
				}

				if ( typeof val === "string" ) {
					return val.replace(/\r/g, "");
				}
				return val;
			},
			
			getElements: function() {
				return $(this.currentForm)
				.find("input, select, textarea")
				.not(":submit, :reset, :image")
				.not( this.settings.ignore);
			},
			
			getElementsBySelector: function(selector) {
				return $(this.currentForm)
				.find(selector)
				.not(":submit, :reset, :image")
				.not( this.settings.ignore);
			},
			
			
			checkable: function( element ) {
				return (/radio|checkbox/i).test(element.type);
			},
			
			findByName: function( name ) {
				return $(this.currentForm).find("[name='" + name + "']");
			},
			
			getLength: function( value, element ) {
				switch( element.nodeName.toLowerCase() ) {
				case "select":
					return $("option:selected", element).length;
				case "input":
					if ( this.checkable( element) ) {
						return this.findByName(element.name).filter(":checked").length;
					}
				}
				return value.length;
			},
			
			depend: function( param, element ) {
				return this.dependTypes[typeof param] ? this.dependTypes[typeof param](param, element) : true;
			},

			dependTypes: {
				"boolean": function( param, element ) {
					return param;
				},
				"string": function( param, element ) {
					return !!$(param, element.form).length;
				},
				"function": function( param, element ) {
					return param(element);
				}
			},
			
			optional: function( element ) {
				var val = this.elementValue(element);
				return !$.validator.methods.required.call(this, val, element) && "dependency-mismatch";
			},
			
			reset: function() {
				this.successList = [];
				this.errorList = [];
				this.errorMap = {};
				this.toShow = $([]);
				this.toHide = $([]);
				this.currentElements = $([]);
			}
		},
		
		staticRules: function( element ) {
			var rules = {};
			var validator = $.data(element.form, "validator");
			if ( validator.settings.rules ) {
				rules = $.validator.normalizeRule(validator.settings.rules[element.name]) || {};
			}
			return rules;
		},
		
		staticType: function( element ) {
			var type = "";
			var validator = $.data(element.form, "validator");
			if(validator.settings.types) {
				type = validator.settings.types[element.name] || "";
			}
			return type;
		},
		
		normalizeRules: function( rules, element ) {
			// handle dependency check
			$.each(rules, function( prop, val ) {
				// ignore rule when param is explicitly false, eg. required:false
				if ( val === false ) {
					delete rules[prop];
					return;
				}
				if ( val.param || val.depends ) {
					var keepRule = true;
					switch (typeof val.depends) {
					case "string":
						keepRule = !!$(val.depends, element.form).length;
						break;
					case "function":
						keepRule = val.depends.call(element, element);
						break;
					}
					if ( keepRule ) {
						rules[prop] = val.param !== undefined ? val.param : true;
					} else {
						delete rules[prop];
					}
				}
			});

			// evaluate parameters
			$.each(rules, function( rule, parameter ) {
				rules[rule] = $.isFunction(parameter) ? parameter(element) : parameter;
			});

			// clean number parameters
			$.each(['minlength', 'maxlength'], function() {
				if ( rules[this] ) {
					rules[this] = Number(rules[this]);
				}
			});
			$.each(['rangelength', 'range'], function() {
				var parts;
				if ( rules[this] ) {
					if ( $.isArray(rules[this]) ) {
						rules[this] = [Number(rules[this][0]), Number(rules[this][1])];
					} else if ( typeof rules[this] === "string" ) {
						parts = rules[this].split(/[\s,]+/);
						rules[this] = [Number(parts[0]), Number(parts[1])];
					}
				}
			});

			if ( $.validator.autoCreateRanges ) {
				// auto-create ranges
				if ( rules.min && rules.max ) {
					rules.range = [rules.min, rules.max];
					delete rules.min;
					delete rules.max;
				}
				if ( rules.minlength && rules.maxlength ) {
					rules.rangelength = [rules.minlength, rules.maxlength];
					delete rules.minlength;
					delete rules.maxlength;
				}
			}

			return rules;
		},
		
		normalizeRule: function( data ) {
			if ( typeof data === "string" ) {
				var transformed = {};
				$.each(data.split(/\s/), function() {
					transformed[this] = true;
				});
				data = transformed;
			}
			return data;
		}
		
	});

	$.format = $.validator.format;

}(jQuery));

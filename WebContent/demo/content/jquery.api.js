(function($) {
	$.api = function(options) {};
	
	$.extend($.api, {
      apis : {
        checkDuplicationLoginId: {
          uri: "/api/check/member",
          type: "POST",
          dataType: "json",
          async: false
        },
        verifyMember: {
          uri: "/api/verify/member",
          type: "POST",
          dataType: "json",
          async: false
        },
        checkAuthCodeSendAble: {
          uri: "/api/auth/check.do",
          type: "POST",
          dataType: "json",
          async: false
        },
        sendAuthCode: {
          uri: "/api/auth/send.do",
          type: "POST",
          dataType: "json",
          async: false
        },
        collateAuthCode: {
          uri: "/api/auth/collate.do",
          type: "POST",
          dataType: "json",
          async: false
        },
        checkPasswordLevel: {
          uri: "/api/check/password",
          type: "POST",
          dataType: "json",
          async: false
        },
        checkMemberPasswordLevel: {
          uri: "/api/check/password/member",
          type: "POST",
          dataType: "json",
          async: false
        },
        recommendDaumId: {
          uri: "/api/get/recommend/daumid",
          type: "POST",
          dataType: "json",
          async: false
        },
        sendSessionInfo: {
          uri: "/api/auth/sendsessioninfo.do",
          type: "POST",
          dataType: "json",
          async: false
        },
        verifyCaptcha: {
          uri: "/api/verify/captcha",
          type: "POST",
          dataType: "json",
          async: false
        },
        refreshCaptcha: {
          uri: "/api/refresh/captcha",
          type: "POST",
          dataType: "json",
          async: false
        },
        changeTypeCaptcha: {
          uri: "/api/change/captcha/type",
          type: "POST",
          dataType: "json",
          async: false
        },
        getSoundCaptchaDownloadUrl: {
          uri: "/api/get/captcha/downloadurl",
          type: "POST",
          dataType: "json",
          async: false
        },
        checkValidLoginId: {
        	uri: "/api/auth/validloginid.do",
        	type: "POST",
        	dataType : "json",
        	async: false
        },
        sendAuthCodeForTwoStepVerification: {
        	uri: "/api/auth/sendfortsv.do",
        	type: "POST",
        	dataType: "json",
        	async: false
        },
        issueApplicationPassword: {
        	// TODO dicman URL 변경해야 함
        	uri: "/security/twostepverification.daum?action=issue-application-password",
        	type: "POST",
        	dataType: "json",
        	async: false
        },
        deleteApplicationPassword: {
        	// TODO dicman URL 변경해야 함
        	uri: "/security/twostepverification.daum?action=delete-application-password",
        	type: "POST",
        	dataType: "json",
        	async: false
        },
        checkVerifySession: {
        	uri: "/api/verify/pageid",
        	type: "POST",
        	dataType: "json",
        	async: false
        },
        checkMobileCount: {
            uri: "/api/check/mobile",
            type: "POST",
            dataType: "json",
            async: false
        },
        removeExternalApps: {
        	uri: "/api/remove/app",
        	type: "POST",
        	dataType: "json",
        	async: false
        },
        resendAuthCodeFindPassword: {
        	uri: "/api/auth/findpassword/resend.do",
        	type: "POST",
        	dataType: "json",
        	async: false
        },
        resendAuthCodeDormancy: {
        	uri: "/api/auth/dormancy/resend.do",
        	type: "POST",
        	dataType: "json",
        	async: false
        },
        resendAuthCodeFindId: {
            uri: "/api/auth/findid/resend.do",
            type: "POST",
            dataType: "json",
            async: false
        },
        resendAuthCodeBlock: {
          uri: "/api/auth/block/resend.do",
          type: "POST",
          dataType: "json",
          async: false
        },
        checkChangePassword: {
        	// TODO ryan URL 변경해야 함
            uri: "/change/password.daum?action=validation",
            type: "POST",
            dataType: "json",
            async: false
        },
        sendAuthCodeChangeMobile: {
            uri: "/change/mobile.daum?action=send-auth-code",
            type: "POST",
            dataType: "json",
            async: false
        },
        verifyAuthCodeChangeMobile: {
          uri: "/change/mobile.daum?action=verify-auth-code",
          type: "POST",
          dataType: "json",
          async: false
        },
        sendAuthCodeChangeEmail: {
          uri: "/change/email.daum?action=send-auth-code",
          type: "POST",
          dataType: "json",
          async: false
        },
        verifyAuthCodeChangeEmail: {
          uri: "/change/email.daum?action=verify-auth-code",
          type: "POST",
          dataType: "json",
          async: false
        },
        verifyAuthCodeChangeMobileForMobile: {
          uri: "/m/change/mobile.daum?action=verify-auth-code",
          type: "POST",
          dataType: "json",
          async: false
        },
        verifyAuthCodeChangeEmailForMobile: {
          uri: "/m/change/email.daum?action=verify-auth-code",
          type: "POST",
          dataType: "json",
          async: false
        },
        resendAuthCodeChangeMobile: {
          uri: "/m/change/mobile.daum?action=resend-auth-code",
          type: "POST",
          dataType: "json",
          async: false
        },
        resendAuthCodeChangeEmail: {
          uri: "/m/change/email.daum?action=resend-auth-code",
          type: "POST",
          dataType: "json",
          async: false
        },
        sendAuthCodeRemoveTelephoneMobile: {
              uri: "/campaign/remove/telephone.daum?action=mobile-send-auth-code",
              type: "POST",
              dataType: "json",
              async: false
          },
        verifyAuthCodeRemoveTelephoneMobile: {
              uri: "/campaign/remove/telephone.daum?action=mobile-verify-auth-code",
              type: "POST",
              dataType: "json",
              async: false
          },
        sendAuthCodeRemoveTelephoneEmail: {
              uri: "/campaign/remove/telephone.daum?action=email-send-auth-code",
              type: "POST",
              dataType: "json",
              async: false
        },
        verifyAuthCodeRemoveTelephoneEmail: {
              uri: "/campaign/remove/telephone.daum?action=email-verify-auth-code",
              type: "POST",
              dataType: "json",
              async: false
        },
        checkValidContact: {
              uri: "/api/auth/valid/contact.do",
              type: "POST",
              dataType : "json",
              async: false
        },
        sendAuthCodeRemoveTelephoneMobileForMobile: {
          uri: "/m/campaign/remove/telephone.daum?action=mobile-send-auth-code",
          type: "POST",
          dataType: "json",
          async: false
          },
        verifyAuthCodeRemoveTelephoneMobileForMobile: {
          uri: "/m/campaign/remove/telephone.daum?action=mobile-verify-auth-code",
          type: "POST",
          dataType: "json",
          async: false
        },
          sendAuthCodeRemoveTelephoneEmailForMobile: {
              uri: "/m/campaign/remove/telephone.daum?action=email-send-auth-code",
              type: "POST",
              dataType: "json",
              async: false
          },
          verifyAuthCodeRemoveTelephoneEmailForMobile: {
              uri: "/m/campaign/remove/telephone.daum?action=email-verify-auth-code",
              type: "POST",
              dataType: "json",
              async: false
          }
      },
      
      defaultParams: {
        checkDuplicationLoginId: {},
          checkValidContact: {},
        checkChangePassword: {},
        verifyMember: {},
        checkAuthCodeSendAble: {
            authType: "phone",
            serviceType: "join"
        }, 
        sendAuthCode: {
          authType: "phone",
          serviceType: "join"
        }, 
        collateAuthCode: {},
        checkPasswordLevel: {},
        checkMemberPasswordLevel: {},
        recommendDaumId: {},
        sendSessionInfo: {
          authType : "phone",
          serviceType : "findpw"
        },
        verifyCaptcha: {},
        refreshCaptcha: {},
        changeTypeCaptcha: {},
        getSoundCaptchaDownloadUrl: {},
        checkValidLoginId: {
        	serviceType : "modify"
        }
      },
      
      call: function(method, param) {
    	var api = $.api.apis[method];
   	    var apiParam = $.extend({}, $.api.defaultParams[method], param);
        
   	    $.ajaxSetup({
          url: api.uri,
          type: api.type,
          acync: api.async,
          headers: {
            "platform": $.api.getPlatform()
          }
        });
        
        return $.ajax({data: apiParam})
        .pipe(function(data) {
          data.showError = true;
	  	  if(data.code === 200) {
	  	    return data;      
	  	  }
	  	  
	  	  data.errorMessage = messages.default_error;
	  	  if(data.code === 403) {
            data.errorMessage = messages.forbidden_error;
            if(data.message === "ABUSE") {
              data.errorMessage = messages.abouse_error;
            } 
	  		data.showError = false;//layer case
  	      } else if(data.code === 500) {
  	    	data.errorMessage = messages.system_error;
  	      }
  	      return $.Deferred().reject(data);
	    });
      },
      
      getPlatform: function() {
    	var pathname = $(location).attr('pathname');
    	var platform = "pc";
    	
    	if(pathname.indexOf("/m/") == 0) {
    	  platform = "mobile";
    	} else if(pathname.indexOf("/app/") == 0) {
    	  platform = "app";  
    	} 
    	
    	return platform;
      }
      
    });
}(jQuery));


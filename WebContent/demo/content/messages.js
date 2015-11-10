 var messages = {
	join_phone: {
		duplication_id: "은 이미 사용 중인 폰번호 아이디입니다.\n새로 가입하시겠습니까? \n\n폰번호 아이디는 동일 번호로 1개만 가입할 수 있습니다."
	},
	join_email: {
		duplication_id: "입력하신 이메일 주소로 더 이상 가입할 수 없어요. 다른 이메일 주소를 입력해 주세요."
	},
	
	loginid_phone: {
		duplication_id: "은 이미 사용 중인 폰번호 아이디입니다.\n새로 등록하시겠습니까?\n폰번호 아이디는 동일번호로 1개만 등록할 수 있습니다."
	},
	
	loginid_email: {
		empty: "이메일 주소를 입력해 주세요.",
		duplication_id: "이미 사용 중인 이메일 아이디입니다",
		using_id: "기존의 등록된 이메일 아이디입니다."		
	},
	
	tag_pw_notice: "<span class=\"img_g ico_help\"></span>",
	tag_pw_success_head: "<span class=\"txt_allow\">",
    tag_pw_success_end: "</span>",
	
    not_joinphone: "해외에서는 폰번호로 가입이 불가능합니다. 개인회원 가입을 원하면, 이메일로 가입해 주세요.",
    duplication_daum_id: "탈퇴한 아이디이거나 이미 사용중인 아이디입니다. 다른 아이디를 입력해 주세요.",
    authcode_send: "로 인증번호를 발송합니다.",
    authcode_resend: "인증번호를 재발송 합니다.",
    authcode_match: "인증에 성공하였습니다.",
    authcode_empty: "인증번호를 입력해 주세요.",

	not_authenticated: "인증을 받지 않았습니다. 인증번호를 입력하고 확인을 선택해 주세요.",
	not_authcode_sended: "인증번호 받기를 선택해 주세요.",
	authcode_isnull: "인증번호를 입력해 주세요.",
	authcode_not_match: "잘못된 인증번호 입니다. 인증번호를 확인한 다음 다시 입력해 주세요.",
	captcha_not_match: "틀림",
	ajax_error: "일시적인 오류로 서비스 이용이 원활하지 않습니다. 잠시 후 다시 시도해 주세요.",
	
	default_error: "일시적인 오류로 서비스 이용이 원활하지 않습니다. 잠시 후 다시 시도해 주세요.",
	forbidden_error: "유효 시간이 초과하였습니다. 처음부터 다시 진행해 주세요.",
	abouse_error: "보안정책에 의해 접근이 제한 되었습니다.",
	system_error: "일시적인 오류로 서비스 이용이 원활하지 않습니다. 잠시 후 다시 시도해 주세요.",
	
	verify_wrong_msg1: "입력하신 정보와 일치하는<br>아이디가 없습니다.",
    verify_wrong_msg2: "한번 더 정확하게 입력해 주세요.<br>직접 비밀번호 찾기가 어려운<br>경우는 <a href='http://cs.daum.net/m/' target='_blank' class='link_custom'>고객센터</a>로  문의해주세요.",
    forbidden_wrong_msg1: "보안정책에 의해 접근이 제한 되었습니다.",
    forbidden_wrong_msg2: "직접 비밀번호 찾기가 어려운<br>경우는 <a href='http://cs.daum.net/m/' target='_blank' class='link_custom'>고객센터</a>로 문의해주세요.",
    
    findpw_info_msg1: "비밀번호가 없거나 기억나지 않으신가요?",
    findpw_info_msg2: "폰번호아이디와 이름을 입력 후 인증을 완료하면<br> 비밀번호를 새로 등록할 수 있습니다.",
    findpw_wrong_msg1: "입력하신 정보와 일치하는 아이디가 없습니다.",
    findpw_wrong_msg2: "한번 더 정확하게 입력해 주세요.<br>직접 비밀번호 찾기가 어려운 경우는 <a href='http://cs.daum.net/faq/59.html' target='_blank' class='link_rel'>고객센터</a>로 문의해 주세요.",
    findpw_abuse_msg1: "보안정책에 의해 접근이 제한되었습니다.",
    findpw_abuse_msg2: "<br>직접 비밀번호 찾기가 어려운 경우는 <a href='http://cs.daum.net/faq/59.html' target='_blank' class='link_rel'>고객센터</a>로 문의해 주세요.",
    	
    apppw_not_yet: "애플리케이션 비밀번호를 아직 발급받지 않으셨습니다.",
    apppw_copy: "애플리케이션 비밀번호를 복사했습니다.\n비밀번호 입력란에 붙여넣기 하세요.",
    apppw_need_name: "애플리케이션 이름을 입력해 주세요.",
    apppw_name_max_length: "애플리케이션 이름은 6자 이내로 입력해 주세요.",
    apppw_max_size: "애플리케이션은 10개까지만 등록할 수 있습니다.\n사용하지 않는 애플리케이션은 삭제해 주세요.",
    apppw_will_delete: "애플리케이션 비밀번호를 더 이상 사용하실 수 없게 됩니다. 삭제하시겠습니까?",
    apppw_cant_delete: "애플리케이션 비밀번호를 삭제하지 못했습니다.",
    apppw_cant_issued: "애플리케이션 비밀번호를 발급하지 못했습니다.",
    apppw_reissue_pw : "애플리케이션 비밀번호를 재발급 하시겠습니까?\n기존에 사용하던 애플리케이션 비밀번호는 더 이상 사용할 수 없게 됩니다.",

	require_email: "이메일 주소를 입력해 주세요.",
    require_mobile: "휴대폰 번호를 입력해 주세요.",
	require_name: "이름 또는 닉네임을 입력해 주세요.",
 	require_regnum: "사업자등록번호를 입력해 주세요.",
	require_telephone: "전화 번호를 입력해 주세요.",
	invalid_mobile: "잘못된 휴대폰 번호 입니다. 휴대폰 번호를 확인한 다음 다시 입력해 주세요.",
 	invalid_email: "잘못된 이메일 주소 입니다. 이메일 주소를 확인한 다음 다시 입력해 주세요.",
 	invalid_telephone: "잘못된 전화 번호 입니다. 전화 번호를 확인한 다음 다시 입력해 주세요.",

    country : {
    	exist_country : "이미 추가되어 있는 국가입니다.",
    	max_selected : "최대 5개까지 추가할 수 있습니다.",
    	need_min_select : "최소 1개의 국가는 선택되어야 합니다.",
    	empty_select : "허용할 국가를 선택해주세요."
    }  	
};
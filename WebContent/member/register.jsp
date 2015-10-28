<!-- 
회원가입 페이지
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>

    <link rel="stylesheet" href="./vendor/bootstrap/css/bootstrap.css"/>
    <link rel="stylesheet" href="./dist/css/formValidation.css"/>

    <script type="text/javascript" src="./vendor/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="./vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./dist/js/formValidation.js"></script>
    <script type="text/javascript" src="./dist/js/framework/bootstrap.js"></script>

<script type="text/javascript">
function idCheck(memberEmail) {
	frm = document.regFrm;
	if(memberEmail == ""){
		return;
	}
	url = "idCheck.jsp?memberEmail=" + memberEmail;
	window.open(url, "IdCheck", "width=300,height=150");

}

function zipCheck(){
	var url = "zipCheck.jsp?check=y";
	window.open(url,"주소 검색","width=500, height=300, scrollbars=yes");
}

</script>

</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-xs-8 col-xs-offset-2">
                <div class="page-header">
                    <h1>회원가입</h1>
                </div>

                <form name="regFrm" id="defaultForm" method="post" class="form-horizontal" action="registerProc.jsp">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">이메일 주소</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="memberEmail" placeholder="ex)test@test.com"/>
                        </div>
                        <div class="col-lg-3">
                            <button name="mailCheck" class="btn btn-primary" onclick="idCheck(this.form.memberEmail.value)">중복확인</button>
                        </div>
                    </div>
<br/>
					<div class="form-group">
						<label class="col-lg-3 control-label">사용자 이름</label>
						<div class="col-lg-5">
							<input type="text" class="form-control" name="memberName" placeholder="ex)홍길동"/>
						</div>
					</div>
<br/>
					<div class="form-group">
						<label class="col-lg-3 control-label">비밀번호</label>
						<div class="col-lg-5">
							<input type="password" class="form-control" name="memberPass" placeholder="6자 이상 입력하세요."/>
						</div>
					</div>
<br/>
					<div class="form-group">
						<label class="col-lg-3 control-label">비밀번호 확인</label>
						<div class="col-lg-5">
							<input type="password" class="form-control"
								name="confirmPassword" />
						</div>
					</div>
<br/>
					<div class="form-group">
						<label class="col-lg-3 control-label">휴대폰번호</label>
						<div class="col-lg-5">
							<input type="text" class="form-control" name="memberTel" placeholder="010-1234-4567"/>
						</div>
					</div>
<br/>
					<div class="form-group">
						<label class="col-lg-3 control-label">주소</label>
						<div class="col-lg-8">
							<div class="form-group">
							<div class="col-lg-4">
									<button class="btn btn-primary" onClick="zipCheck()">주소찾기</button>
								</div>
								<div class="col-lg-4">
									<input type="text" class="form-control" name="memberZipCode" />
								</div>
							</div>
							<input type="text" class="form-control" name="memberAddr"/>
						</div>
					</div>
<hr/>
					<div class="form-group">
                        <div class="col-lg-9 col-lg-offset-3">
                            <button type="submit" class="btn btn-primary">회원가입</button>
                        </div>
                    </div>
                    
				</form>
            </div>
        </div>
    </div>

<script type="text/javascript">
$(document).ready(function() {
    $('#defaultForm').formValidation({
        message: 'This value is not valid',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            memberEmail: {
                validators: {
                    notEmpty: {
                        message: 'E-Mail을 입력해 주세요'
                    },
                    regexp:{
                    	regexp:/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i,
                    	message:'E-mail 형식이 맞지 않습니다.'
                    }
                }
            },
            memberName: {
                message: '사용자 이름 형식이 맞지 않습니다.',
                validators: {
                    notEmpty: {
                        message: '사용자 이름을 입력해 주세요.'
                    },
                    stringLength: {
                        min: 2,
                        max: 30,
                        message: '사용자 이름은 2글자 이상 30글자 이하로 해주세요'
                    },
                    regexp:{
                    	regexp:/^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣0-9_\.]+$/,
                    	message:'한글만 입력이 가능합니다.'
                    }
                }
            },
            memberPass: {
                validators: {
                    notEmpty: {
                        message: '비밀번호를 입력해 주세요.'
                    },
                    stringLength:{
                    	min:6,
                    	max:30,
                    	message:'비밀번호는 6자 이상 30자 이하로 해주세요.'
                    }
                }
            },
            confirmPassword: {
                validators: {
                    notEmpty: {
                        message: '비밀번호 확인을 입력해 주세요.'
                    },
                    identical: {
                        field: 'memberPass',
                        message: '위의 비밀번호와 똑같이 입력해 주세요.'
                    }
                }
            },
            memberTel:{
            	validators:{
            		notEmpty:{
            			msesage:'휴대폰 번호를 입력하세요'
            		},
            		regexp:{
            			regexp:/^\d{3}-\d{3,4}-\d{4}$/,
            			message:'휴대폰 번호를 다시 입력해 주세요.'
            		}
            	}
            },
            memberAddr:{
            	validators:{
            		notEmpty:{
            			message:'주소를 입력해 주세요.'
            		}
            	}
            }
        }
    });
});
</script>
</body>
</html>
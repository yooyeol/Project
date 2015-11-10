 var info = {
	
		 
	web: {
		join: {
		
			phone_baseinfo: {
				validateOption: {
					rules: {
						name: {
							required: true,
							koreannamelength: true,
							englishnamelength: true,
							nameinvalid: true
						},
						mobile: {
							required: true,
							mobile: true
						},
						policyAgree: "required",
						privacyAgree: "required"
					},
					messages: {
						name: {
							required: "이름을 입력해 주세요.",
							koreannamelength: "한글 이름은 2~15자 까지 입력 가능해요.",
							englishnamelength: "영문 이름은 2~30자 까지 입력 가능해요.",
							nameinvalid: "사용할 수 없는 이름입니다. 다시 입력해 주세요."
						},
						mobile: {
							required: "휴대폰 번호를 입력해 주세요.",
							mobile: "잘못된 휴대폰 번호 입니다. 휴대폰 번호를 확인한 다음 다시 입력해 주세요."
						},
						policyAgree: "이용약관과 개인정보 수집 및 이용에 대한 안내를 모두 동의해 주세요.",
						privacyAgree: "이용약관과 개인정보 수집 및 이용에 대한 안내를 모두 동의해 주세요."
					}
				}
			},
			
			phone_idpw: {
				validateOption: {
					rules: {
							daumid: {
								required: true,
								rangelength: [3, 15],
								daumidinvalid: true,
                                checkjuminnoformat: true
							},
							password: {
								required: true,
								passwordinvalid: true
							}
						},
						messages: {
							daumid: {
								required: "Daum 아이디를 입력해 주세요.",
								rangelength: "3자 이상 15자까지 사용할 수 있어요.",
								daumidinvalid: "3~15자의 영문 소문자와 숫자, 빼기(-), 밑줄(_), 마침표(.)만 사용할 수 있습니다. (단, .은 처음과 끝에 사용불가, 숫자만 사용불가)",
                                checkjuminnoformat: "개인정보(주민등록번호) 형태를 포함한 아이디는 사용할 수 없습니다."
							},
							password: {
								required: "비밀번호를 입력해 주세요.",
								passwordinvalid: "비밀번호는 영문 소문자, 숫자, 특수문자만 입력해 주세요!"
							}
						}
				}
			},
			
			email_baseinfo: {
				validateOption: {
					rules: {
						name: {
							required: true,
							koreannamelength: true,
							englishnamelength: true,
							nameinvalid: true
						},
						email: {
							required: true,
							daumemailinvalid: true,
							notUpperCase: true,
							email: true
						},
						policyAgree: "required",
						privacyAgree: "required"
					},
					messages: {
						name: {
							required: "이름을 입력해 주세요.",
							koreannamelength: "한글 이름은 2~15자 까지 입력 가능해요.",
							englishnamelength: "영문 이름은 2~30자 까지 입력 가능해요.",
							nameinvalid: "사용할 수 없는 이름입니다. 다시 입력해 주세요."
						},
						email: {
							required: "이메일 주소를 입력해주세요.",
							daumemailinvalid: "Daum 메일(@daum.net,@hanmail.net)은 사용할 수 없어요.",
							notUpperCase: "대문자는 입력할 수 없습니다.",
							email: "잘못된 이메일 주소 입니다. 이메일 주소를 확인한 다음 다시 입력해 주세요."
						},
						policyAgree: "이용약관과 개인정보 수집 및 이용에 대한 안내를 모두 동의해 주세요.",
						privacyAgree: "이용약관과 개인정보 수집 및 이용에 대한 안내를 모두 동의해 주세요."
					}
				}
			},
			
			email_idpw: {
				validateOption: {
					rules: {
						daumid: {
							required: true,
							rangelength: [3, 15],
							daumidinvalid: true,
                            checkjuminnoformat: true
						},
						password: {
							required: true,
							passwordinvalid: true
						},
						captchaValue: {
							required: true
						}
					},
					messages: {
						daumid: {
							required: "Daum 아이디를 입력해 주세요.",
							rangelength: "3자 이상 15자까지 사용할 수 있어요.",
							daumidinvalid: "3~15자의 영문 소문자와 숫자, 빼기(-), 밑줄(_), 마침표(.)만 사용할 수 있습니다. (단, .은 처음과 끝에 사용불가, 숫자만 사용불가)",
                            checkjuminnoformat: "개인정보(주민등록번호) 형태를 포함한 아이디는 사용할 수 없습니다."
						},
						password: {
							required: "비밀번호를 입력해 주세요.",
							passwordinvalid: "비밀번호는 영문 소문자, 숫자, 특수문자만 입력해 주세요!"
						},
						captchaValue: {
							required: "자동입력 방지문자를 차례대로 입력해 주세요."
						}
					}
				}
			}

		},
		find: {

			phone_idpw_baseinfo: {
				validateOption: {
					rules: {
						name: {
							required: true
						},
						loginid: {
							required: true,
							mobile: true
						}
					},
					messages: {
						name: {
							required: "이름을 입력해 주세요."
						},
						loginid: {
							required: "휴대폰 번호를 입력해 주세요.",
							mobile: "잘못된 휴대폰 번호 입니다. 휴대폰 번호를 확인한 다음 다시 입력해 주세요."
						}
					}
				}
			},
			
			phone_idpw_authcode: {
				validateOption: {
					rules: {
						inputValue: {
							required: true
						}
					},
					messages: {
						inputValue: {
							required: "인증번호를 입력해 주세요."
						}
					},
					types: {
						inputValue: "alert"
					}
				}
			},
			
			phone_idpw_password: {
				validateOption: {
					rules: {
						password: {
							required: true,
							passwordinvalid: true
						}
					},
					messages: {
						password: {
							required: "비밀번호를 입력해 주세요.",
							passwordinvalid: "비밀번호는 영문 소문자, 숫자, 특수문자만 입력해 주세요!"
						}
					}
				}
			}
		}, 
		campaign: {
			contract: {
				validateOption: {
					rules: {
						mobile: {
							mobile: true
						},
						email: {
							email: true,
							notUpperCase: true,
							daumemailnotsame: "daumid"
						}
					},
					messages: {
						mobile: {
							mobile: "휴대폰 번호를 확인하고, 다시 입력해 주세요. 해외 휴대폰 번호는 등록이 불가능하므로 이메일 주소로 등록해 주세요."
						},
						email : {
							notUpperCase: "대문자는 입력할 수 없습니다.",
							email: "잘못된 이메일 주소 입니다. 이메일 주소를 확인한 다음 다시 입력해 주세요.",
							daumemailnotsame: "지금 로그인한 다음메일은 입력할 수 없어요. 다른 이메일 주소를 입력해 주세요."
						}
					}
				}
			}
		}
	},
	mobile: {
		join: {
			
			phone_baseinfo: {
				validateOption: {
					rules: {
						name: {
							required: true,
							koreannamelength: true,
							englishnamelength: true,
							nameinvalid: true
							
						},
						mobile: {
							required: true,
							mobile: true
						},
						policyAgree: "required",
						privacyAgree: "required"
					},
					messages: {
						name: {
							required: "이름을 입력해 주세요.",
							koreannamelength: "한글 이름은 2~15자 까지 입력 가능해요.",
							englishnamelength: "영문 이름은 2~30자 까지 입력 가능해요.",
							nameinvalid: "사용할 수 없는 이름입니다. 다시 입력해 주세요."
							
						},
						mobile: {
							required: "휴대폰 번호를 입력해 주세요.",
							mobile: "잘못된 휴대폰 번호 입니다. 휴대폰 번호를 확인한 다음 다시 입력해 주세요."
						},
						policyAgree: "이용약관과 개인정보 수집 및 이용에 대한 안내를 모두 동의해 주세요.",
						privacyAgree: "이용약관과 개인정보 수집 및 이용에 대한 안내를 모두 동의해 주세요."
					}
				}
			},
	
			phone_authcode: {
				validateOption: {
					rules: {
						inputValue: {
							required: true
						}
					},
					messages: {
						inputValue: {
							required: "인증번호를 입력해 주세요."
						}
					},
					types: {
						inputValue: "alert"
					}
				}
			},
			
			phone_idpw: {
				validateOption: {
					rules: {
						daumid: {
							required: true,
							rangelength: [3, 15],
							daumidinvalid: true,
                            checkjuminnoformat: true
						},
						password: {
							required: true,
							passwordinvalid: true
						}
					},
					messages: {
						daumid: {
							required: "Daum 아이디를 입력해 주세요.",
							rangelength: "3자 이상 15자까지 사용할 수 있어요.",
							daumidinvalid: "3~15자의 영문 소문자와 숫자, 빼기(-), 밑줄(_), 마침표(.)만 사용할 수 있습니다. (단, .은 처음과 끝에 사용불가, 숫자만 사용불가)",
                            checkjuminnoformat: "개인정보(주민등록번호) 형태를 포함한 아이디는 사용할 수 없습니다."
						},
						password: {
							required: "<span class=\"img_g ico_help\"></span>"+"비밀번호를 입력해 주세요.",
							passwordinvalid: "<span class=\"img_g ico_help\"></span>"+"비밀번호는 영문 소문자, 숫자, 특수문자만 입력해 주세요!"
						}
					}
				}
			},
			
			email_baseinfo: {
				validateOption: {
					rules: {
						name: {
							required: true,
							koreannamelength: true,
							englishnamelength: true,
							nameinvalid: true
						},
						email: {
							required: true,
							daumemailinvalid: true,
							notUpperCase: true,
							email: true
						},
						policyAgree: "required",
						privacyAgree: "required"
						},
						messages: {
						name: {
							required: "이름을 입력해 주세요.",
							koreannamelength: "한글 이름은 2~15자 까지 입력 가능해요.",
							englishnamelength: "영문 이름은 2~30자 까지 입력 가능해요.",
							nameinvalid: "사용할 수 없는 이름입니다. 다시 입력해 주세요."
						},
						email: {
							required: "이메일 주소를 입력해주세요.",
							daumemailinvalid: "Daum 메일(@daum.net,@hanmail.net)은 사용할 수 없어요.",
							notUpperCase: "대문자는 입력할 수 없습니다.",
							email: "잘못된 이메일 주소 입니다. 이메일 주소를 확인한 다음 다시 입력해 주세요."
						},
						policyAgree: "이용약관 동의를 체크해주세요.",
						privacyAgree: "개인정보 수집 및 이용 동의를 체크해주세요."
					}
				}
			},
			
			email_authcode: {
				validateOption: {
					rules: {
						inputValue: {
							required: true
						}
					},
					messages: {
						inputValue: {
							required: "인증번호를 입력해 주세요."
						}
					},
					types: {
						inputValue: "alert"
					}
				}
			},
			
			email_idpw: {
				validateOption: {
					rules: {
						daumid: {
							required: true,
							rangelength: [3, 15],
							daumidinvalid: true,
                            checkjuminnoformat: true
						},
						password: {
							required: true,
							passwordinvalid: true
						},
						captchaValue: {
							required: true
						}
					},
					messages: {
						daumid: {
							required: "Daum 아이디를 입력해 주세요.",
							rangelength: "3자 이상 15자까지 사용할 수 있어요.",
							daumidinvalid: "3~15자의 영문 소문자와 숫자, 빼기(-), 밑줄(_), 마침표(.)만 사용할 수 있습니다. (단, .은 처음과 끝에 사용불가, 숫자만 사용불가)",
                            checkjuminnoformat: "개인정보(주민등록번호) 형태를 포함한 아이디는 사용할 수 없습니다."
						},
						password: {
							required: "<span class=\"img_g ico_help\"></span>"+"비밀번호를 입력해 주세요.",
							passwordinvalid: "<span class=\"img_g ico_help\"></span>"+"비밀번호는 영문 소문자, 숫자, 특수문자만 입력해 주세요!"
						}
					},
					captchaValue: {
						required: "자동입력 방지문자를 차례대로 입력해 주세요."
					}
				}
			}
		
		},
		find: {
			phone_idpw_baseinfo: {
				validateOption: {
					rules: {
						name: {
							required: true
						},
						loginid: {
							required: true,
							mobile: true
						}
					},
					messages: {
						name: {
							required: "이름을 입력해 주세요."
						},
						loginid: {
							required: "휴대폰 번호를 입력해 주세요.",
							mobile: "잘못된 휴대폰 번호 입니다. 휴대폰 번호를 확인한 다음 다시 입력해 주세요."
						}
					}
				}
			},
			
			phone_idpw_authcode: {
				validateOption: {
					rules: {
						inputValue: {
							required: true
						}
					},
					messages: {
						inputValue: {
							required: "인증번호를 입력해 주세요."
						}
					},
					types: {
						inputValue: "alert"
					}
				}
			},
			
			phone_idpw_password: {
				validateOption: {
					rules: {
						password: {
							required: true,
							passwordinvalid: true
						}
					},
					messages: {
						password: {
							required: "<span class=\"img_g ico_help\"></span>"+"비밀번호를 입력해 주세요.",
							passwordinvalid: "<span class=\"img_g ico_help\"></span>"+"비밀번호는 영문 소문자, 숫자, 특수문자만 입력해 주세요!"
						}
					}
				}
			}
		},
		campaign: {
			contract: {
				validateOption: {
					rules: {
						mobile: {
							mobile: true
						},
						email: {
							email: true,
							notUpperCase: true,
							daumemailnotsame: "daumid"
						}
					},
					messages: {
						mobile: {
							mobile: "휴대폰 번호를 확인하고, 다시 입력해 주세요. 해외 휴대폰 번호는 등록이 불가능하므로 이메일 주소로 등록해 주세요."
						},
						email : {
							notUpperCase: "대문자는 입력할 수 없습니다.",
							email: "잘못된 이메일 주소 입니다. 이메일 주소를 확인한 다음 다시 입력해 주세요.",
							daumemailnotsame: "지금 로그인한 다음메일은 입력할 수 없어요. 다른 이메일 주소를 입력해 주세요."
						}
					}
				}
			}
		}
		
	},
	
	app: {
		
		find: {
			
			phone_idpw_password: {
				validateOption: {
					rules: {
						password: {
							required: true,
							passwordinvalid: true
						}
					},
					messages: {
						password: {
							required: "<span class=\"img_g ico_help\"></span>"+"비밀번호를 입력해 주세요.",
							passwordinvalid: "<span class=\"img_g ico_help\"></span>"+"비밀번호는 영문 소문자, 숫자, 특수문자만 입력해 주세요!"
						}
					}
				}
			}
		},
		
		join: {
		
			phone_baseinfo: {
				validateOption: {
					rules: {
						name: {
							required: true,
							koreannamelength: true,
							englishnamelength: true,
							nameinvalid: true
						},
						mobile: {
							required: true,
							mobile: true
						},
						policyAgree: "required",
						privacyAgree: "required"
					},
					messages: {
						name: {
							required: "이름을 입력해 주세요.",
							koreannamelength: "한글 이름은 2~15자 까지 입력 가능해요.",
							englishnamelength: "영문 이름은 2~30자 까지 입력 가능해요.",
							nameinvalid: "사용할 수 없는 이름입니다. 다시 입력해 주세요."
						},
						mobile: {
							required: "휴대폰 번호를 입력해 주세요.",
							mobile: "잘못된 휴대폰 번호 입니다. 휴대폰 번호를 확인한 다음 다시 입력해 주세요."
						},
						policyAgree: "이용약관과 개인정보 수집 및 이용에 대한 안내를 모두 동의해 주세요.",
						privacyAgree: "이용약관과 개인정보 수집 및 이용에 대한 안내를 모두 동의해 주세요."
					}
				}
			},
	
			phone_authcode: {
				validateOption: {
					rules: {
						inputValue: {
							required: true
						}
					},
					messages: {
						inputValue: {
							required: "인증번호를 입력해 주세요."
						}
					},
					types: {
						inputValue: "alert"
					}
				}
			}
		},
		campaign: {
			contract: {
				validateOption: {
					rules: {
						mobile: {
							mobile: true
						},
						email: {
							email: true,
							notUpperCase: true,
							daumemailnotsame: "daumid",
							emailmaxlength:100
						}
					},
					messages: {
						mobile: {
							mobile: "휴대폰 번호를 확인하고, 다시 입력해 주세요. 해외 휴대폰 번호는 등록이 불가능하므로 이메일 주소로 등록해 주세요."
						},
						email : {
							notUpperCase: "대문자는 입력할 수 없습니다.",
							email: "잘못된 이메일 주소 입니다. 이메일 주소를 확인한 다음 다시 입력해 주세요.",
							daumemailnotsame: "지금 로그인한 다음메일은 입력할 수 없어요. 다른 이메일 주소를 입력해 주세요."
						}
					}, types: {
						mobile : "alert",
						email : "alert"
					}
				}
			}
		}
	}
};
 
 
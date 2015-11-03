<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@page import="Bean.ZipCodeBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="mMgr" class="DAO.MemberDAO" />
<%
    request.setCharacterEncoding("UTF-8");
	String check = request.getParameter("check");
	 String dong = null;
	 Vector<ZipCodeBean> vlist = null;
	 if (check.equals("n")) {
		dong = request.getParameter("dong");
		vlist = mMgr.zipCodeRead(dong);
	 }
%>
<title>시작주소 검색</title>
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$('.visible2').hide();
	
});
	function dongCheck() {
		frm = document.zipFrm;
		if (frm.dong.value == "") {
			alert("동이름을 입력하세요.");
			frm.dong.focus();
			return;
		}
		frm.action = "startSelect.jsp"
		frm.submit();
	}

	function sendAdd(zipCode, sido, gungu, dong, bldg, bunji) {
		add = sido + " " + gungu + " " + dong + " " + bldg + " " + bunji;
		//opener.document.getElementById("startPath").innerHTML = add;
		//self.close();
		$('.visible2').show();
		document.getElementById("address").value = add;
		//document.getElementsByClassName("visible1").style.visibility="hidden";
		$('.visible1').hide();
	}
	function send(){
		window.opener.document.getElementById("startPath").innerHTML = document.getElementById("address").value;
		self.close();
	}
	
	function EnterCheck(){
		if(event.keyCode == 13){
			frm = document.zipFrm;
			if (frm.dong.value == "") {
				alert("동이름을 입력하세요.");
				frm.dong.focus();
				return;
			}
			frm.action = "startSelect.jsp"
			frm.submit();
		}
	}
</script>
</head>
<body class="container">
	<div align="center">
		<br />
		<form name="zipFrm" method="post">
			<input id="address" class="form-control visible2" value="" name="address" width="50"/>
			&nbsp;&nbsp;<button class="btn btn-primary visible2" type="button" onclick="send()">전송</button>
			<table>
				<tr class="visible1">
					<td>
						<label class="col-lg-2 control-label">동이름 입력</label>
					</td>
					<td>
						<input class="form-control"name="dong" type="text" value="" onkeydown="EnterCheck()">
					</td>
					<td>
						&nbsp;&nbsp;<button class="btn btn-primary"type="button" onClick="dongCheck()">검색</button>
					</td>					
				</tr>
				<!-- 검색결과 시작 -->
				<%
					if (check.equals("n")) {
						if (vlist.isEmpty()) {
				%>
				<tr>
					<td align="center" colspan="3"><br>검색된 결과가 없습니다.</td>
				</tr>
				<%
					} else {
				%>
				<tr class="visible1">
					<td align="center" colspan="3"><br>※검색 후, 아래 주소를 클릭하면 자동으로 입력됩니다.</td>
				</tr>
				<%
					for (int i = 0; i < vlist.size(); i++) {
								ZipCodeBean bean = vlist.get(i);
								String rZipcode = bean.getZipCode();
								String rSido = bean.getSido();
								String rGungu = bean.getGungu();
								String rDong = bean.getDong();
								String rBldg = bean.getBldg();
								String rBunji = bean.getBunji();
				%>
				<tr class="visible1">
					<td colspan="3">
						<a href="#"	onclick="javascript:sendAdd('<%=rZipcode%>','<%=rSido%>','<%=rGungu%>','<%=rDong%>','<%=rBldg%>','<%=rBunji%>')">
							<%=rZipcode%>&nbsp; <%=rSido%>&nbsp; <%=rGungu%>&nbsp; <%=rDong%>&nbsp; <%=rBldg%>&nbsp; <%=rBunji%>
						</a>
					</td>
				</tr>
				<%
					}//for
						}//if
					}//if
				%>
				<!-- 검색결과 끝 -->
				<tr>
					<td align="center" colspan="3"><br /> <a href="#" onClick="self.close()">닫기</a></td>
				</tr>
			</table>
			<input type="hidden" name="check" value="n">
		</form>
	</div>
</body>
</html>
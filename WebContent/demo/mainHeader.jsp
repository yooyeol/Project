<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
	<%@page import="java.util.*"%>

<%
	String uri = request.getContextPath();
%>
<!DOCTYPE html>
<html> 
<head>

<body style="height:1500px">

<script type="text/javascript">
	
	function check() {
	     if (document.searchFrm.keyWord.value == "") {
	   alert("검색어를 입력하세요.");
	   document.searchFrm.keyWord.focus();
	   return;
	     }
	  document.searchFrm.submit();
	 }
</script>

<body style="height:1500px">
</head>
<body>
	<!-- header-section-starts-here -->
	
	<%
		String id = session.getAttribute("idKey").toString();
		String member = session.getAttribute("memberIdKey").toString();

		String sql = "select DISTINCT(tourCourseGroup) from TOURCOURSE where MemberID=?"; 
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (ClassNotFoundException e) {
			out.println("class not found");
		} catch (Exception etc) {
			out.println("etc exception");
			out.println(etc.getMessage());
		}
		try {
			String url = "jdbc:mysql://kitri.iptime.org:3306/YogiJogi?useUnicode=true&characterEncoding=UTF-8";
			String userId = "yogijogi";
			String userPass = "yogijogi";
			conn = DriverManager.getConnection(url, userId, userPass);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member);
			rs = pstmt.executeQuery();
			int subcourse = 0;
%>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="header">
		<div class="header-top">
			<div class="wrap">
				
				<div class="num">
					<ul><span style='color: white;'><%=session.getAttribute("nameKey")%> 님 환영합니다.</span>&nbsp;&nbsp;&nbsp;<a style="color: white"  href="../main/LoginMain.jsp" ><span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="header-bottom">
			<div class="logo text-center">
				<a href="main.jsp"><img src="/testfinal/demo/images/mainLogo.jpg" alt=""></a>
			</div> 
			
			<div class="navigation">
				<nav class="navbar navbar-default" role="navigation">
		   <div class="wrap">

			<!--/.navbar-header-->
		
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					 <li><a href="<%=uri%>/demo/main.jsp">Home</a></li>
						<!-- <li><a href="course.jsp">GO TRAVELING</a></li> -->
						<li><a href="<%=uri%>/map/newMapTab.jsp">GO TRAVELING</a></li>
				 		<li><a href="notify.jsp">공지사항</a></li>
						<li><a href="<%=uri%>/demo/board.jsp">게시판</a></li>
					  <li class="dropdown">
						<a href="mypage1.jsp" class="dropdown-toggle" data-toggle="dropdown">마이페이지<b class="caret"></b></a>
						<ul class="dropdown-menu multi-column columns-2">
							<div class="row">
								<div class="col-sm-6">
									<ul class="multi-column-dropdown">
										<li><a href="<%=uri%>/demo/mypage1.jsp">내 정보 조회</a></li>
										<li class="divider"></li>
										<li><a href="<%=uri%>/demo/mypage2.jsp">회원정보 수정</a></li>
									    <li class="divider"></li>
										<li><a href="<%=uri%>/demo/mypage3.jsp">탈퇴하기</a></li>
										<li class="divider"></li>
										<li><a href="#" data-toggle="modal" data-target="#myModal">나의 경로보기</a></li>
										<li class="divider"></li>
										<li><a href="<%=uri%>/demo/memberPreCourse.jsp">경로바구니</a></li>
									</ul>
								</div>
								
							</div>
						</ul>
					</li>
					
				</ul>
				<div class="search">
					<!-- start search-->
				    <div class="search-box">
					    <div id="sb-search" class="sb-search">
							<form>
								<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
								<input class="sb-search-submit" type="submit" value="">
								<span class="sb-icon-search"> </span>
							</form>
						</div>
				    </div>
					<!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
					<!-- //search-scripts -->
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!--/.navbar-collapse-->
	 <!--/.navbar-->
			</nav></div>
		
		</div>
	</div>
	</nav>
	<div class="wrap">
		<div class="move-text">
			<div class="breaking_news">
				<h2>공지사항</h2>
			</div>
			<div class="marquee"><div style="width: 100000px; margin-left: 1370px; animation: marqueeAnimation-1795152 6.18248s linear 1s infinite;" class="js-marquee-wrapper"><div class="js-marquee" style="margin-right: 0px; float: left;">
				<div class="marquee1"><a class="breaking" href="single.html">&gt;&gt;게시판디비가 없는듯</a></div>
				<div class="marquee2"><a class="breaking" href="single.html">&gt;&gt;어허허허헣</a></div>
				<div class="clearfix"></div>
			</div></div></div>
			<div class="clearfix"></div>
			<script type="text/javascript" src="js/jquery.marquee.min.js"></script>
			<script>
			  $('.marquee').marquee({ pauseOnHover: true, 
				speed:11000  
			  });
			  //@ sourceURL=pen.js
			</script>
		</div>
	</div>
	

	
	<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">경로를 선택해 주세요</h4>
        </div>
        <div class="modal-body">
        	<%
			
						while (rs.next()) {
							
							subcourse = rs.getInt(1);

							
							 %>
							 
							<form id="course" action="mypageCourse.jsp" method="post">
          					<button name="course" class="btn btn-default" type="submit" value="<%=subcourse%>">나만의 경로-<%=subcourse %></button>
      						</form>
      						
      					
      						
   <%
						}
   %>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  <%


		} catch (SQLException e) {
			e.printStackTrace();
			//out.println("SQLException : " + e.getMessage());
		} finally {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		}
	%> 	
	
	</body>
	</html>
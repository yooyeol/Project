<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.Date" %>
<jsp:useBean id="board" class="board.BoardMgr"></jsp:useBean>
<jsp:useBean id="member" class="DAO.MemberDAO"></jsp:useBean>

<%
	request.setCharacterEncoding("UTF-8");
 	String[] courseID =request.getParameterValues("courseID");
 	String[] courseSequence =request.getParameterValues("courseSequence");
 	
 	int listSize=Integer.parseInt(request.getParameter("listSize"));
 	int memberID=Integer.parseInt(session.getAttribute("memberIdKey").toString());
 	/* int memberGroup=Integer.parseInt(request.getParameter("memberGroup")); */
 	int memberCart=Integer.parseInt(session.getAttribute("memberCart").toString());
 		
 	
 	System.out.print("courseID : ");
	 	
 	for(int i=0;i<listSize;i++){
 		
 		System.out.print(courseID[i]);
 	
 	}

	int result=board.insertCart(courseID,courseSequence,memberID);
	memberCart +=1;
	session.setAttribute("memberCart", memberCart);
	member.memberCartUp(memberCart, memberID);
	%>
	
<%if(result==1){ %>
	<script>
		alert("장바구니에 저장 되었습니다.");
		
	</script>
<%}
else{ %>
	<script>
		alert(" 실패 했습니다.");
		
		history.back();
	</script>
<%}%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<%
      request.setCharacterEncoding("EUC-KR");
	  int totalRecord = Integer.parseInt(request.getParameter("totalRecord"));
	  int numPerPage = 10; // �������� ���ڵ� �� 
	  int pagePerBlock = 15;  //���� �������� 
	  int totalPage = 0; //��ü ������ ��
      int totalBlock = 0;  //��ü ���� 
      int nowPage = 1; // ����������
      int nowBlock = 1;  //�����

      int start=0; //����� select ���۹�ȣ
      int end=10; //���۹�ȣ�� ���� ������ select ����

      int listSize=0; //���� �о�� �Խù��� ��
	  
  	  if (request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	  }
	  start = (nowPage * numPerPage)-numPerPage;
	  //end = start+numPerPage;

	  totalPage =(int)Math.ceil((double)totalRecord / numPerPage);//��ü��������
	  nowBlock= (int)Math.ceil((double)nowPage/pagePerBlock);//����� ���
	  
	  totalBlock =(int)Math.ceil((double)totalPage / pagePerBlock);//��ü�����
%>
<title>����¡ & ��� ó�� �׽�Ʈ</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function pageing(page) {
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}

	function block(value){
	 	document.readFrm.nowPage.value=<%=pagePerBlock%>*(value-1)+1;
	 	document.readFrm.submit();
	} 
</script>
</head>
<body bgcolor="#FFFFCC">
<div align="center">
<br/>
<h2>����¡ & ��� ó�� �׽�Ʈ</h2>
<br/>
	<table align="center" border="0" width="80%">
			<tr align="center">
				<td>Total : <%=totalRecord%>Articles(<font color="red">
				<%=nowPage%>/<%=totalPage%>Pages</font>)</td>
			</tr>
	</table>
	<table>
	<tr>
		<td>�Խù� ��ȣ : &nbsp;</td>
		<%
			listSize = totalRecord-start;
			for(int i = 0;i<numPerPage; i++){
				if (i == listSize) break;
		%>
		<td align="center">
			<%=totalRecord-((nowPage-1)*numPerPage)-i%>&nbsp;
		</td>
		<%}//for%>
		<td align="center">&nbsp;</td>
	</tr>
</table>
<!-- ����¡ �� �� -->
<table>
	<tr>
		<td>
			<!-- ����¡ �� �� ó�� Start--> 
			<%
   				  int pageStart = (nowBlock -1)*pagePerBlock + 1 ; //�ϴ� ������ ���۹�ȣ
   				  int pageEnd = ((pageStart + pagePerBlock ) <= totalPage) ?  (pageStart + pagePerBlock): totalPage+1; 
   				  //�ϴ� ������ ����ȣ
   				  if(totalPage !=0){
    			  	if (nowBlock > 1) {%>
    			  		<a href="javascript:block('<%=nowBlock-1%>')">prev...</a><%}%>&nbsp; 
    			  			
							<%for ( ; pageStart < pageEnd; pageStart++){%>
     			     			<a href="javascript:pageing('<%=pageStart %>')"> 
     						<%if(pageStart==nowPage) {%><font color="blue"> <%}%>
     						[<%=pageStart %>] 
     						<%if(pageStart==nowPage) {%></font> <%}%></a> 
    						<%}//for%>&nbsp; 
    					
    					<%if (totalBlock > nowBlock ) {%>
    					<a href="javascript:block('<%=nowBlock+1%>')">.....next</a>
    				<%}%>&nbsp;  
   				<%}%>
 			<!-- ����¡ �� �� ó�� End-->
		</td>
	</tr>
</table>
<hr width="45%"/>
<form name="readFrm">
	<input type="hidden" name="totalRecord" value="<%=totalRecord%>">
	<input type="hidden" name="nowPage" value="<%=nowPage%>"> 
</form>
<b>
totalRecord : <%=totalRecord%>&nbsp;
numPerPage : <%=numPerPage%>&nbsp;
pagePerBlock : <%=pagePerBlock%>&nbsp;
totalPage : <%=totalPage%>&nbsp;<br>
totalBlock : <%=totalBlock%>&nbsp;
nowPage : <%=nowPage%>&nbsp;
nowBlock : <%=nowBlock%>&nbsp;</b>
<p/>
<input type="button" value="TotalRecord �Է���" onClick="javascript:location.href='pageView.html'">
</div>
</body>
</html>
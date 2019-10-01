<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.mycompany.web.dto.Counter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h4>dispatcher8.jsp</h4>

		<%-- How1 --%>
		<% Counter applicationCounter = (Counter)application.getAttribute("applicationCounter");%>
		applicationCounter: <%=applicationCounter.getValue()%> <br/>
		
		<% Counter sessionCounter = (Counter)session.getAttribute("sessionCounter");%>
		sessionCounter: <%=sessionCounter.getValue()%><br/>
		
		<% Counter requestCounter = (Counter)request.getAttribute("requestCounter");%>
		requestCounter: <%=requestCounter.getValue()%> <br/> <br/> 
		
		<%-- How2(Expression Language) --%>
		<%-- ${key 이름.메소드} el에서는 value가 필드 접근이 아님. getValue() 메소드 호출 --%>
		<%-- request 범위에서 key를 먼저 찾고, 없으면 session 범위에서 찾고, 없으면 context까지 --%>
		applicationCounter: ${applicationCounter.value} <br/>
		sessionCounter: ${sessionCounter.value} <br/>
		requestCounter: ${requestCounter.value} <br/> <br/> 
		
	</body>
</html>
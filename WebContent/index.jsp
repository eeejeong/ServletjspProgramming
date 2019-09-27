<%@ page contentType = "text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	
		<style type="text/css">
		
			html, body { 
				height:100%; 
			}
		
			#wrapper {
				width: 100%;
				height: 100%;
				display: flex;
				flex-direction: column;
			} 
			
			#header {
				border-bottom: 1px solid black;
				margin-bottom: 10px;
			}
		
			#content {
				flex-grow: 1;
				height:80%; 
				display: flex;
			}

			#content #sideBar {
				width:300px;
				background-color: #dddddd;
				padding-right: 10px;
				border-right: 1px solid gray;
				overflow-y: scroll;
			}

			#content #center {
				flex-grow:1 ;
				padding: 10px;
			}
			
			#center iframe {
				margin-top: 0px;
				width: 100%;
				height: 100%;
			}
			
			#footer {
				border-top: 1px solid black;
				margin-top: 10px;
				margin-bottom: 10px;
			}
		</style>
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<h3>ServletJspProgramming</h3>
			</div>
			<div id="content">
				<div id="sideBar">
					<ul>
						<li> <a href="dispatcher1" target="iframe">서블릿 작성과 URL 매핑</a></li>
						<li> <a href="dispatcher2" target="iframe">서블릿 초기화</a></li>
						<li> <a href="dispatcher3?name=honggildong&age=25&tel=010-1234-5678" target="iframe">GET 방식으로 요청</a></li>
						<li> 
							<form action="dispatcher3" method="get" target="iframe">
								<input type="text" name="name" value="honggildong"/>
								<input type="text" name="age" value="25"/>
								<input type="text" name="tell" value="010-1234-5678"/>
								<input type="submit" value="GET 방식으로 요청"/>
							</form>
							<form action="dispatcher3" method="post" target="iframe">
								<input type="text" name="name" value="honggildong"/>
								<input type="text" name="age" value="25"/>
								<input type="text" name="tell" value="010-1234-5678"/>
								<input type="submit" value="POST 방식으로 요청"/>
							</form>
						</li>
						<li> <a href="dispatcher4" target="iframe">응답 보내기</a></li>		
						<li> <a href="dispatcher4?name=hongkildong&age=25" target="iframe">요청 파라미터 받기</a></li>		
						<li> 
							<form action="dispatcher5" method="get" target="iframe">
								<input type="text" name="name" value="honggildong"/>
								<input type="number" name="age" value="25"/>
								<input type="submit" value="GET 방식으로 요청"/>
							</form>
							<form action="dispatcher5" method="post" target="iframe">
								<input type="text" name="name" value="honggildong"/>
								<input type="number" name="age" value="25"/>
								<input type="submit" value="POST 방식으로 요청"/>
							</form>
						</li>				
					</ul>
					
				</div>
				<div id="center">
					<iframe name="iframe" src="http://tomcat.apache.org" frameborder="0"></iframe>
				</div>
			</div>
			<div id="footer">2019. IoT. K.E.J. </div>
		</div>
	</body>
</html>
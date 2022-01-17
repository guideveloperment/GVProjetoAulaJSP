<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Calendar"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Primeira página JSP
	<%!boolean formatar = true;%>
	
	<%!
	String today(){
		java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd:mm:ss");
		return dt.format(new java.util.Date());
	}
	
	%>
	
	<h1>A data de hoje é: <%=new java.util.Date() %></h1>
	<h1>A data de hoje é: <%=today() %></h1>
	<h1>A data de hoje é: <% if (formatar){
		
								out.println(today());
								}else{
								     out.println(new java.util.Date());
								     
								     %></h1>
								     
								     
								     
	 <%! Calendar cal = Calendar.getInstance(); %>
		
		<%!int segundos(){
			return cal.get(Calendar.SECOND);
		}%>
		

		<%if(segundos() % 2 == 0){
			out.println("Numero Par"+segundos());
		}else{
			out.println("Numero Impar"+segundos());
		}%>
								     
	
	}
</body>
</html>
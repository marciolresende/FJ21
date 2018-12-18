<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.com.caelum.dao.*,
		br.com.caelum.modelo.*,
		java.util.*,
		java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Contatos</title>
</head>
<body>		
	<%  SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");%>
	<table>
		<%
		ContatoDao dao = new ContatoDao();
		List  <Contato> contatos = dao.getLista();
		
		for(Contato contato : contatos) {
		%>
			<tr>
				<th>Nome:</th>
				<td><%=contato.getNome() %></td>
				<th>Email:</th>
				<td><%=contato.getEmail() %></td>
				<th>Endereço:</th>	
				<td><%=contato.getEndereco() %></td>
				<th>Data de nascimento:</th>
				<td><%=sdf.format(contato.getDataNascimento().getTime()) %></td>				
			</tr>		
		<%
		}
		%>
		
					
	</table>
	
</body>
</html>
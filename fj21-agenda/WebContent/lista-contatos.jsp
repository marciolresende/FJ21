<!DOCTYPE html>
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<meta charset="UTF-8">
<title>Lista contatos usando foreach</title>
</head>
<body>

    
    <c:import url="cabecalho.jsp" />
		
	<!--  Cria o DAO -->
	<jsp:useBean id="dao" class="br.com.caelum.dao.ContatoDao"/>
	<table border="1">
	<!-- Percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista}" varStatus="id">			
			<tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
				<th><b>Nome:</b></th>
				<td>${id.count}</td>				
				<td>${contato.nome}</td>
				
				<%--Implementaçao usando o if do jsp --%>
									
				<th><b>Email:</b></th>
				<td>
					<c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if>
					
					<c:if test="${empty contato.email}">
						E-mail não informado.
					</c:if>				
				
				<%-- Implementação usando o switch do jsp --%>
				<%--
				<th><b>Email:</b></th>
					<c:choose>
					<td>
						<c:when test="${not empty contato.email }">
						<a href="mailto:${contato.email}">${contato.email}</a>
						</c:when>
					</td>
					<td>
						<c:otherwise>
							E-mail não informado
						</c:otherwise>
					</td>
				
					</c:choose>
				--%>							
				<th><b>Endereço:</b></th>
				<td>${contato.endereco}</td>
				<th><b>Data de nascimento:</b></th>
				<%--
				<td>${contato.dataNascimento.time}</td>
				 --%>
				 <td>
				 	<fmt:formatDate value="${contato.dataNascimento.time}"
				 	pattern="dd/MM/yyyy" />
				 </td>				 
				 
				 
				 
				
			</tr>
		</c:forEach>		 
	</table>
	<c:import url="rodape.jsp" />
</body>
</html>
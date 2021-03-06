<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="br.usp.pcs.models.Cliente"%>

 <c:set var="content">
 	<div style="margin-left: 30%; margin-right: 30%;">
 		<% Cliente cliente = (Cliente) request.getAttribute("cliente"); %>
	  	<span class="page-identifier">Edição do cliente <%= cliente.getNome() %></span>	
	  	<form action="clientes">	
	  		<br>
	  		<input hidden name="action" value="atualizar">
		  	<p>RG: <%= cliente.getRg() %> <input hidden name="rg" value="<%= cliente.getRg() %>"></p> 
		  	<p>Nome: <input type="text" placeholder="<%= cliente.getNome()%>" name="nome"></p>
			<p>Gênero: <input type="text" placeholder="<%= cliente.getGenero() %>" name="genero"> </p>
			<button type=button onclick="window.location.href='/MercadoPolivalente/clientes'">
				<i class="fa fa-window-close-o" aria-hidden="true"></i> Cancelar
			</button>
	 		<button type=submit>
	 			<i class="fa fa-floppy-o" aria-hidden="true"></i> Atualizar
	 		</button>
 		</form>
  	</div>
  </c:set>
<t:mainpage>
	<jsp:attribute name="pagecontent">
		${content}
	</jsp:attribute>
</t:mainpage>


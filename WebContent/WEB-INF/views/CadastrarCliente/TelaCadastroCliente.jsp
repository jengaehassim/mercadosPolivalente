<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="content">
 	<div style="margin-left: 30%; margin-right: 30%;">
	  	<span class="page-identifier">Criação de novo cliente</span>	
	  	<form action="clientes">	
	  		<br>
	  		<input hidden name="action" value="gravar">
		  	<p>RG:<input type="number"name="rg" required></p> 
		  	<p>Nome: <input type="text" name="nome" required></p>
			<p>Gênero: <input type="text" name="genero" required> </p>
			<button type=button onclick="window.location.href='/MercadoPolivalente/clientes'">
				<i class="fa fa-window-close-o" aria-hidden="true"></i> Cancelar
			</button>
	 		<button type=submit>
	 			<i class="fa fa-floppy-o" aria-hidden="true"></i> Gravar
	 		</button>
 		</form>
  	</div>
</c:set>
<t:mainpage>
	<jsp:attribute name="pagecontent">
		${content}
	</jsp:attribute>
</t:mainpage>

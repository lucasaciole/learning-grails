
<%@ page import="br.ufscar.dc.dsw.Transacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transacao.label', default: 'Transacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-transacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-transacao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="transacao.contaCliente.label" default="Conta Cliente" /></th>
					
						<th><g:message code="transacao.caixaEletronico.label" default="Caixa Eletronico" /></th>
					
						<g:sortableColumn property="valor" title="${message(code: 'transacao.valor.label', default: 'Valor')}" />
					
						<g:sortableColumn property="data" title="${message(code: 'transacao.data.label', default: 'Data')}" />
					
						<g:sortableColumn property="quem" title="${message(code: 'transacao.quem.label', default: 'Quem')}" />
					
						<g:sortableColumn property="motivo" title="${message(code: 'transacao.motivo.label', default: 'Motivo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${transacaoInstanceList}" status="i" var="transacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${transacaoInstance.id}">${fieldValue(bean: transacaoInstance, field: "contaCliente")}</g:link></td>
					
						<td>${fieldValue(bean: transacaoInstance, field: "caixaEletronico")}</td>
					
						<td>${fieldValue(bean: transacaoInstance, field: "valor")}</td>
					
						<td><g:formatDate date="${transacaoInstance.data}" /></td>
					
						<td>${fieldValue(bean: transacaoInstance, field: "quem")}</td>
					
						<td>${fieldValue(bean: transacaoInstance, field: "motivo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${transacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

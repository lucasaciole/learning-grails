
<%@ page import="br.ufscar.dc.dsw.ClienteJuridico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'clienteJuridico.label', default: 'ClienteJuridico')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-clienteJuridico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-clienteJuridico" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list clienteJuridico">
			
				<g:if test="${clienteJuridicoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="clienteJuridico.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${clienteJuridicoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteJuridicoInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="clienteJuridico.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:link controller="endereco" action="show" id="${clienteJuridicoInstance?.endereco?.id}">${clienteJuridicoInstance?.endereco?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteJuridicoInstance?.dtMoradia}">
				<li class="fieldcontain">
					<span id="dtMoradia-label" class="property-label"><g:message code="clienteJuridico.dtMoradia.label" default="Dt Moradia" /></span>
					
						<span class="property-value" aria-labelledby="dtMoradia-label"><g:formatDate date="${clienteJuridicoInstance?.dtMoradia}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteJuridicoInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="clienteJuridico.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${clienteJuridicoInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteJuridicoInstance?.CNPJ}">
				<li class="fieldcontain">
					<span id="CNPJ-label" class="property-label"><g:message code="clienteJuridico.CNPJ.label" default="CNPJ" /></span>
					
						<span class="property-value" aria-labelledby="CNPJ-label"><g:fieldValue bean="${clienteJuridicoInstance}" field="CNPJ"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${clienteJuridicoInstance?.contasCliente}">
				<li class="fieldcontain">
					<span id="contasCliente-label" class="property-label"><g:message code="clienteJuridico.contasCliente.label" default="Contas Cliente" /></span>
					
						<g:each in="${clienteJuridicoInstance.contasCliente}" var="c">
						<span class="property-value" aria-labelledby="contasCliente-label"><g:link controller="contaCliente" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:clienteJuridicoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${clienteJuridicoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

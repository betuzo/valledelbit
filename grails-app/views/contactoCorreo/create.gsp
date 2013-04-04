<%@ page import="org.valledelbit.domain.ContactoCorreo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contactoCorreo.label', default: 'ContactoCorreo')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-contactoCorreo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="create-contactoCorreo" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${contactoCorreoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${contactoCorreoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<div class="fieldcontain ${hasErrors(bean: contactoCorreoInstance, field: 'nombre', 'error')} ">
						<label for="nombre">
							<g:message code="contactoCorreo.nombre.label" default="Nombre" />
							
						</label>
						<g:field name="nombre" value="${contactoCorreoInstance?.nombre}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: contactoCorreoInstance, field: 'email', 'error')} ">
						<label for="email">
							<g:message code="contactoCorreo.email.label" default="Email" />
							
						</label>
						<g:field type="email" name="email" value="${contactoCorreoInstance?.email}"/>
					</div>

					<div class="fieldcontain ${hasErrors(bean: contactoCorreoInstance, field: 'fechaAlta', 'error')} required">
						<label for="fechaAlta">
							<g:message code="contactoCorreo.fechaAlta.label" default="Fecha Alta" />
							<span class="required-indicator">*</span>
						</label>
						<g:datePicker name="fechaAlta" precision="day"  value="${contactoCorreoInstance?.fechaAlta}"  />
					</div>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

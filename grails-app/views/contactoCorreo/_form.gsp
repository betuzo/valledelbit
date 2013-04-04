<%@ page import="org.valledelbit.domain.ContactoCorreo" %>



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


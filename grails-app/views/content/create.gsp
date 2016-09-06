<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'content.label', default: 'Content')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-content" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-content" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.content}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.content}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
                    title: <g:field name="title" type="text" size="15"/><br />
                    summary: <g:field name="summary" type="text" size="30" /><br />
                    text: <g:textArea name="text" /><br />
                    type: <g:select name="type" from="${["journal", "SMS", "audio", "video", "image"]}" /><br />
                    textFormat: <g:select name="textFormat" from="${["text", "file"]}" /><br />
                    timelineDate: <g:datePicker name="timelineDate" value="${new Date()}" relativeYears="[-9..1]" /><br />
                    tags: <g:select name="tags" from="${com.legalink.content.Tag.list()}" value="${tags*.id}" optionKey="id" optionValue="name" noSelection="${['null':'']}" />
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>

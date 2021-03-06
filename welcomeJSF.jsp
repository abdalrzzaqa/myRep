<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%--
    This file is an entry point for JavaServer Faces application.
--%>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
<link rel="stylesheet" type="text/css" href="/saqar/faces/jsfcrud.css" />
        </head>
        <body>
            <h1><h:outputText value="JavaServer Faces"/></h1>
                <h:form>
                    <h:commandLink action="#{mainRootTable.listSetup}" value="Show All MainRootTable Items"/>
                </h:form>

                <h:form>
                    <h:commandLink action="#{lkRootClass.listSetup}" value="Show All LkRootClass Items"/>
                </h:form>

                <h:form>
                    <h:commandLink action="#{lkRoot.listSetup}" value="Show All LkRoot Items"/>
                </h:form>

                <h:form>
                    <h:commandLink action="#{lkDestination.listSetup}" value="Show All LkDestination Items"/>
                </h:form>

                <h:form>
                    <h:commandLink action="#{lkCommericalTrunk.listSetup}" value="Show All LkCommericalTrunk Items"/>
                </h:form>

                <h:form>
                    <h:commandLink action="#{lkAccount.listSetup}" value="Show All LkAccount Items"/>
                </h:form>

        </body>
    </html>
</f:view>

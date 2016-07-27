<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>New LkRootClass</title>
            <link rel="stylesheet" type="text/css" href="/saqar/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>New LkRootClass</h1>
            <h:form>
                <h:inputHidden id="validateCreateField" validator="#{lkRootClass.validateCreate}" value="value"/>
                <h:panelGrid columns="2">
                    <h:outputText value="RcEdesc:"/>
                    <h:inputText id="rcEdesc" value="#{lkRootClass.lkRootClass.rcEdesc}" title="RcEdesc" />
                    <h:outputText value="MainRootTableCollection:"/>
                    <h:selectManyListbox id="mainRootTableCollection" value="#{lkRootClass.lkRootClass.jsfcrud_transform[jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method.collectionToArray][jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method.arrayToList].mainRootTableCollection}" title="MainRootTableCollection" size="6" converter="#{mainRootTable.converter}" >
                        <f:selectItems value="#{mainRootTable.mainRootTableItemsAvailableSelectMany}"/>
                    </h:selectManyListbox>

                </h:panelGrid>
                <br />
                <h:commandLink action="#{lkRootClass.create}" value="Create"/>
                <br />
                <br />
                <h:commandLink action="#{lkRootClass.listSetup}" value="Show All LkRootClass Items" immediate="true"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />

            </h:form>
        </body>
    </html>
</f:view>

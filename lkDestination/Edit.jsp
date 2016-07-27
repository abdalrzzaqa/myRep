<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Editing LkDestination</title>
            <link rel="stylesheet" type="text/css" href="/saqar/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>Editing LkDestination</h1>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="DestSerno:"/>
                    <h:outputText value="#{lkDestination.lkDestination.destSerno}" title="DestSerno" />
                    <h:outputText value="DestEdesc:"/>
                    <h:inputText id="destEdesc" value="#{lkDestination.lkDestination.destEdesc}" title="DestEdesc" />
                    <h:outputText value="MainRootTableCollection:"/>
                    <h:selectManyListbox id="mainRootTableCollection" value="#{lkDestination.lkDestination.jsfcrud_transform[jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method.collectionToArray][jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method.arrayToList].mainRootTableCollection}" title="MainRootTableCollection" size="6" converter="#{mainRootTable.converter}" >
                        <f:selectItems value="#{mainRootTable.mainRootTableItemsAvailableSelectMany}"/>
                    </h:selectManyListbox>

                </h:panelGrid>
                <br />
                <h:commandLink action="#{lkDestination.edit}" value="Save">
                    <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][lkDestination.lkDestination][lkDestination.converter].jsfcrud_invoke}"/>
                </h:commandLink>
                <br />
                <br />
                <h:commandLink action="#{lkDestination.detailSetup}" value="Show" immediate="true">
                    <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][lkDestination.lkDestination][lkDestination.converter].jsfcrud_invoke}"/>
                </h:commandLink>
                <br />
                <h:commandLink action="#{lkDestination.listSetup}" value="Show All LkDestination Items" immediate="true"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />

            </h:form>
        </body>
    </html>
</f:view>

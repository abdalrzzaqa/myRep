<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>New LkCommericalTrunk</title>
            <link rel="stylesheet" type="text/css" href="/saqar/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>New LkCommericalTrunk</h1>
            <h:form>
                <h:inputHidden id="validateCreateField" validator="#{lkCommericalTrunk.validateCreate}" value="value"/>
                <h:panelGrid columns="2">
                    <h:outputText value="CtEdesc:"/>
                    <h:inputText id="ctEdesc" value="#{lkCommericalTrunk.lkCommericalTrunk.ctEdesc}" title="CtEdesc" />
                    <h:outputText value="AccSerno:"/>
                    <h:selectOneMenu id="accSerno" value="#{lkCommericalTrunk.lkCommericalTrunk.accSerno}" title="AccSerno" >
                        <f:selectItems value="#{lkAccount.lkAccountItemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputText value="MainRootTableCollection:"/>
                    <h:selectManyListbox id="mainRootTableCollection" value="#{lkCommericalTrunk.lkCommericalTrunk.jsfcrud_transform[jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method.collectionToArray][jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method.arrayToList].mainRootTableCollection}" title="MainRootTableCollection" size="6" converter="#{mainRootTable.converter}" >
                        <f:selectItems value="#{mainRootTable.mainRootTableItemsAvailableSelectMany}"/>
                    </h:selectManyListbox>

                </h:panelGrid>
                <br />
                <h:commandLink action="#{lkCommericalTrunk.create}" value="Create"/>
                <br />
                <br />
                <h:commandLink action="#{lkCommericalTrunk.listSetup}" value="Show All LkCommericalTrunk Items" immediate="true"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />

            </h:form>
        </body>
    </html>
</f:view>

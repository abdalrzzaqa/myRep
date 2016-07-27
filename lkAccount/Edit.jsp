<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Editing LkAccount</title>
            <link rel="stylesheet" type="text/css" href="/saqar/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>Editing LkAccount</h1>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="AccSerno:"/>
                    <h:outputText value="#{lkAccount.lkAccount.accSerno}" title="AccSerno" />
                    <h:outputText value="AccEdesc:"/>
                    <h:inputText id="accEdesc" value="#{lkAccount.lkAccount.accEdesc}" title="AccEdesc" />
                    <h:outputText value="LkCommericalTrunkCollection:"/>
                    <h:selectManyListbox id="lkCommericalTrunkCollection" value="#{lkAccount.lkAccount.jsfcrud_transform[jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method.collectionToArray][jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method.arrayToList].lkCommericalTrunkCollection}" title="LkCommericalTrunkCollection" size="6" converter="#{lkCommericalTrunk.converter}" >
                        <f:selectItems value="#{lkCommericalTrunk.lkCommericalTrunkItemsAvailableSelectMany}"/>
                    </h:selectManyListbox>
                    <h:outputText value="MainRootTableCollection:"/>
                    <h:selectManyListbox id="mainRootTableCollection" value="#{lkAccount.lkAccount.jsfcrud_transform[jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method.collectionToArray][jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method.arrayToList].mainRootTableCollection}" title="MainRootTableCollection" size="6" converter="#{mainRootTable.converter}" >
                        <f:selectItems value="#{mainRootTable.mainRootTableItemsAvailableSelectMany}"/>
                    </h:selectManyListbox>

                </h:panelGrid>
                <br />
                <h:commandLink action="#{lkAccount.edit}" value="Save">
                    <f:param name="jsfcrud.currentLkAccount" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][lkAccount.lkAccount][lkAccount.converter].jsfcrud_invoke}"/>
                </h:commandLink>
                <br />
                <br />
                <h:commandLink action="#{lkAccount.detailSetup}" value="Show" immediate="true">
                    <f:param name="jsfcrud.currentLkAccount" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][lkAccount.lkAccount][lkAccount.converter].jsfcrud_invoke}"/>
                </h:commandLink>
                <br />
                <h:commandLink action="#{lkAccount.listSetup}" value="Show All LkAccount Items" immediate="true"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />

            </h:form>
        </body>
    </html>
</f:view>

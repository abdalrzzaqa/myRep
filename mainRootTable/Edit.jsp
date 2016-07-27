<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Editing MainRootTable</title>
            <link rel="stylesheet" type="text/css" href="/saqar/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>Editing MainRootTable</h1>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="RsSerno:"/>
                    <h:outputText value="#{mainRootTable.mainRootTable.rsSerno}" title="RsSerno" />
                    <h:outputText value="S1:"/>
                    <h:inputText id="s1" value="#{mainRootTable.mainRootTable.s1}" title="S1" />
                    <h:outputText value="S2:"/>
                    <h:inputText id="s2" value="#{mainRootTable.mainRootTable.s2}" title="S2" />
                    <h:outputText value="S3:"/>
                    <h:inputText id="s3" value="#{mainRootTable.mainRootTable.s3}" title="S3" />
                    <h:outputText value="S4:"/>
                    <h:inputText id="s4" value="#{mainRootTable.mainRootTable.s4}" title="S4" />
                    <h:outputText value="S5:"/>
                    <h:inputText id="s5" value="#{mainRootTable.mainRootTable.s5}" title="S5" />
                    <h:outputText value="S6:"/>
                    <h:inputText id="s6" value="#{mainRootTable.mainRootTable.s6}" title="S6" />
                    <h:outputText value="S7:"/>
                    <h:inputText id="s7" value="#{mainRootTable.mainRootTable.s7}" title="S7" />
                    <h:outputText value="R3:"/>
                    <h:selectOneMenu id="r3" value="#{mainRootTable.mainRootTable.r3}" title="R3" >
                        <f:selectItems value="#{lkRoot.lkRootItemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputText value="R2:"/>
                    <h:selectOneMenu id="r2" value="#{mainRootTable.mainRootTable.r2}" title="R2" >
                        <f:selectItems value="#{lkRoot.lkRootItemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputText value="R1:"/>
                    <h:selectOneMenu id="r1" value="#{mainRootTable.mainRootTable.r1}" title="R1" >
                        <f:selectItems value="#{lkRoot.lkRootItemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputText value="DestSerno:"/>
                    <h:selectOneMenu id="destSerno" value="#{mainRootTable.mainRootTable.destSerno}" title="DestSerno" >
                        <f:selectItems value="#{lkDestination.lkDestinationItemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputText value="CtSerno:"/>
                    <h:selectOneMenu id="ctSerno" value="#{mainRootTable.mainRootTable.ctSerno}" title="CtSerno" >
                        <f:selectItems value="#{lkCommericalTrunk.lkCommericalTrunkItemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputText value="RcSerno:"/>
                    <h:selectOneMenu id="rcSerno" value="#{mainRootTable.mainRootTable.rcSerno}" title="RcSerno" >
                        <f:selectItems value="#{lkRootClass.lkRootClassItemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputText value="R6:"/>
                    <h:selectOneMenu id="r6" value="#{mainRootTable.mainRootTable.r6}" title="R6" >
                        <f:selectItems value="#{lkRoot.lkRootItemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputText value="R5:"/>
                    <h:selectOneMenu id="r5" value="#{mainRootTable.mainRootTable.r5}" title="R5" >
                        <f:selectItems value="#{lkRoot.lkRootItemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputText value="R4:"/>
                    <h:selectOneMenu id="r4" value="#{mainRootTable.mainRootTable.r4}" title="R4" >
                        <f:selectItems value="#{lkRoot.lkRootItemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputText value="AccSerno:"/>
                    <h:selectOneMenu id="accSerno" value="#{mainRootTable.mainRootTable.accSerno}" title="AccSerno" >
                        <f:selectItems value="#{lkAccount.lkAccountItemsAvailableSelectOne}"/>
                    </h:selectOneMenu>
                    <h:outputText value="R7:"/>
                    <h:selectOneMenu id="r7" value="#{mainRootTable.mainRootTable.r7}" title="R7" >
                        <f:selectItems value="#{lkRoot.lkRootItemsAvailableSelectOne}"/>
                    </h:selectOneMenu>

                </h:panelGrid>
                <br />
                <h:commandLink action="#{mainRootTable.edit}" value="Save">
                    <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                </h:commandLink>
                <br />
                <br />
                <h:commandLink action="#{mainRootTable.detailSetup}" value="Show" immediate="true">
                    <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                </h:commandLink>
                <br />
                <h:commandLink action="#{mainRootTable.listSetup}" value="Show All MainRootTable Items" immediate="true"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />

            </h:form>
        </body>
    </html>
</f:view>

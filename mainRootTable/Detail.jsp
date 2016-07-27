<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>MainRootTable Detail</title>
            <link rel="stylesheet" type="text/css" href="/saqar/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>MainRootTable Detail</h1>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="RsSerno:"/>
                    <h:outputText value="#{mainRootTable.mainRootTable.rsSerno}" title="RsSerno" />
                    <h:outputText value="S1:"/>
                    <h:outputText value="#{mainRootTable.mainRootTable.s1}" title="S1" />
                    <h:outputText value="S2:"/>
                    <h:outputText value="#{mainRootTable.mainRootTable.s2}" title="S2" />
                    <h:outputText value="S3:"/>
                    <h:outputText value="#{mainRootTable.mainRootTable.s3}" title="S3" />
                    <h:outputText value="S4:"/>
                    <h:outputText value="#{mainRootTable.mainRootTable.s4}" title="S4" />
                    <h:outputText value="S5:"/>
                    <h:outputText value="#{mainRootTable.mainRootTable.s5}" title="S5" />
                    <h:outputText value="S6:"/>
                    <h:outputText value="#{mainRootTable.mainRootTable.s6}" title="S6" />
                    <h:outputText value="S7:"/>
                    <h:outputText value="#{mainRootTable.mainRootTable.s7}" title="S7" />
                    <h:outputText value="R3:"/>
                    <h:panelGroup>
                        <h:outputText value="#{mainRootTable.mainRootTable.r3}"/>
                        <h:panelGroup rendered="#{mainRootTable.mainRootTable.r3 != null}">
                            <h:outputText value=" ("/>
                            <h:commandLink value="Show" action="#{lkRoot.detailSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r3][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkRoot.editSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r3][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkRoot.destroy}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r3][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" )"/>
                        </h:panelGroup>
                    </h:panelGroup>
                    <h:outputText value="R2:"/>
                    <h:panelGroup>
                        <h:outputText value="#{mainRootTable.mainRootTable.r2}"/>
                        <h:panelGroup rendered="#{mainRootTable.mainRootTable.r2 != null}">
                            <h:outputText value=" ("/>
                            <h:commandLink value="Show" action="#{lkRoot.detailSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r2][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkRoot.editSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r2][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkRoot.destroy}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r2][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" )"/>
                        </h:panelGroup>
                    </h:panelGroup>
                    <h:outputText value="R1:"/>
                    <h:panelGroup>
                        <h:outputText value="#{mainRootTable.mainRootTable.r1}"/>
                        <h:panelGroup rendered="#{mainRootTable.mainRootTable.r1 != null}">
                            <h:outputText value=" ("/>
                            <h:commandLink value="Show" action="#{lkRoot.detailSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r1][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkRoot.editSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r1][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkRoot.destroy}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r1][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" )"/>
                        </h:panelGroup>
                    </h:panelGroup>
                    <h:outputText value="DestSerno:"/>
                    <h:panelGroup>
                        <h:outputText value="#{mainRootTable.mainRootTable.destSerno}"/>
                        <h:panelGroup rendered="#{mainRootTable.mainRootTable.destSerno != null}">
                            <h:outputText value=" ("/>
                            <h:commandLink value="Show" action="#{lkDestination.detailSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.destSerno][lkDestination.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkDestination.editSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.destSerno][lkDestination.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkDestination.destroy}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.destSerno][lkDestination.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" )"/>
                        </h:panelGroup>
                    </h:panelGroup>
                    <h:outputText value="CtSerno:"/>
                    <h:panelGroup>
                        <h:outputText value="#{mainRootTable.mainRootTable.ctSerno}"/>
                        <h:panelGroup rendered="#{mainRootTable.mainRootTable.ctSerno != null}">
                            <h:outputText value=" ("/>
                            <h:commandLink value="Show" action="#{lkCommericalTrunk.detailSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkCommericalTrunk" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.ctSerno][lkCommericalTrunk.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkCommericalTrunk.editSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkCommericalTrunk" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.ctSerno][lkCommericalTrunk.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkCommericalTrunk.destroy}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkCommericalTrunk" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.ctSerno][lkCommericalTrunk.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" )"/>
                        </h:panelGroup>
                    </h:panelGroup>
                    <h:outputText value="RcSerno:"/>
                    <h:panelGroup>
                        <h:outputText value="#{mainRootTable.mainRootTable.rcSerno}"/>
                        <h:panelGroup rendered="#{mainRootTable.mainRootTable.rcSerno != null}">
                            <h:outputText value=" ("/>
                            <h:commandLink value="Show" action="#{lkRootClass.detailSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRootClass" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.rcSerno][lkRootClass.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkRootClass.editSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRootClass" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.rcSerno][lkRootClass.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkRootClass.destroy}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRootClass" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.rcSerno][lkRootClass.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" )"/>
                        </h:panelGroup>
                    </h:panelGroup>
                    <h:outputText value="R6:"/>
                    <h:panelGroup>
                        <h:outputText value="#{mainRootTable.mainRootTable.r6}"/>
                        <h:panelGroup rendered="#{mainRootTable.mainRootTable.r6 != null}">
                            <h:outputText value=" ("/>
                            <h:commandLink value="Show" action="#{lkRoot.detailSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r6][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkRoot.editSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r6][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkRoot.destroy}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r6][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" )"/>
                        </h:panelGroup>
                    </h:panelGroup>
                    <h:outputText value="R5:"/>
                    <h:panelGroup>
                        <h:outputText value="#{mainRootTable.mainRootTable.r5}"/>
                        <h:panelGroup rendered="#{mainRootTable.mainRootTable.r5 != null}">
                            <h:outputText value=" ("/>
                            <h:commandLink value="Show" action="#{lkRoot.detailSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r5][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkRoot.editSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r5][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkRoot.destroy}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r5][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" )"/>
                        </h:panelGroup>
                    </h:panelGroup>
                    <h:outputText value="R4:"/>
                    <h:panelGroup>
                        <h:outputText value="#{mainRootTable.mainRootTable.r4}"/>
                        <h:panelGroup rendered="#{mainRootTable.mainRootTable.r4 != null}">
                            <h:outputText value=" ("/>
                            <h:commandLink value="Show" action="#{lkRoot.detailSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r4][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkRoot.editSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r4][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkRoot.destroy}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r4][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" )"/>
                        </h:panelGroup>
                    </h:panelGroup>
                    <h:outputText value="AccSerno:"/>
                    <h:panelGroup>
                        <h:outputText value="#{mainRootTable.mainRootTable.accSerno}"/>
                        <h:panelGroup rendered="#{mainRootTable.mainRootTable.accSerno != null}">
                            <h:outputText value=" ("/>
                            <h:commandLink value="Show" action="#{lkAccount.detailSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkAccount" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.accSerno][lkAccount.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkAccount.editSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkAccount" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.accSerno][lkAccount.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkAccount.destroy}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkAccount" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.accSerno][lkAccount.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" )"/>
                        </h:panelGroup>
                    </h:panelGroup>
                    <h:outputText value="R7:"/>
                    <h:panelGroup>
                        <h:outputText value="#{mainRootTable.mainRootTable.r7}"/>
                        <h:panelGroup rendered="#{mainRootTable.mainRootTable.r7 != null}">
                            <h:outputText value=" ("/>
                            <h:commandLink value="Show" action="#{lkRoot.detailSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r7][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkRoot.editSetup}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r7][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkRoot.destroy}">
                                <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.currentLkRoot" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable.r7][lkRoot.converter].jsfcrud_invoke}"/>
                                <f:param name="jsfcrud.relatedController" value="mainRootTable"/>
                                <f:param name="jsfcrud.relatedControllerType" value="com.cl.MainRootTableController"/>
                            </h:commandLink>
                            <h:outputText value=" )"/>
                        </h:panelGroup>
                    </h:panelGroup>


                </h:panelGrid>
                <br />
                <h:commandLink action="#{mainRootTable.destroy}" value="Destroy">
                    <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}" />
                </h:commandLink>
                <br />
                <br />
                <h:commandLink action="#{mainRootTable.editSetup}" value="Edit">
                    <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][mainRootTable.mainRootTable][mainRootTable.converter].jsfcrud_invoke}" />
                </h:commandLink>
                <br />
                <h:commandLink action="#{mainRootTable.createSetup}" value="New MainRootTable" />
                <br />
                <h:commandLink action="#{mainRootTable.listSetup}" value="Show All MainRootTable Items"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />

            </h:form>
        </body>
    </html>
</f:view>

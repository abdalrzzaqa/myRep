<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>LkDestination Detail</title>
            <link rel="stylesheet" type="text/css" href="/saqar/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>LkDestination Detail</h1>
            <h:form>
                <h:panelGrid columns="2">
                    <h:outputText value="DestSerno:"/>
                    <h:outputText value="#{lkDestination.lkDestination.destSerno}" title="DestSerno" />
                    <h:outputText value="DestEdesc:"/>
                    <h:outputText value="#{lkDestination.lkDestination.destEdesc}" title="DestEdesc" />

                    <h:outputText value="MainRootTableCollection:" />
                    <h:panelGroup>
                        <h:outputText rendered="#{empty lkDestination.lkDestination.mainRootTableCollection}" value="(No Items)"/>
                        <h:dataTable value="#{lkDestination.lkDestination.mainRootTableCollection}" var="item" 
                                     border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px" 
                                     rendered="#{not empty lkDestination.lkDestination.mainRootTableCollection}">
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="RsSerno"/>
                                </f:facet>
                                <h:outputText value="#{item.rsSerno}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="S1"/>
                                </f:facet>
                                <h:outputText value="#{item.s1}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="S2"/>
                                </f:facet>
                                <h:outputText value="#{item.s2}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="S3"/>
                                </f:facet>
                                <h:outputText value="#{item.s3}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="S4"/>
                                </f:facet>
                                <h:outputText value="#{item.s4}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="S5"/>
                                </f:facet>
                                <h:outputText value="#{item.s5}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="S6"/>
                                </f:facet>
                                <h:outputText value="#{item.s6}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="S7"/>
                                </f:facet>
                                <h:outputText value="#{item.s7}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="R3"/>
                                </f:facet>
                                <h:outputText value="#{item.r3}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="R2"/>
                                </f:facet>
                                <h:outputText value="#{item.r2}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="R1"/>
                                </f:facet>
                                <h:outputText value="#{item.r1}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="DestSerno"/>
                                </f:facet>
                                <h:outputText value="#{item.destSerno}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="CtSerno"/>
                                </f:facet>
                                <h:outputText value="#{item.ctSerno}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="RcSerno"/>
                                </f:facet>
                                <h:outputText value="#{item.rcSerno}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="R6"/>
                                </f:facet>
                                <h:outputText value="#{item.r6}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="R5"/>
                                </f:facet>
                                <h:outputText value="#{item.r5}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="R4"/>
                                </f:facet>
                                <h:outputText value="#{item.r4}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="AccSerno"/>
                                </f:facet>
                                <h:outputText value="#{item.accSerno}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText value="R7"/>
                                </f:facet>
                                <h:outputText value="#{item.r7}"/>
                            </h:column>
                            <h:column>
                                <f:facet name="header">
                                    <h:outputText escape="false" value="&nbsp;"/>
                                </f:facet>
                                <h:commandLink value="Show" action="#{mainRootTable.detailSetup}">
                                    <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][lkDestination.lkDestination][lkDestination.converter].jsfcrud_invoke}"/>
                                    <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][mainRootTable.converter].jsfcrud_invoke}"/>
                                    <f:param name="jsfcrud.relatedController" value="lkDestination" />
                                    <f:param name="jsfcrud.relatedControllerType" value="com.cl.LkDestinationController" />
                                </h:commandLink>
                                <h:outputText value=" "/>
                                <h:commandLink value="Edit" action="#{mainRootTable.editSetup}">
                                    <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][lkDestination.lkDestination][lkDestination.converter].jsfcrud_invoke}"/>
                                    <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][mainRootTable.converter].jsfcrud_invoke}"/>
                                    <f:param name="jsfcrud.relatedController" value="lkDestination" />
                                    <f:param name="jsfcrud.relatedControllerType" value="com.cl.LkDestinationController" />
                                </h:commandLink>
                                <h:outputText value=" "/>
                                <h:commandLink value="Destroy" action="#{mainRootTable.destroy}">
                                    <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][lkDestination.lkDestination][lkDestination.converter].jsfcrud_invoke}"/>
                                    <f:param name="jsfcrud.currentMainRootTable" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][mainRootTable.converter].jsfcrud_invoke}"/>
                                    <f:param name="jsfcrud.relatedController" value="lkDestination" />
                                    <f:param name="jsfcrud.relatedControllerType" value="com.cl.LkDestinationController" />
                                </h:commandLink>
                            </h:column>
                        </h:dataTable>
                    </h:panelGroup>

                </h:panelGrid>
                <br />
                <h:commandLink action="#{lkDestination.destroy}" value="Destroy">
                    <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][lkDestination.lkDestination][lkDestination.converter].jsfcrud_invoke}" />
                </h:commandLink>
                <br />
                <br />
                <h:commandLink action="#{lkDestination.editSetup}" value="Edit">
                    <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][lkDestination.lkDestination][lkDestination.converter].jsfcrud_invoke}" />
                </h:commandLink>
                <br />
                <h:commandLink action="#{lkDestination.createSetup}" value="New LkDestination" />
                <br />
                <h:commandLink action="#{lkDestination.listSetup}" value="Show All LkDestination Items"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />

            </h:form>
        </body>
    </html>
</f:view>

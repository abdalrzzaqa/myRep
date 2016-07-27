<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Listing LkDestination Items</title>
            <link rel="stylesheet" type="text/css" href="/saqar/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>Listing LkDestination Items</h1>
            <h:form styleClass="jsfcrud_list_form">
                <h:outputText escape="false" value="(No LkDestination Items Found)<br />" rendered="#{lkDestination.pagingInfo.itemCount == 0}" />
                <h:panelGroup rendered="#{lkDestination.pagingInfo.itemCount > 0}">
                    <h:outputText value="Item #{lkDestination.pagingInfo.firstItem + 1}..#{lkDestination.pagingInfo.lastItem} of #{lkDestination.pagingInfo.itemCount}"/>&nbsp;
                    <h:commandLink action="#{lkDestination.prev}" value="Previous #{lkDestination.pagingInfo.batchSize}" rendered="#{lkDestination.pagingInfo.firstItem >= lkDestination.pagingInfo.batchSize}"/>&nbsp;
                    <h:commandLink action="#{lkDestination.next}" value="Next #{lkDestination.pagingInfo.batchSize}" rendered="#{lkDestination.pagingInfo.lastItem + lkDestination.pagingInfo.batchSize <= lkDestination.pagingInfo.itemCount}"/>&nbsp;
                    <h:commandLink action="#{lkDestination.next}" value="Remaining #{lkDestination.pagingInfo.itemCount - lkDestination.pagingInfo.lastItem}"
                                   rendered="#{lkDestination.pagingInfo.lastItem < lkDestination.pagingInfo.itemCount && lkDestination.pagingInfo.lastItem + lkDestination.pagingInfo.batchSize > lkDestination.pagingInfo.itemCount}"/>
                    <h:dataTable value="#{lkDestination.lkDestinationItems}" var="item" border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px">
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="DestSerno"/>
                            </f:facet>
                            <h:outputText value="#{item.destSerno}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="DestEdesc"/>
                            </f:facet>
                            <h:outputText value="#{item.destEdesc}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText escape="false" value="&nbsp;"/>
                            </f:facet>
                            <h:commandLink value="Show" action="#{lkDestination.detailSetup}">
                                <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][lkDestination.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkDestination.editSetup}">
                                <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][lkDestination.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkDestination.destroy}">
                                <f:param name="jsfcrud.currentLkDestination" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][lkDestination.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                        </h:column>

                    </h:dataTable>
                </h:panelGroup>
                <br />
                <h:commandLink action="#{lkDestination.createSetup}" value="New LkDestination"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />


            </h:form>
        </body>
    </html>
</f:view>

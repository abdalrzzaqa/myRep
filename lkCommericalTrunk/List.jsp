<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Listing LkCommericalTrunk Items</title>
            <link rel="stylesheet" type="text/css" href="/saqar/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>Listing LkCommericalTrunk Items</h1>
            <h:form styleClass="jsfcrud_list_form">
                <h:outputText escape="false" value="(No LkCommericalTrunk Items Found)<br />" rendered="#{lkCommericalTrunk.pagingInfo.itemCount == 0}" />
                <h:panelGroup rendered="#{lkCommericalTrunk.pagingInfo.itemCount > 0}">
                    <h:outputText value="Item #{lkCommericalTrunk.pagingInfo.firstItem + 1}..#{lkCommericalTrunk.pagingInfo.lastItem} of #{lkCommericalTrunk.pagingInfo.itemCount}"/>&nbsp;
                    <h:commandLink action="#{lkCommericalTrunk.prev}" value="Previous #{lkCommericalTrunk.pagingInfo.batchSize}" rendered="#{lkCommericalTrunk.pagingInfo.firstItem >= lkCommericalTrunk.pagingInfo.batchSize}"/>&nbsp;
                    <h:commandLink action="#{lkCommericalTrunk.next}" value="Next #{lkCommericalTrunk.pagingInfo.batchSize}" rendered="#{lkCommericalTrunk.pagingInfo.lastItem + lkCommericalTrunk.pagingInfo.batchSize <= lkCommericalTrunk.pagingInfo.itemCount}"/>&nbsp;
                    <h:commandLink action="#{lkCommericalTrunk.next}" value="Remaining #{lkCommericalTrunk.pagingInfo.itemCount - lkCommericalTrunk.pagingInfo.lastItem}"
                                   rendered="#{lkCommericalTrunk.pagingInfo.lastItem < lkCommericalTrunk.pagingInfo.itemCount && lkCommericalTrunk.pagingInfo.lastItem + lkCommericalTrunk.pagingInfo.batchSize > lkCommericalTrunk.pagingInfo.itemCount}"/>
                    <h:dataTable value="#{lkCommericalTrunk.lkCommericalTrunkItems}" var="item" border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px">
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="CtSerno"/>
                            </f:facet>
                            <h:outputText value="#{item.ctSerno}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="CtEdesc"/>
                            </f:facet>
                            <h:outputText value="#{item.ctEdesc}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="AccSerno"/>
                            </f:facet>
                            <h:outputText value="#{item.accSerno}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText escape="false" value="&nbsp;"/>
                            </f:facet>
                            <h:commandLink value="Show" action="#{lkCommericalTrunk.detailSetup}">
                                <f:param name="jsfcrud.currentLkCommericalTrunk" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][lkCommericalTrunk.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkCommericalTrunk.editSetup}">
                                <f:param name="jsfcrud.currentLkCommericalTrunk" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][lkCommericalTrunk.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkCommericalTrunk.destroy}">
                                <f:param name="jsfcrud.currentLkCommericalTrunk" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][lkCommericalTrunk.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                        </h:column>

                    </h:dataTable>
                </h:panelGroup>
                <br />
                <h:commandLink action="#{lkCommericalTrunk.createSetup}" value="New LkCommericalTrunk"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />


            </h:form>
        </body>
    </html>
</f:view>

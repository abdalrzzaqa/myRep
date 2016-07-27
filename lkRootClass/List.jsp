<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Listing LkRootClass Items</title>
            <link rel="stylesheet" type="text/css" href="/saqar/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>Listing LkRootClass Items</h1>
            <h:form styleClass="jsfcrud_list_form">
                <h:outputText escape="false" value="(No LkRootClass Items Found)<br />" rendered="#{lkRootClass.pagingInfo.itemCount == 0}" />
                <h:panelGroup rendered="#{lkRootClass.pagingInfo.itemCount > 0}">
                    <h:outputText value="Item #{lkRootClass.pagingInfo.firstItem + 1}..#{lkRootClass.pagingInfo.lastItem} of #{lkRootClass.pagingInfo.itemCount}"/>&nbsp;
                    <h:commandLink action="#{lkRootClass.prev}" value="Previous #{lkRootClass.pagingInfo.batchSize}" rendered="#{lkRootClass.pagingInfo.firstItem >= lkRootClass.pagingInfo.batchSize}"/>&nbsp;
                    <h:commandLink action="#{lkRootClass.next}" value="Next #{lkRootClass.pagingInfo.batchSize}" rendered="#{lkRootClass.pagingInfo.lastItem + lkRootClass.pagingInfo.batchSize <= lkRootClass.pagingInfo.itemCount}"/>&nbsp;
                    <h:commandLink action="#{lkRootClass.next}" value="Remaining #{lkRootClass.pagingInfo.itemCount - lkRootClass.pagingInfo.lastItem}"
                                   rendered="#{lkRootClass.pagingInfo.lastItem < lkRootClass.pagingInfo.itemCount && lkRootClass.pagingInfo.lastItem + lkRootClass.pagingInfo.batchSize > lkRootClass.pagingInfo.itemCount}"/>
                    <h:dataTable value="#{lkRootClass.lkRootClassItems}" var="item" border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px">
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="RcSerno"/>
                            </f:facet>
                            <h:outputText value="#{item.rcSerno}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="RcEdesc"/>
                            </f:facet>
                            <h:outputText value="#{item.rcEdesc}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText escape="false" value="&nbsp;"/>
                            </f:facet>
                            <h:commandLink value="Show" action="#{lkRootClass.detailSetup}">
                                <f:param name="jsfcrud.currentLkRootClass" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][lkRootClass.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkRootClass.editSetup}">
                                <f:param name="jsfcrud.currentLkRootClass" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][lkRootClass.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkRootClass.destroy}">
                                <f:param name="jsfcrud.currentLkRootClass" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][lkRootClass.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                        </h:column>

                    </h:dataTable>
                </h:panelGroup>
                <br />
                <h:commandLink action="#{lkRootClass.createSetup}" value="New LkRootClass"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />


            </h:form>
        </body>
    </html>
</f:view>

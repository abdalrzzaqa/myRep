<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
            <title>Listing LkAccount Items</title>
            <link rel="stylesheet" type="text/css" href="/saqar/faces/jsfcrud.css" />
        </head>
        <body>
            <h:panelGroup id="messagePanel" layout="block">
                <h:messages errorStyle="color: red" infoStyle="color: green" layout="table"/>
            </h:panelGroup>
            <h1>Listing LkAccount Items</h1>
            <h:form styleClass="jsfcrud_list_form">
                <h:outputText escape="false" value="(No LkAccount Items Found)<br />" rendered="#{lkAccount.pagingInfo.itemCount == 0}" />
                <h:panelGroup rendered="#{lkAccount.pagingInfo.itemCount > 0}">
                    <h:outputText value="Item #{lkAccount.pagingInfo.firstItem + 1}..#{lkAccount.pagingInfo.lastItem} of #{lkAccount.pagingInfo.itemCount}"/>&nbsp;
                    <h:commandLink action="#{lkAccount.prev}" value="Previous #{lkAccount.pagingInfo.batchSize}" rendered="#{lkAccount.pagingInfo.firstItem >= lkAccount.pagingInfo.batchSize}"/>&nbsp;
                    <h:commandLink action="#{lkAccount.next}" value="Next #{lkAccount.pagingInfo.batchSize}" rendered="#{lkAccount.pagingInfo.lastItem + lkAccount.pagingInfo.batchSize <= lkAccount.pagingInfo.itemCount}"/>&nbsp;
                    <h:commandLink action="#{lkAccount.next}" value="Remaining #{lkAccount.pagingInfo.itemCount - lkAccount.pagingInfo.lastItem}"
                                   rendered="#{lkAccount.pagingInfo.lastItem < lkAccount.pagingInfo.itemCount && lkAccount.pagingInfo.lastItem + lkAccount.pagingInfo.batchSize > lkAccount.pagingInfo.itemCount}"/>
                    <h:dataTable value="#{lkAccount.lkAccountItems}" var="item" border="0" cellpadding="2" cellspacing="0" rowClasses="jsfcrud_odd_row,jsfcrud_even_row" rules="all" style="border:solid 1px">
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="AccSerno"/>
                            </f:facet>
                            <h:outputText value="#{item.accSerno}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText value="AccEdesc"/>
                            </f:facet>
                            <h:outputText value="#{item.accEdesc}"/>
                        </h:column>
                        <h:column>
                            <f:facet name="header">
                                <h:outputText escape="false" value="&nbsp;"/>
                            </f:facet>
                            <h:commandLink value="Show" action="#{lkAccount.detailSetup}">
                                <f:param name="jsfcrud.currentLkAccount" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][lkAccount.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Edit" action="#{lkAccount.editSetup}">
                                <f:param name="jsfcrud.currentLkAccount" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][lkAccount.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                            <h:outputText value=" "/>
                            <h:commandLink value="Destroy" action="#{lkAccount.destroy}">
                                <f:param name="jsfcrud.currentLkAccount" value="#{jsfcrud_class['com.cl.util.JsfUtil'].jsfcrud_method['getAsConvertedString'][item][lkAccount.converter].jsfcrud_invoke}"/>
                            </h:commandLink>
                        </h:column>

                    </h:dataTable>
                </h:panelGroup>
                <br />
                <h:commandLink action="#{lkAccount.createSetup}" value="New LkAccount"/>
                <br />
                <br />
                <h:commandLink value="Index" action="welcome" immediate="true" />


            </h:form>
        </body>
    </html>
</f:view>

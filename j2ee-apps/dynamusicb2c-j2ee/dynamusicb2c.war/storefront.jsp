<%@ taglib uri="/dspTaglib" prefix="dsp" %>
<%@ page isELIgnored="false" %>
<dsp:importbean bean="/atg/targeting/TargetingForEach"/>
<dsp:importbean bean="/atg/registry/RepositoryTargeters/ProductCatalog/RootCategories"/>
<dsp:importbean bean="/atg/userprofiling/Profile"/>
<dsp:page>

    <!-- ATG Training -->
    <!-- Creating Commerce Applications -->
    <!-- storefront page to loop through rootCategories property -->
    <!-- Last modified: 1 May 07 by RM -->

    <!-- this is a holder page for the chapter 3 labs -->

    <!-- Title: DynamusicB2C Storefront -->

    <HTML>
    <HEAD>
        <TITLE>Dynamusic Store</TITLE>
    </HEAD>
    <BODY>
    <dsp:include page="common/header.jsp">
        <dsp:param name="pagename" value="Dynamusic Store"/>
    </dsp:include>
    <table width="700" cellpadding="8">
        <tr>
            <!-- Sidebar -->
            <td width="100" bgcolor="ghostwhite" valign="top">
                <dsp:include page="navbar.jsp">
                </dsp:include>
            </td>
            <!-- Page Body -->
            <td valign="top">
                <font face="Verdana,Geneva,Arial" size="+1" color="midnightblue">

                        <%-- Chapter 3, Exercise 1: Create a Front Page for Your Catalog --%>
                        <%-- Insert TargetingForEach to loop through RootCategories below this line --%>
                    <dsp:droplet name="TargetingForEach">
                        <dsp:param name="targeter" bean="RootCategories"/>
                        <dsp:oparam name="output">
                            <dsp:getvalueof var="templateURL" param="element.template.url"/>
                            <dsp:a href="${templateURL}">
                                <dsp:param name="itemId" param="element.repositoryId"/>
                                <dsp:valueof param="element.displayName"/>
                            </dsp:a>
                            <br>
                        </dsp:oparam>
                    </dsp:droplet>


                        <%-- End: TargetingForEach --%>

                </font>
            </td>
        </tr>
    </table>
    </BODY>
    </HTML>

</dsp:page>
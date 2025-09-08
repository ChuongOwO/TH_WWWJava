<%--
  Created by IntelliJ IDEA.
  User: chuon
  Date: 9/8/2025
  Time: 7:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<meta charset="UTF-8">
<title>Multi-language Demo</title>

<c:set var="languageCode" value="${sessionScope.languageCode}"/>
<c:if test="${not empty languageCode}">
  <fmt:setLocale value="${languageCode}" scope="session"/>
</c:if>

<fmt:setBundle basename="language_resource" scope="session"/>

<form method="POST" action="multiLanguage">
  <input type="radio" name="languageCode" value="vi" ${languageCode == 'vi' ? 'checked' : ''}/> <fmt:message
        key="lang_vi"/>
  <input type="radio" name="languageCode" value="en" ${languageCode == 'en' ? 'checked' : ''}/> <fmt:message
        key="lang_en"/>
  <input type="radio" name="languageCode" value="fr" ${languageCode == 'fr' ? 'checked' : ''}/> <fmt:message
        key="lang_fr"/>
  <input type="radio" name="languageCode" value="ko" ${languageCode == 'ko' ? 'checked' : ''}/> <fmt:message
        key="lang_ko"/>
  <input type="radio" name="languageCode" value="zh_cn" ${languageCode == 'zh_cn' ? 'checked' : ''}/> <fmt:message
        key="lang_zh_cn"/>
  <input type="radio" name="languageCode" value="zh_tw" ${languageCode == 'zh_tw' ? 'checked' : ''}/> <fmt:message
        key="lang_zh_tw"/>


  <input type="submit" name="submit" value="<fmt:message key='chooseButton'/>"/>
</form>

<form method="POST" action="multiLanguage">
  <table>
    <tr>
      <td><fmt:message key="userName"/>:</td>
      <td><input type="text" name="userName" style="width:200px;"/></td>
    </tr>
    <tr>
      <td><fmt:message key="userPassword"/>:</td>
      <td><input type="password" name="userPassword" style="width:200px;"/></td>
    </tr>
    <tr>
      <td colspan="2" style="text-align:center;">
        <input type="submit" name="submit" value="<fmt:message key='login'/>"/>
      </td>
    </tr>
  </table>
</form>



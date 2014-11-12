<%@page import="com.thanhnhan.service.base.SanPhamLocalServiceBaseImpl"%>
<%@page import="com.thanhnhan.model.impl.SanPhamImpl"%>
<%@page import="com.thanhnhan.service.SanPhamLocalService"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>


<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ include file="/init.jsp"%>
<portlet:defineObjects />
<%
	List<SanPham> listSP = ActionUtil.getListSPs();
	SanPham sp = new SanPhamImpl();
%>
<%--  <c:forEach var="sp" items="${sp}"> --%>
<%--  <c:out value="${sp.desc}"></c:out> --%>
<%--  </c:forEach> --%>
<%
	if (listSP == null) {
%>
Không có sản phẩm nào
<%
	} // end if
	else {

		for (SanPham s : listSP) {
%>
<div class="sanpham-item spid_<%=s.getSpId()%>">
	<div class="img-thumb"><%=s.getImage()%></div>
	<div class="sp-info">
		<span class="sp-name"> <%=s.getSpName()%></span><br /> 
		Giá: <span class="sp-gia"> <%=s.getGia()%></span>
	</div>
</div>

<%
	}
%>

<%
	} // end else
%>
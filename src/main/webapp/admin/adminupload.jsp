<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>
<html>
<jsp:include page="/header.jsp" />

<body

<% BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService(); %>
	<form action="<%= blobstoreService.createUploadUrl("/admin/upload") %>" method="post" enctype="multipart/form-data">
        <input type="file" name="myFile">
        <input type="submit" value="Submit">
	</form>

</body>
</html>
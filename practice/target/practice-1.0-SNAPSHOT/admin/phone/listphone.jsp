<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.practice.entity.Phone" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.practice.repository.JpaRepository" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    request.setCharacterEncoding("utf-8");
    ArrayList<Phone> list =(ArrayList<Phone>) request.getAttribute("list");

%>
<!DOCTYPE html>
<html>
<body>
<jsp:include page="/admin/include/head.jsp">
    <jsp:param name="title" value="Admin page"/>
</jsp:include>

<!-- Sidebar/menu -->
<jsp:include page="/admin/include/left-menu.jsp"/>
<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;">
    <!-- Header -->
    <header class="w3-container" style="padding-top:22px">
        <div class="w3-container w3-brown">
            <h2 style="margin-top: 35px">Add New Product</h2>
        </div>
    </header>
    <div class="w3-container">
        <table class="w3-table-all">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Brand</th>
                <th>Price</th>
                <th>Description</th>
            </tr>
            <%
                for (int i = 0; i < list.size(); i++) {
            %>
            <tr>
                <th><%=list.get(i).getId()%></th>
                <th><%=list.get(i).getName()%></th>
                <th><%=list.get(i).getBrand()%></th>
                <th><%=list.get(i).getPrice()%></th>
                <th><%=list.get(i).getDescription()%></th>
            </tr>
            <%
                }
            %>
        </table>
    </div>
    <jsp:include page="/admin/include/footer.jsp"/>
</div>

<jsp:include page="/admin/include/script.jsp"/>

</body>
</html>

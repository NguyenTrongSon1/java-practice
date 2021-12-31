<%@ page import="java.util.HashMap" %>
<%@ page import="com.example.practice.entity.Phone" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Phone phone =(Phone)  request.getAttribute("phone");
    HashMap<String,String> errors =(HashMap<String,String>) request.getAttribute("errors");
    if(phone == null){
        phone = new Phone();
    }
    if (errors == null){
        errors = new HashMap<>();
    }
%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<jsp:include page="/admin/include/head.jsp">
    <jsp:param name="title" value="Admin page"/>
</jsp:include>
<!-- Sidebar/menu -->
<jsp:include page="/admin/include/left-menu.jsp"/>
<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;">
    <div class="w3-card-4">
        <header class="w3-container" style="padding-top:22px">
            <div class="w3-container w3-brown">
                <h2 style="margin-top: 35px">Add New Product</h2>
            </div>
        </header>
        <form class="w3-container" action="/admin/create" method="post">
            <p>
                <label class="w3-text-brown"><b>Name</b></label>
                <input class="w3-input w3-border w3-sand" name="name" type="text" required value="<%=phone.getName()%>">
                <%
                    if (errors.containsKey("name")){
                %>
                <span class="w3-text-red w3-margin">*<%=errors.get("name")%></span>
                <%
                    }
                %>
            </p>
            <p>
                <label class="w3-text-brown"><b>Brand</b></label>

                <input class="w3-input w3-border w3-sand" name="category" type="text" required value="<%=phone.getBrand()%>">
                <%
                    if (errors.containsKey("brand")){
                %>
                <span class="w3-text-red w3-margin">*<%=errors.get("brand")%></span>
                <%
                    }
                %>
            </p>
            <p>
                <label class="w3-text-brown"><b>Description</b></label>
                <input class="w3-input w3-border w3-sand" name="description" type="text" required value="<%=phone.getDescription()%>">
                <%
                    if (errors.containsKey("description")){
                %>
                <span class="w3-text-red w3-margin">*<%=errors.get("description")%></span>
                <%
                    }
                %>
            </p>

            <p>
                <label class="w3-text-brown"><b>Price</b></label>
                <input class="w3-input w3-border w3-sand" name="price" type="text" required value="<%=phone.getPrice()%>">
                <%
                    if (errors.containsKey("price")){
                %>
                <span class="w3-text-red w3-margin">*<%=errors.get("price")%></span>
                <%
                    }
                %>
            </p>
            <p>
                <button class="w3-btn w3-brown">Submit</button>
            </p>
            <p>
                <button class="w3-btn w3-brown">Reset</button>
            </p>
        </form>
    </div>

    <jsp:include page="/admin/include/footer.jsp"/>
</div>

<jsp:include page="/admin/include/script.jsp"/>
</body>
</html>

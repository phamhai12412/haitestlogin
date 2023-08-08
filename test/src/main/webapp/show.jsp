<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Servlet Sweet Alert Example</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>
<body>
<h1>Sweet Alert Page</h1>
<form action="${pageContext.request.contextPath}/ShowSweetAlertServlet" method="get">
    <label for="a">a</label>
    <input type="text" id="a" disabled value="${a}">
    <input type="hidden" name="a" value="${a}">
    <label for="b">b</label>
    <input type="text" id="b" disabled value="${b}">
    <input type="hidden" name="b" value="${b}">
    <input type="text" name="ketqua" required>
    <input type="submit" value="kiemtra" name="action" id="showAlertButton">
</form>
<% if (request.getAttribute("thanhcong") != null && request.getAttribute("thanhcong").equals("ok")) { %>
<script>
    Swal.fire({
        icon: 'success',
        title: 'Thành công!',
        text: 'Kết quả chính xác.',
    }).then(function() {
        window.location.href = "${pageContext.request.contextPath}/home.jsp";
    });
</script>
<% } else if (request.getAttribute("thanhcong") != null && !request.getAttribute("thanhcong").equals("ok")) { %>
<script>
    Swal.fire({
        icon: 'error',
        title: 'Thất bại!',
        text: 'Kết quả không chính xác.',
    }).then(function() {
        window.location.href = "${pageContext.request.contextPath}/index.jsp";
    });
</script>
<% } %>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="ko">
  <%@ include file="../include/header.jspf" %>
  <body>
    <%@ include file="../include/navigation.jspf" %>
    <div class="navbar-default">
      <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
        <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
          <li><a href="/home.jsp" class="nav-link px-2 link-secondary">Q&A</a></li>
          <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
          <li><a href="/user/userList" class="nav-link px-2 link-dark">User List</a></li>
          <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
        </ul>

        <div class="col-md-3 text-end">
            <c:choose>
            <c:when test="${not empty sessionScope.user}">
                <a href="/user/logout" role="button" class="btn btn-outline-primary me-2">Log-Out</a>
                <a href="/user/updateForm?userId=${sessionScope.user.userId}" role="button" class="btn btn-primary" >개인정보수정</a>
            </c:when>
            <c:otherwise>
                <a href="/user/login.jsp" type="button" class="btn btn-outline-primary me-2">Log-In</a>
                <a href="/user/form.jsp" type="button" class="btn btn-primary">Sign-up</a>
            </c:otherwise>
            </c:choose>
        </div>
      </header>
    </div>

    <div class="container" id="main">

        <main class="form-signin">

          <form name="sign-up" method="post" action="/user/updateForm">
            <div class="form-floating">
              <input type="text" class="form-control" value="${user.userId}" id="userId" name="userId" placeholder="Id" readonly>
              <label for="userId">User Id</label>
            </div>
            <div class="form-floating">
              <input type="password" class="form-control" value = "${user.password}" id="password" name="password" placeholder="Password">
              <label for="password">Password</label>
            </div>
            <div class="form-floating">
              <input type="text" class="form-control" value = "${user.name}" id="name" name="name" placeholder="name">
              <label for="name">Name</label>
            </div>
            <div class="form-floating">
              <input type="email" class="form-control" value = "${user.email}" id="email" name="email" placeholder="name@example.com">
              <label for="email">Email address</label>
            </div>
            <div style="height:10px;">
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">Sign up</button>
          </form>
        </main>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../js/scripts.js"></script>
  </body>
</html>
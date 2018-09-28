<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<style>
	/* Remove the navbar's default margin-bottom and rounded borders */
	.navbar {
		margin-bottom: 0;
		border-radius: 0;	
	}
	/*  #toparea{
		padding: 30px;
	}  */
	/* body{
		background-color: #edeef1
	} */
</style>
<title>Insert title here</title>
</head>
<body>
  <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="/airport/main/index.do">Airport</a>
            <a class="navbar-brand" href="/airport/erp/index.do">Corporation</a>
          </div>
          <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav">
              <li class="nav-item">
              <c:choose>
					<c:when test="${empty erploginUser}">
             	<a class="nav-link" href="/airport/erp/login.do">
                 login
                </a>
                </c:when>
                <c:otherwise>
                <a class="nav-link" href="/airport/erp/logout.do">
                 logout
                </a>
                </c:otherwise>
              </c:choose>  
              </li>
              <c:if test="${!empty erploginUser }">
              <li class="nav-item">
                <a class="nav-link" href="/airport/erp/empservice.do">
                  <i class="material-icons">person</i>
                </a>
              </li>
              </c:if>
            </ul>
          </div>
        </div>
      </nav>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
      <div class="content">
        <div class="container">
          <div class="col-lg-6 col-md-8 ml-auto mr-auto">
            <form class="form" method="post" action="/airport/erp/login.do">
           <!--  <form class="form" method="post" action=" /airport/j_spring_security_check"> -->
              <div class="card card-login">
                <div class="card-header ">
                  <div class="card-header ">
                    <h3 class="header text-center">Login</h3>
                  </div>
                </div>
                <div class="card-body ">
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="nc-icon nc-single-02"></i>
                      </span>
                    </div>
                    <input type="text" class="form-control" name="empid" placeholder="ID.">
                  </div>
                  <br/>
                  <div class="input-group">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="nc-icon nc-key-25"></i>
                      </span>
                    </div>
                    <input type="password" name="pwd" placeholder="Password" class="form-control">
                  </div>
                  <br/>
                  <!-- <div class="form-group">
                    <div class="form-check">
                      <label class="form-check-label">
                        <input type="checkbox" value="">
                        <span class="form-check-sign"></span>
                       remember
                      </label>
                    </div>
                  </div> -->
                </div>
                <div class="card-footer">
                	<input type="submit" class="btn btn-warning btn-round btn-block mb-3" value="login">
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>

</body>
</html>
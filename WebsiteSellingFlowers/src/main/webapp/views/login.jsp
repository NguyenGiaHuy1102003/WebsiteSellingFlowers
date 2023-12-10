<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Login Account</title>
<style type="text/css">
	.divider:after,
.divider:before {
content: "";
flex: 1;
height: 1px;
background: #eee;
}
</style>
</head>
<body>
	<%-- <div class="row" style="border: 1px darkgrey solid; border-radius: 10px;width: 50%; margin: 0 auto; padding: 20px;" >
                <div class="col-sm-12">
                    <h2 class="text-center">Register Account</h2>
                    <p class="text-center fs-4">${mess }</p>
                    <form action="/account/login"  method="post" enctype="multipart/form-data">
                        <div class="form-group mb-2" >
                            <label>UserName</label>
                            <input type="text" class="form-control" name="username"  placeholder="Enter UserName"/>
                            <p class=" fs-6 text-danger">${erU}</p>
                        </div>
                        <div class="form-group mb-2">
                            <label>Password:</label>
                            <input type="password" class="form-control" name="password"  placeholder="Enter password"/>
                           <p class=" fs-6 text-danger">${erP }</p>
                        </div>           
                        <div class="form-group mb-2">           
                            <div class="radio"><!--value = 1 => Nam| 0 =>Nu -->
                                <label class="checkbox-inline">
                                	<input type="checkbox" class="" name="remember" value="true" /> remember me?
                                	
                                	</label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Login</button>
                        <!-- <button type="reset" class="btn btn-primary">Cancel</button>
                        <a href="/account/views" class="btn btn-primary">Display Account</a> -->
                    </form>
                </div>
            </div> --%>
            <section class="vh-100">
             
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
    <%--  <div class="col-md-8 col-lg-7 col-xl-6">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
          class="img-fluid" alt="Phone image">
      </div> --%> 
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
         <form action="/account/login2"  method="post" >
         <h2 class="text-center">Register Account</h2>
                    <p class="text-center fs-4">${mess }</p>
          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="text" name="username" id="form1Example13" class="form-control form-control-lg" />
            <label class="form-label" for="form1Example13">Username</label>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-4">
            <input type="password" name="password" id="form1Example23" class="form-control form-control-lg" />
            <label class="form-label" for="form1Example23">Password</label>
          </div>

          <div class="d-flex justify-content-around align-items-center mb-4">
            <!-- Checkbox -->
            <div class="form-check">
              <input class="form-check-input" name="remember" type="checkbox" value="true" id="form1Example3" />
              <label class="form-check-label" for="form1Example3"> Remember me </label>
            </div>
            <a href="#!">Forgot password?</a>
          </div>

          <!-- Submit button -->
          <button type="submit" class="text-center btn btn-primary btn-lg d-flex justify-content-center">Sign in</button>

          <div class="divider d-flex align-items-center my-4">
            <p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
          </div>

          <a class="btn btn-primary btn-lg btn-block" style="background-color: #3b5998" href="#!"
            role="button">
            <i class="fab fa-facebook-f me-2"></i>Continue with Facebook
          </a>
          <a class="btn btn-primary btn-lg btn-block" style="background-color: #55acee" href="#!"
            role="button">
            <i class="fab fa-twitter me-2"></i>Continue with Twitter</a>

        </form>
      </div>
    </div>
  </div>
</section>
</body>
</html>

  
  <!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Авторизация/Регистрация</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/">Главная</a></li>
              <li class="breadcrumb-item active" aria-current="page">Login/Register</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
  
  <!--================Login Box Area =================-->
	<section class="login_box_area section-margin">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<div class="hover">
							<h4>Еще не зарегистрированы?</h4>
							<p>There are advances being made in science and technology everyday, and a good example of this is the</p>
							<a class="button button-account" href="register.html">Create an Account</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Авторизация</h3>
						<form class="row login_form" onsubmit="sendFormUser(this); return false;"  >
							<div class="col-md-12 form-group">
								<input type="text" class="form-control"  name="email" placeholder="Ваш Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control"  name="pass" placeholder="Пароль" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'">
							</div>
							<p id="info" style="color: red; padding-left: 1.5rem"></p>
							<div class="col-md-12 form-group">
								
							</div>
							<div class="col-md-12 form-group">
								<button type="submit"  class="button button-login w-100">Войти</button>
								
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->
	<script>
  async function sendFormUser(form) {
    info.innerText = "";
    let formData = new FormData(form);

    let response = await fetch("authUser", {
      method: "POST",
      body: formData,
    });

	//console.log(await response.json());
    let res = await response.json();

    if (res.result == "exist") {
     
	 setTimeout(() => {
        location.href = "users/profile";
		
      }, 4000);
    } 
	else if ((res.result = "NO")) {
      info.innerText = "Такой пользователь не найден!";
    }
  }

    </script>

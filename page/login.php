<!DOCTYPE html>
<html lang="en">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Computers</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <!-- fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
    <link href="../font/fontawesome-free-6.0.0-web/css/all.css" rel="stylesheet" />

    <!-- owl stylesheets --> 
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="./css/style_p.css">
</head>
<?php
    include_once '../helpers/format.php';
    include_once '../lib/database.php';
    include_once './include/header.php';
    // Session::init();
?>
<?php
    $customer = new Customer();
    if(Session::get('customer_login')){
        echo "<script>window.location.href='index.php'</script>";
    }
    if(isset($_POST['dangnhap'])){
        // $kiem_tra = $_POST['kiem_tra'];
        $ten_dang_nhap = $_POST['ten_dang_nhap'];
        $mat_khau = md5($_POST['mat_khau']);
        $login = $customer->login($ten_dang_nhap,$mat_khau);
    }
?>
<section class="vh-100" style="padding-top:100px">
    <div class="container-fluid h-custom">
        <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-md-9 col-lg-6 col-xl-5">
            <img src="images/draw2.webp" class="img-fluid"
            alt="Sample image">
        </div>
        <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
            <form action="" method="POST">
            <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start" style="margin-bottom: 20px;">
                <p class="lead fw-normal mb-0 me-3" >Đăng nhập</p>
            </div>

            <!-- Email input -->
            <div class="form-outline mb-4">
                <label class="form-label" for="form3Example3">Email </label>
                <input type="text" id="form3Example3" class="form-control form-control-lg"
                    placeholder="Nhập email" name="ten_dang_nhap"/>
            </div>

            <!-- Password input -->
            <div class="form-outline mb-3">
                <label class="form-label" for="form3Example4">Mật khẩu</label>
                <input type="password" id="form3Example4" class="form-control form-control-lg"
                placeholder="Nhập mật khẩu" name="mat_khau"/>
            </div>
            <div class="form-outline mb-3">
                <span style="padding: 10px;">
                    <?php
                        if(isset($login)){
                            echo $login;
                        }
                    ?>
                </span>
            </div>
            <div class="d-flex justify-content-between align-items-center">
                <!-- Checkbox -->
                <div class="form-check mb-0">
                </div>
                <a href="forgot_pass.php" class="text-body">Quên mật khẩu?</a>
            </div>

            <div class="text-center text-lg-start mt-4 pt-2">
                <input type="submit" class="btn btn-primary btn-lg"
                style="padding-left: 2.5rem; padding-right: 2.5rem;" name="dangnhap" value="Login">
                <p class="small fw-bold mt-2 pt-1 mb-0">Bạn chưa có tài khoản? <a href="register.php"
                    class="link-danger">Đăng ký</a></p>
            </div>

            </form>
        </div>
        </div>
    </div>
</section>

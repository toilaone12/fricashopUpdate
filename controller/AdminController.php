<?php
    include '../classes/adminLogin.php'; // ..: là thoát ra ngoài;
    
    class AdminController{
        public function login(){
            $classLogin = new Login(); //gọi tên class
            $taikhoan = $_POST['username'];
            $matkhau = md5($_POST['password']);
            $login_check = $classLogin->login_admin($taikhoan,$matkhau); // tham chiếu đến hàm trong lớp được gọi
            if($login_check -> num_rows > 0){
                $value = $login_check->fetch_assoc(); //fetch_array(): trả về 1 mảng có cả value và tên cột, fetch_assoc(): trả về một mảng chỉ có tên cột
                Session::set("login",true); //đối số thứ 1 phải trùng với hàm checkLogin()
                Session::set("admin_id",$value['id']);
                Session::set("admin_username",$value['email_admin']);
                Session::set("admin_password",$value['pass_admin']);
                Session::set("admin_name",$value['name_admin']);
                header("Location: index.php");
            }else{
                $alert = "Đăng nhập thất bại, mật khẩu và tài khoản không đúng!";
                return $alert;
            }
        }
    }


?>
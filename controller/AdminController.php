<?php
    include_once '../classes/adminLogin.php'; // ..: là thoát ra ngoài;
    
    class AdminController{
        public function login(){
            $classLogin = new Login(); //gọi tên class
            $taikhoan = $_POST['username'];
            $matkhau = md5($_POST['password']);
            if(empty($taikhoan) || empty($matkhau)){
                $alert = "Tài khoản và mật khẩu không được bỏ trống!";
                return $alert;
            }else{
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

        public function changePass(){
            $admin = new Login();
            $username = $_GET['username'];
            $pass_old = md5($_POST['pass_old']);
            $pass_new = md5($_POST['pass_new']);
            $re_pass = md5($_POST['re_pass']);
            $changePass = $admin -> change_pass_admin($username,$pass_old,$pass_new,$re_pass);
            return $changePass;
        }
    }


?>
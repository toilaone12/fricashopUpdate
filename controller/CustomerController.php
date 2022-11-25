<?php
    include_once '../classes/customer.php';

    class CustomerController{
        public function listCustomer($sotrang){
            $customer = new Customer();
            $listCustomer = $customer->get_list_customer($sotrang);
            return $listCustomer;
        }
        public function getCustomerId($id){
            $customer = new Customer();
            $getCustomerId = $customer->get_customer_by_id($id);
            return $getCustomerId;
        }
        public function pagination(){
            $customer = new Customer();
            $pagination = $customer->pagination();
            return $pagination;
        }
        public function updateCustomer($id,$tmp,$anh_khach_hang,$ten_khach_hang,$tuoi,$sdt,$email,$dia_chi){
            $customer = new Customer();
            $updateCustomer = $customer->update_customer($id,$tmp,$anh_khach_hang,$ten_khach_hang,$tuoi,$sdt,$email,$dia_chi);
            return $updateCustomer;
        }
        public function deleteCustomer($idCustomer){
            $customer = new Customer();
            $deleteCustomer = $customer->delete_customer($idCustomer);
            return $deleteCustomer;
        }
        //page
        public function comment($id,$name_comment,$desc_comment){
            $customer = new Customer();
            $comment = $customer->insert_comment($id,$name_comment,$desc_comment);
            return $comment;
        }
        public function listComment($id){
            $customer = new Customer();
            $comment = $customer->select_comment($id);
            return $comment;
        }
        public function loginPage($ten_dang_nhap,$mat_khau){
            $customer = new Customer();
            $loginPage = $customer->login($ten_dang_nhap,$mat_khau);
            return $loginPage;
        }
        public function register($ten_dang_nhap,$ten_khach_hang,$mat_khau,$tuoi,$so_dt,$dia_chi,$data){
            $customer = new Customer();
            $register = $customer->register($ten_dang_nhap,$ten_khach_hang,$mat_khau,$tuoi,$so_dt,$dia_chi,$data);
            return $register;
        }
        public function changePassword($ten_dang_nhap,$mat_khau,$nhap_lai_mat_khau,$data){
            $customer = new Customer();
            $changePassword = $customer->change_password($ten_dang_nhap,$mat_khau,$nhap_lai_mat_khau,$data);
            return $changePassword;
        }
        public function forgotPassword($email){
            $customer = new Customer();
            $forgotPassword = $customer->forgot_password($email);
            return $forgotPassword;
        }
        public function showCustomer($id){
            $customer = new Customer();
            $showCustomer = $customer->show_customer($id);
            return $showCustomer;
        }
        public function changeCustomer($id,$tmp,$hinh_anh,$ten_khach_hang,$tuoi,$sdt,$email,$dia_chi){
            $customer = new Customer();
            $changeCustomer = $customer->update_customer($id,$tmp,$hinh_anh,$ten_khach_hang,$tuoi,$sdt,$email,$dia_chi);
            return $changeCustomer;
        }
    }

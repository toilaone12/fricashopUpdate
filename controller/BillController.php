<?php
    include_once '../classes/cart.php';

    class BillController{
        public function listBill($sotrang){
            $bill = new Cart();
            $listCart = $bill->get_person_payment($sotrang);
            return $listCart;
        }
        public function getCartId($id){
            $bill = new Cart();
            $getCartId = $bill->get_detail_cart_by_id($id);
            return $getCartId;
        }
        public function pagination(){
            $bill = new Cart();
            $pagination = $bill->pagination();
            // echo $pagination;
            return $pagination;
        }
        //
        public function deleteCart($id){
            $bill = new Cart();
            $listCart = $bill->delete_cart($id);
            return $listCart;
        }
        public function listCart(){
            $bill = new Cart();
            $listCart = $bill->get_cart();
            return $listCart;
        }
        public function addCart($product_id,$quantity){
            $bill = new Cart();
            $addCart = $bill->add_to_cart($product_id,$quantity);
            return $addCart;
        }
        //page
        public function plusCart($ten_sp,$cong){
            $bill = new Cart();
            $plusCart = $bill->plus_cart($ten_sp,$cong);
            return $plusCart;
        }
        public function minusCart($ten_sp,$tru){
            $bill = new Cart();
            $minusCart = $bill->minus_cart($ten_sp,$tru);
            return $minusCart;
        }
        public function deleteAll(){
            $bill = new Cart();
            $deleteAll = $bill->delete_all_cart();
            return $deleteAll;
        }
        public function payment($ten_khach_hang,$email,$sdt,$dia_chi,$phuong_thuc_thanh_toan){
            $bill = new Cart();
            $payment = $bill->payment($ten_khach_hang,$email,$sdt,$dia_chi,$phuong_thuc_thanh_toan);
            return $payment;
        }
    }

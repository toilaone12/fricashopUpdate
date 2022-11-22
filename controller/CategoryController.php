<?php
    include_once '../classes/category.php'; // ..: là thoát ra ngoài;
    class CategoryController{
        public function selectPage(){
            $cate = new Category();
            $number = $cate->select_number_list();
            return $number;
        }
        public function listCategory($page){
            $cate = new Category();
            $listCate = $cate->get_all_category($page);
            return $listCate;
        }
        public function insertCate($tmp,$image,$name){
            $cate = new Category();
            $add_cart = $cate->insert_category($tmp,$image,$name); 
            return $add_cart;
        }
        public function getCategoryById($id){
            $cate = new Category();
            $show_cate_by_id_cate = $cate->get_category_by_id_cate($id);
            return $show_cate_by_id_cate;
        }
        public function editCate($id,$tmp,$image,$name){
            $cate = new Category();
            $update_data = $cate->update_category($id,$tmp,$image,$name);
            return $update_data;
        }
        public function deleteCate($id){
            $cate = new Category();
            $delete_cate = $cate -> delete_category($id);
            return $delete_cate;
        }
    }    
?>
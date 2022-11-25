<?php
    include_once '../classes/product.php';

    class ProductController{
        public function listProduct($sotrang){
            $product = new Product();
            $listProduct = $product->get_all_product($sotrang);
            return $listProduct;
        }
        public function listCategory(){
            $product = new Product();
            $listCategory = $product->get_category();
            return $listCategory;
        }
        public function getProductId($id){
            $product = new Product();
            $getProductId = $product->get_id_product($id);
            return $getProductId;
        }
        public function pagination(){
            $product = new Product();
            $pagination = $product->select_number_pages_admin();
            return $pagination;
        }
        public function insertProduct($anh_san_pham_tmp,$anh_san_pham,$danh_muc,$ten_san_pham,$so_luong,$gia_san_pham,$link_san_pham,$mo_ta){
            $product = new Product();
            $insertProduct = $product->insert_product($anh_san_pham_tmp,$anh_san_pham,$danh_muc,$ten_san_pham,$so_luong,$gia_san_pham,$link_san_pham,$mo_ta);
            return $insertProduct;
        }
        public function updateProduct($id,$tmp,$anh_san_pham,$danh_muc_san_pham,$ten_san_pham,$so_luong,$gia_san_pham,$link_san_pham,$mo_ta){
            $product = new Product();
            $updateProduct = $product->update_product($id,$tmp,$anh_san_pham,$danh_muc_san_pham,$ten_san_pham,$so_luong,$gia_san_pham,$link_san_pham,$mo_ta);
            return $updateProduct;
        }
        public function deleteProduct($idProduct){
            $product = new Product();
            $deleteProduct = $product->delete_product($idProduct);
            return $deleteProduct;
        }
        //page
        public function listProductPage(){
            $product = new Product();
            $listProductPage = $product->get_all_product_page();
            return $listProductPage;
        }
        public function listLowProduct(){
            $product = new Product();
            $listLowProduct = $product->get_low_price_courses();
            return $listLowProduct;
        }
        public function listAverageProduct(){
            $product = new Product();
            $listAverageProduct = $product->get_average_price_courses();
            return $listAverageProduct;
        }
        public function sortProduct($cate_id,$asc,$desc,$min,$max,$sotrang){
            $product = new Product();
            if($asc !== 0){
                $sortProduct = $product->sort_product($cate_id,$asc,0,$min,$max,$sotrang);
                return $sortProduct;
            }else if($asc == 0){
                $sortProduct = $product->sort_product($cate_id,0,$desc,$min,$max,$sotrang);
                return $sortProduct;
            }
            
        }
        public function paginationPage($cate_id){
            $product = new Product();
            $paginationPage = $product->select_number_pages($cate_id);
            return $paginationPage;
        }
        public function filterPrice($cate_id,$gia_thap_nhat,$gia_cao_nhat){
            $product = new Product();
            $filterPrice = $product->select_number_pages_by_price($cate_id,$gia_thap_nhat,$gia_cao_nhat);
            return $filterPrice;
        }
        public function findPrice($cate_id,$gia_thap_nhat,$gia_cao_nhat,$sotrang){
            $product = new Product();
            $findPrice = $product->find_currency($cate_id,$gia_thap_nhat,$gia_cao_nhat,$sotrang);
            return $findPrice;
        }
        public function getCateId($cate_id,$sotrang){
            $product = new Product();
            $findPrice = $product->get_id_category($cate_id,$sotrang);
            return $findPrice;
        }
    }

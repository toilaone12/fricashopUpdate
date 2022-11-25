<?php
    include_once '../helpers/format.php';
    include_once '../lib/database.php';

    class Slider{
        private $db;
        private $fm;

        function __construct()
        {
            $this->db = new Database();
            $this->fm = new Format();
        }
        public function list_slider(){
            $query = "SELECT * FROM slider ORDER BY id_slider ASC";
            $result = $this->db->select($query);
            if($result -> num_rows > 0){
                return $result;
            }
        }
        public function get_slider($sotrang){
            if($sotrang){
                $page = ceil($sotrang * 3) - 3;
            }else{
                $page = 0;
            }
            $query = "SELECT * FROM slider ORDER BY id_slider ASC LIMIT $page,3";
            $result = $this->db->select($query);
            if($result -> num_rows > 0){
                return $result;
            }
        }
        public function select_slider(){
            $query = "SELECT * FROM slider ORDER BY id_slider ASC";
            $result = $this->db->select($query);
            if($result -> num_rows > 0){
                return $result;
            }
        }
        public function pagination(){
            $query = "SELECT * FROM slider";
            $result = $this->db->select($query);
            if($result -> num_rows > 0){
                $count_pages = floor(($result->num_rows) / 3);
                return $count_pages;
            }else{
            }
        }
        public function get_id_slider($id){
            $query = "SELECT * FROM slider WHERE id_slider = $id";
            $result = $this->db->select($query);
            if($result->num_rows > 0){
                return $result;
            }
        }
        public function insert_slider($tmp,$anh_quang_cao,$ten_qc){ 
            if($tmp == '' && $anh_quang_cao == "" && $ten_qc = ""){
                $alert = "<span color: red;>Thông tin điền chưa đầy đủ!</span>";
                return $alert;
            }else{
                $dir = "./img/";
                if(!file_exists($dir)){
                    mkdir($dir,0755,true);
                }
                $dir = $dir.$anh_quang_cao;
                if(move_uploaded_file($tmp,$dir)){
                    $query = "INSERT INTO slider VALUES (null,'$ten_qc','$anh_quang_cao')";
                    // echo $query;
                    $result = $this->db->insert($query);
                    if($result){
                        $alert = '<span style="color:green;">Thêm thành công quảng cáo '.$ten_qc.' vào danh muc!</span>';
                        return $alert;
                    }else{
                        $alert = '<span style="color:red";>Thêm quảng cáo thất bại!</span>';
                        return $alert;
                    }
                }
            }
        }

        public function update_slider($id,$tmp,$anh_quang_cao,$ten_qc){
            $dir = "./img/";
            if(!file_exists($dir)){
                mkdir($dir,0755,true);
            }
            $dir = $dir.$anh_quang_cao;
            if(move_uploaded_file($tmp,$dir)){
                $query = "UPDATE slider SET name_slider = '$ten_qc', image_slider = '$anh_quang_cao' WHERE id_slider = $id";
                // echo $query;
                $result = $this->db->update($query);
                if($result){
                    $alert = '<span style="color:green;">Sửa thành công quảng cáo '.$ten_qc.' vào danh muc!</span>';
                    return $alert;
                }else{
                    $alert = '<span style="color:red";>Sửa quảng cáo thất bại!</span>';
                    return $alert;
                }
            }else{
                $query = "UPDATE slider SET name_slider = '$ten_qc' WHERE id_slider = $id";
                // echo $query;
                $result = $this->db->update($query);
                if($result){
                    $alert = '<span style="color:green;">Sửa thành công quảng cáo '.$ten_qc.' vào danh muc!</span>';
                    return $alert;
                }else{
                    $alert = '<span style="color:red";>Sửa quảng cáo thất bại!</span>';
                    return $alert;
                }
            }
        }
        public function delete_slider($id){
            $query = "DELETE FROM slider WHERE id_slider = $id";
            $result = $this->db->delete($query);
            if($result){
                $alert = '<script>alert("Xóa thành công")</script>';
                return $alert;
            }else{
                $alert = '<script>alert("Xóa không thành công")</script>';
                return $alert;
            }
        }
    }

?>
<?php
    include_once '../classes/news.php';

    class NewsController{
        public function listNews($sotrang){
            $news = new News();
            $listNews = $news->get_list_news($sotrang);
            return $listNews;
        }
        public function getNewsId($id){
            $news = new News();
            $getNewsId = $news->get_list_news_by_id($id);
            return $getNewsId;
        }
        public function pagination(){
            $news = new News();
            $pagination = $news->pagination();
            return $pagination;
        }
        public function insertNews($anh_tin_tuc_tmp,$anh_tin_tuc,$ten_tin_tuc,$mo_ta){
            $news = new News();
            $insertNews = $news->add_news($anh_tin_tuc_tmp,$anh_tin_tuc,$ten_tin_tuc,$mo_ta);
            return $insertNews;
        }
        public function updateNews($id,$anh_tin_tuc_tmp,$anh_tin_tuc,$ten_tin_tuc,$mo_ta){
            $news = new News();
            $updateNews = $news->update_news($id,$anh_tin_tuc_tmp,$anh_tin_tuc,$ten_tin_tuc,$mo_ta);
            return $updateNews;
        }
        public function deleteNews($idNews){
            $news = new News();
            $deleteSlider = $news->delete_news($idNews);
            return $deleteSlider;
        }
    }

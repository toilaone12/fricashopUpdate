<?php
    include_once '../classes/slider.php';

    class SliderController{
        public function listSlider($sotrang){
            $slider = new Slider();
            $listSlider = $slider->get_slider($sotrang);
            return $listSlider;
        }
        public function getSliderId($id){
            $slider = new Slider();
            $getSliderId = $slider->get_id_slider($id);
            return $getSliderId;
        }
        public function pagination(){
            $slider = new Slider();
            $pagination = $slider->pagination();
            return $pagination;
        }
        public function insertSlider($anh_quang_cao_tmp,$anh_quang_cao,$ten_quang_cao){
            $slider = new Slider();
            $insertSlider = $slider->insert_slider($anh_quang_cao_tmp,$anh_quang_cao,$ten_quang_cao);
            return $insertSlider;
        }
        public function updateSlider($id,$tmp,$anh_quang_cao,$ten_quang_cao){
            $slider = new Slider();
            $updateSlider = $slider->update_slider($id,$tmp,$anh_quang_cao,$ten_quang_cao);
            return $updateSlider;
        }
        public function deleteSlider($idSlider){
            $slider = new Slider();
            $deleteSlider = $slider->delete_slider($idSlider);
            return $deleteSlider;
        }
        //page
        public function listSliderPage(){
            $slider = new Slider();
            $listSliderPage = $slider->list_slider();
            return $listSliderPage;
        }
    }

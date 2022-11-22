<?php
   include_once '../classes/slider.php';
   $slider = new Slider();
   $get_slider = $slider -> get_slider();
?>

<div class="banner_section layout_padding">
         <div id="my_slider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <?php
                        $row_1 = $get_slider->fetch_assoc();
                     ?>
                     <img class="d-block " style="margin: 0 auto; width: 1000px; height: 500px;" src="<?php echo $row_1['image_slider'];?>" alt="First slide">
                  </div>
                  <?php
                     while($row = $get_slider->fetch_assoc()){
                  ?>
                  <div class="carousel-item">
                     <img class="d-block " style="margin: 0 auto; width: 1000px; height: 500px;" src="<?php echo $row['image_slider'];?>" alt="Second slide">
                  </div>
                  <?php
                     }
                  ?>
               </div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#my_slider" role="button" data-slide="prev">
              <i class="fa fa-angle-left"></i>
            </a>
            <a class="carousel-control-next" href="#my_slider" role="button" data-slide="next">
              <i class="fa fa-angle-right"></i>
            </a>
         </div>
      </div>
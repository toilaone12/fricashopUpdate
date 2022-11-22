<div class="catagary_section layout_padding">
    <div class="container">
    <div class="catagary_main">
        <div class="catagary_left">
            <h2 class="categary_text">New Courses</h2>
        </div>
        <div class="catagary_right">
            <div class="catagary_menu">
                
            </div>
        </div>
    </div>
    </div>
</div>
<div class="catagary_section_2">
    <div class="container-fluid">
        <div class="row">
            <?php
                $select_product = $product->get_all_product_page();
            ?>
            <?php
                while($row_product = $select_product->fetch_assoc()){
            ?>
            <div class="col-md-4">
                <div class="box_man" style="margin: 20px 0;">
                    <div class="mobile_img"><img style="width:max-width; height:200px;" src="<?php echo $row_product['image_pr']?>"></div>
                    <div class="computer_text_main">
                        <h4 class="dell_text" style="white-space:nowrap; width: max-width; overflow:hidden; text-overflow:ellipsis; margin-right:10px"><?php echo $row_product['name_pr']?></h4>
                        <h6 class="price_text" style="text-transform:lowercase !important;"><a href="#"><?php echo number_format($row_product['price'],0,',','.')?></a>đ</h6>
                    </div>
                    <div class="cart_bt_1" style="margin-bottom:50px"><a href="details.php?product_id=<?php echo $row_product['product_id'];?>">Add To Cart</a></div>
                </div>
            </div>
            <?php
                }
            ?>
        </div>
    </div>
</div>
<div class="catagary_section layout_padding" style="margin-top: 100px;">
    <div class="container">
    <div class="catagary_main">
        <div class="catagary_left">
            <h2 class="categary_text">Low Courses</h2>
        </div>
        <div class="catagary_right">
            <div class="catagary_menu">
                
            </div>
        </div>
    </div>
    </div>
</div>
<div class="catagary_section_2" >
    <div class="container-fluid">
        <div class="row">
            <?php
                $select_low_product = $product->get_low_price_courses();
            ?>
            <?php
                while($row_product = $select_low_product->fetch_assoc()){
            ?>
            <div class="col-md-4">
                <div class="box_man" style="margin: 20px 0;">
                    <div class="mobile_img"><img style="width:max-width; height:200px;" src="<?php echo $row_product['image_pr']?>"></div>
                    <div class="computer_text_main">
                        <h4 class="dell_text" style="white-space:nowrap; width: max-width; overflow:hidden; text-overflow:ellipsis; margin-right:10px"><?php echo $row_product['name_pr']?></h4>
                        <h6 class="price_text" style="text-transform:lowercase !important;"><a href="#"><?php echo number_format($row_product['price'],0,',','.')?></a>đ</h6>
                    </div>
                    <div class="cart_bt_1" style="margin-bottom:50px"><a href="details.php?product_id=<?php echo $row_product['product_id'];?>">Add To Cart</a></div>
                </div>
            </div>
            <?php
                }
            ?>
        </div>
    </div>
</div>
<div class="catagary_section layout_padding" style="margin-top: 100px;">
    <div class="container">
    <div class="catagary_main">
        <div class="catagary_left" style="width:21%;">
            <h2 class="categary_text">Average Courses</h2>
        </div>
        <div class="catagary_right">
            <div class="catagary_menu">
                
            </div>
        </div>
    </div>
    </div>
</div>
<div class="catagary_section_2" >
    <div class="container-fluid">
        <div class="row">
            <?php
                $select_average_product = $product->get_average_price_courses();
            ?>
            <?php
                while($row_product = $select_average_product->fetch_assoc()){
            ?>
            <div class="col-md-4">
                <div class="box_man" style="margin: 20px 0;">
                    <div class="mobile_img"><img style="width:max-width; height:200px;" src="<?php echo $row_product['image_pr']?>"></div>
                    <div class="computer_text_main">
                        <h4 class="dell_text" style="white-space:nowrap; width: max-width; overflow:hidden; text-overflow:ellipsis; margin-right:10px"><?php echo $row_product['name_pr']?></h4>
                        <h6 class="price_text" style="text-transform:lowercase !important;"><a href="#"><?php echo number_format($row_product['price'],0,',','.')?></a>đ</h6>
                    </div>
                    <div class="cart_bt_1" style="margin-bottom:50px"><a href="details.php?product_id=<?php echo $row_product['product_id'];?>">Add To Cart</a></div>
                </div>
            </div>
            <?php
                }
            ?>
        </div>
        <!-- <object width="425" height="350" data="http://www.youtube.com/v/Ahg6qcgoay4" type="application/x-shockwave-flash"><param name="src" value="http://www.youtube.com/v/Ahg6qcgoay4"></object> -->
    </div>
</div>
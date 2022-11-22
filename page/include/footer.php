<?php
    $contact = new Contact();
    $select_contact = $contact->get_contact();
    $cate = new Category();
    $select_cate = $cate->get_all_cate();
?>
<div class="footer_section layout_padding margin_top_90">
    <div class="container">
        <div class="footer_logo_main">
            <div class="footer_logo"><a href="index.html"><img src="images/footer-logo.png"></a></div>
            <div class="social_icon">
                <ul>
                    <li><a href="#"><img src="images/fb-icon.png"></a></li>
                    <li><a href="#"><img src="images/twitter-icon.png"></a></li>
                    <li><a href="#"><img src="images/linkedin-icon.png"></a></li>
                    <li><a href="#"><img src="images/instagram-icon.png"></a></li>
                    <li><a href="#"><img src="images/youtub-icon.png"></a></li>
                </ul>
            </div>
        </div>
        <div class="footer_section_2">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <h4 class="adderss_text">About</h4>
                    <p class="ipsum_text">consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation u</p>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <h4 class="adderss_text">Menu</h4>
                    <div class="footer_menu">
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <?php
                            while($row_cate = $select_cate->fetch_assoc()){
                        ?>
                            <li>
                                <a href="product_by_cate.php?cate_id=<?php echo $row_cate['cate_id'];?>&sotrang=1"><?php echo $row_cate['name'];?></a>
                            </li>
                        <?php
                            }
                        ?>
                        <li>
                            <a href="news_page.php">Tin tức</a> 
                        </li>
                    </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <h4 class="adderss_text">Useful Link</h4>
                    <div class="footer_menu">
                    <ul>
                        <li><a href="#">Adipiscing</a></li>
                        <li><a href="#">Elit, sed do</a></li>
                        <li><a href="#">Eiusmod</a></li>
                        <li><a href="#">Tempor</a></li>
                        <li><a href="#">incididunt</a></li>
                    </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <h4 class="adderss_text">Contact</h4>
                    <?php 
                        while($row_contact = $select_contact -> fetch_assoc()){
                    ?>
                    <div class="call_text"><img src="images/map-icon.png"><span class="paddlin_left_0"><a href="#"><?php echo $row_contact['ten_lh'];?></a></span></div>
                    <div class="call_text"><img src="images/call-icon.png"><span class="paddlin_left_0"><a href="#"><?php echo $row_contact['sdt_lh'];?></a></span></div>
                    <div class="call_text"><img src="images/mail-icon.png"><span class="paddlin_left_0"><a href="#"><?php echo $row_contact['email_lh'];?></a></span></div>
                    <?php
                        }
                    ?>
                </div>
            </div>
        </div>
        </div>
    </div>
    <!-- footer section end -->
    <!-- copyright section start -->
    <div class="copyright_section">
        <div class="container">
        <p class="copyright_text">2020 All Rights Reserved. Design by <a href="https://html.design">Free html  Templates</a></p>
    </div>
</div>
<?php
    include_once "../lib/session.php";
    if(empty(session_id()) && !headers_sent()){
        // include_once "../lib/session.php";
        Session::init();
    }else{
        // session_start();
    }
?>
<?php
    include_once "../lib/database.php";
    include_once "../helpers/format.php"; //include_once(): là hàm gộp dữ liệu từ file PHP này sang file PHP(Trong sẽ ktra xem 1 tệp đã đc vào 
    // hay chưa,nếu đã có thì nó sẽ dừng lại còn nếu có rồi nó sẽ thêm vào)
    // ob_clean();
    spl_autoload_register(function($className){
        include_once '../classes/'.$className.'.php';
    }); //Tự auto loading trong include_once thay cho include cũng như require nhằm tránh quá nhiều tập tin cần include

    $db = new Database();
    $fm = new Format();
    $cart = new Cart();
    $product = new Product();
    $cate = new Category();
?>
<?php
    $select_cate = $cate->get_all_cate();
?>
<style>
.cart__wrap{
    cursor: pointer;
    /* position: relative; */
}
.cart__wrap:hover .buy{
    display: block;
}
.buy{
    height: 300px;
    position: absolute;
    width: 610px;
    top: calc(100%);
    right: -7px;
    background-color: #fff;
    box-shadow: 0 1px 4px 0 rgb(0 0 0 / 26%);
    border-radius: 2px;
    display: none;
    z-index: 3;
    animation: expand ease-in 0.3s;
    will-change: opacity, transform;
    transform-origin: calc(100% - 25px) 0;
    cursor: default;
}
.buy::before{
    content: "";
    position: absolute;
    border-width: 25px 25px;
    border-style: solid;
    border-color: transparent transparent #fff transparent !important;
    top: -39px;
    right: 44px;
}
.buy::after{
    content: "";
    position: absolute;
    width: 610px;
    height: 50px;
    background-color: transparent;
    top: -35px;
    right: 0;
}
.buy__no-cart{
    width: 50%;
    text-align: center;
    display: none;
}
.buy--no-shopping{
    padding: 28px 0;
    
}

.buy__title{
    font-size: 14px;
    color: #000;
    margin-top: 15px;
    display: none;
}
.heading{
    margin: 12px 0px 8px 16px;
    color: #ccc;
    font-weight: 400;
    font-size: 16px;
}
.buy__list-scroll{
    overflow-y: auto;
    width: 100%;
    height: 100%;
}
.no-heading{
    color: #ccc;
    font-weight: 400;
    font-size: 16px;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}
.buy__list{
    padding-left: 0;
    list-style: none;
}
.buy--items{
    display: flex;
    align-items: center;
    text-transform: none;
    width: 610px;
}
.buy--items:hover{
    background-color: #E8E8E8;
    cursor: pointer;
}
.buy--img{
    width: 120px;
    height: 80px;
    margin-right: 30px;
    margin-bottom: 10px;
}
.buy__list-info{
    width: 100%;
    margin-right: 12px;
}
.buy__list-head{
    display: flex;
    align-items: center;
    justify-content: space-between;
      
}
h5{
    padding: 0;
}
.buy__list-sticker{
    font-size: 9px;
    margin: 0 4px;
    color: #757575;
}
.buy__list-name{
    font-size: 14px;
    font-weight: 400;
    color: #000;
    margin-top: 0;
    margin-right: 20px;
    text-transform: none;
    margin-left: 20px;
}
.buy__list-price{
    font-size: 14px;
    color: #ee4d2d;
    font-weight: 300;
    text-transform: none;
}
.buy__list-qnt{
    font-size: 13px;
    color: #757575;
}
.buy__list-body{
    display: flex;
    justify-content: space-between;
}
.buy__list-description{
    color: #757575;
    font-size: 13px;
    font-weight: 300;
    margin-left: 20px;
    text-transform: none;
}
.buy__list-delete{
    font-size: 14px;
    color: #000 !important;
    text-transform: none;
}
.buy__list-delete:hover{
    cursor: pointer;
    color: #ee4d2d;
}
.buy__check{
    padding: 7px 16px;
    border: none;
    border-radius: 2px;
    background-color: #ee4d2d;
    color: #fff;
    float: right;
    margin: 12px 12px 12px 0;
    cursor: pointer;
    font-size: 16px;
    text-transform: none;
}
.buy__check:hover{
    background-color: #F05D41;
    color: #fff !important;
}
</style>
<!-- header section start -->
<div class="header_section haeder_main" style="background-color: #ccc;">
    <div class="container-fluid">
    <nav class="navbar navbar-light bg-light justify-content-between">
        <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <a href="index.php">Trang chủ</a>
            <?php
                while($row_cate = $select_cate->fetch_assoc()){
            ?>
                <a href="product_by_cate.php?cate_id=<?php echo $row_cate['cate_id'];?>&sotrang=1"><?php echo $row_cate['name'];?></a>
            <?php
                }
            ?>
            <a href="news_page.php">Tin tức</a>
        </div>
        <span style="font-size:30px;cursor:pointer; color: #fff;" onclick="openNav()"><img src="images/toggle-icon.png"></span>
        <a class="navbar-brand" href="index.php"><img src="images/logo.png"></a></a>
        <form class="form-inline ">
            <div class="login_text">
                <ul>
                    <li class="customer">
                        <?php 
                            $login_check = Session::get('customer_login');
                            // echo Session::get("ten_khach_hang");
                            if($login_check == false){  
                        ?>
                        <div class="flex">
                            <a href="login.php"><img src="images/user-icon.png"></a>
                        </div>
                        <?php 
                            }else{
                                // echo $_SESSION['ten_dang_nhap'];
                        ?>
                        
                        <a href="" class="hover-icon"><img src="images/user-icon.png"></a>
                        <ul class="list-sub-info">
                            <!-- <ul class="sub-info"> -->
                                <li class="list-sub-name">
                                    <a class="name-profile" href="profile.php"><?php echo Session::get('ten_khach_hang');?></a>
                                </li>
                                <li class="list-sub-name">
                                    <a href="index.php" class="sign-in-customer">Trang chủ</a>
                                </li>
                                <li class="list-sub-name">
                                    <a href="change_pass.php?email=<?php echo $_SESSION['ten_dang_nhap'];?>" class="sign-in-customer">Đổi mật khẩu</a>
                                </li>
                                <li class="list-sub-name">
                                    <?php
                                        if(isset($_GET['action']) && $_GET['action'] == 'dangxuat'){
                                            Session::checkSession();
                                            Session::destroy();
                                        }
                                    ?>
                                    <a href="index.php?action=dangxuat" class="sign-in-customer">Đăng xuất</a>
                                </li>
                            <!-- </ul> -->
                        </ul>
                        <?php
                            }
                        ?>
                    </li>
                    <li>
                        <div class="cart__wrap" >
                            <img class="hover-cart" src="images/trolly-icon.png">
                            <div class="buy">
                                <?php
                                    if(isset($_GET['xoa'])){
                                        $xoa = $_GET['xoa'];
                                        $delete = $cart->delete_cart($xoa);
                                        // echo "<script>"
                                    }
                                    $show_cart = $cart -> get_cart();
                                    if($show_cart-> num_rows > 0){
                                ?>

                                <div class="buy__list-scroll">
                                    <h4 class="heading">Sản phẩm đã thêm vào</h4>       
                                <?php
                                    while($row = $show_cart->fetch_assoc()){
                                ?>
                                    <ul class="buy__list">
                                        <!--Cart-items-->
                                        <a href="details.php?product_id=<?php echo $row['product_id'];?>">
                                            <li class="buy--items">
                                                <img src="<?php echo $row['image'];?>" alt="" class="buy--img">
                                                <div class="buy__list-info">
                                                    <div class="buy__list-head">
                                                        <h5 class="buy__list-name"><?php echo $row['name_cart'];?></h5>
                                                        <div class="buy__list-select">
                                                            <span class="buy__list-price"><?php echo $row['price_cart'];?>đ</span>
                                                            <span class="buy__list-sticker">x</span>
                                                            <span class="buy__list-qnt"><?php echo $row['quantity_cart'];?></span>
                                                        </div>     
                                                    </div>
                                                    <div class="buy__list-body">
                                                        <span class="buy__list-description">Link youtube: <?php echo $row['link_ytb'];?></span>
                                                        <a class="buy__list-delete" href="?xoa=<?php echo $row['cart_id'];?>">Xoá</a>
                                                    </div>
                                                </div>
                                            </li>
                                        </a>
                                    </ul>
                                    <?php
                                        }
                                    ?>
                                    <a href="cart_page.php" class="buy__check">Xem giỏ hàng</a>
                                </div>
                                <?php
                                    }else{
                                ?>
                                    <div class="no-heading">Chưa có sản phẩm</div>
                                <?php
                                    }
                                ?>
                            </div>
                        </div>
                    </li>
                    <li><a href="#"><img src="images/search-icon.png"></a></li>
                </ul>
            </div>
        </form>
    </nav>
    </div>
</div>
<script>
    function closeNav(){
        document.getElementById('mySidenav').style.width = "0";
    }
    function openNav(){
        document.getElementById('mySidenav').style.width = "100%";
    }
</script>
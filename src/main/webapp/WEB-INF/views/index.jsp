<%--
  Created by IntelliJ IDEA.
  User: 이광호
  Date: 2023-06-25
  Time: 오후 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="resources/resources/css/style.css">

</head>
<body>
<header class="header">

    <section class="flex">

        <a href="home" class="logo">yum-yum 😋</a>

        <nav class="navbar">
            <a href="home">home</a>
            <a href="about">about</a>
            <a href="menu.html">menu</a>
            <a href="orders.html">orders</a>
            <a href="contact">contact</a>
        </nav>

        <div class="icons">
            <a href="search.html"><i class="fas fa-search"></i></a>
            <a href="cart.html"><i class="fas fa-shopping-cart"></i><span>(3)</span></a>
            <div id="user-btn" class="fas fa-user"></div>
            <div id="menu-btn" class="fas fa-bars"></div>
        </div>

        <div class="profile">
            <p class="name">shaikh anas</p>
            <div class="flex">
                <a href="profile.jsp" class="btn">profile</a>
                <a href="#" class="delete-btn">logout</a>
            </div>
            <p class="account"><a href="login.jsp">login</a> or <a href="register.jsp">register</a></p>
        </div>

    </section>

</header>

<section class="home">

    <div class="swiper home-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide slide">
                <div class="content">
                    <span>order online</span>
                    <h3>delicious pizza</h3>
                    <a href="menu.html" class="btn">see menus</a>
                </div>
                <div class="image">
                    <img src="resources/images/home-img-1.png" alt="">
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="content">
                    <span>order online</span>
                    <h3>double hamburger</h3>
                    <a href="menu.html" class="btn">see menus</a>
                </div>
                <div class="image">
                    <img src="resources/images/home-img-2.png" alt="">
                </div>
            </div>

            <div class="swiper-slide slide">
                <div class="content">
                    <span>order online</span>
                    <h3>roasted chicken</h3>
                    <a href="menu.html" class="btn">see menus</a>
                </div>
                <div class="image">
                    <img src="resources/images/home-img-3.png" alt="">
                </div>
            </div>

        </div>

        <div class="swiper-pagination"></div>

    </div>

</section>

<section class="category">

    <h1 class="title">food category</h1>

    <div class="box-container">

        <a href="category.html" class="box">
            <img src="resources/images/cat-1.png" alt="">
            <h3>fast food</h3>
        </a>

        <a href="category.html" class="box">
            <img src="resources/images/cat-2.png" alt="">
            <h3>main dishes</h3>
        </a>

        <a href="category.html" class="box">
            <img src="resources/images/cat-3.png" alt="">
            <h3>drinks</h3>
        </a>

        <a href="category.html" class="box">
            <img src="resources/images/cat-4.png" alt="">
            <h3>desserts</h3>
        </a>

    </div>

</section>

<section class="products">

    <h1 class="title">latest dishes</h1>

    <div class="box-container">

        <form accept="" method="post" class="box">
            <a href="quick_view.html" class="fas fa-eye"></a>
            <button class="fas fa-shopping-cart" type="submit" name="add_to_cart"></button>
            <img src="uploaded_img/pizza-1.png" alt="">
            <a href="category.html" class="cat">fast food</a>
            <div class="name">delicious pizza 01</div>
            <div class="flex">
                <div class="price"><span>$</span>3<span>/-</span></div>
                <input type="number" name="qty" class="qty" min="1" max="99" value="1" onkeypress="if(this.value.length == 2) return false;">
            </div>
        </form>

        <form accept="" method="post" class="box">
            <a href="quick_view.html" class="fas fa-eye"></a>
            <button class="fas fa-shopping-cart" type="submit" name="add_to_cart"></button>
            <img src="uploaded_img/dish-1.png" alt="">
            <a href="category.html" class="cat">dishes</a>
            <div class="name">main dish 01</div>
            <div class="flex">
                <div class="price"><span>$</span>3<span>/-</span></div>
                <input type="number" name="qty" class="qty" min="1" max="99" value="1" onkeypress="if(this.value.length == 2) return false;">
            </div>
        </form>

        <form accept="" method="post" class="box">
            <a href="quick_view.html" class="fas fa-eye"></a>
            <button class="fas fa-shopping-cart" type="submit" name="add_to_cart"></button>
            <img src="uploaded_img/burger-1.png" alt="">
            <a href="category.html" class="cat">fast food</a>
            <div class="name">chezzy hamburger 01</div>
            <div class="flex">
                <div class="price"><span>$</span>3<span>/-</span></div>
                <input type="number" name="qty" class="qty" min="1" max="99" value="1" onkeypress="if(this.value.length == 2) return false;">
            </div>
        </form>

        <form accept="" method="post" class="box">
            <a href="quick_view.html" class="fas fa-eye"></a>
            <button class="fas fa-shopping-cart" type="submit" name="add_to_cart"></button>
            <img src="uploaded_img/dessert-1.png" alt="">
            <a href="category.html" class="cat">dessert</a>
            <div class="name">delicious dessert 01</div>
            <div class="flex">
                <div class="price"><span>$</span>3<span>/-</span></div>
                <input type="number" name="qty" class="qty" min="1" max="99" value="1" onkeypress="if(this.value.length == 2) return false;">
            </div>
        </form>

        <form accept="" method="post" class="box">
            <a href="quick_view.html" class="fas fa-eye"></a>
            <button class="fas fa-shopping-cart" type="submit" name="add_to_cart"></button>
            <img src="uploaded_img/drink-1.png" alt="">
            <a href="category.html" class="cat">drinks</a>
            <div class="name">fresh drink 01</div>
            <div class="flex">
                <div class="price"><span>$</span>3<span>/-</span></div>
                <input type="number" name="qty" class="qty" min="1" max="99" value="1" onkeypress="if(this.value.length == 2) return false;">
            </div>
        </form>

        <form accept="" method="post" class="box">
            <a href="quick_view.html" class="fas fa-eye"></a>
            <button class="fas fa-shopping-cart" type="submit" name="add_to_cart"></button>
            <img src="uploaded_img/dish-2.png" alt="">
            <a href="category.html" class="cat">dishes</a>
            <div class="name">main dish 02</div>
            <div class="flex">
                <div class="price"><span>$</span>3<span>/-</span></div>
                <input type="number" name="qty" class="qty" min="1" max="99" value="1" onkeypress="if(this.value.length == 2) return false;">
            </div>
        </form>

    </div>

    <div class="more-btn">
        <a href="menu.html" class="btn">veiw all</a>
    </div>

</section>

</body>
</html>

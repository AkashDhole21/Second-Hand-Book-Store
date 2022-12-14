<%
    if(session.getAttribute("email")==null){
       response.sendRedirect("../index.jsp");
    }
%>
<%@page import="java.sql.*" %>
<%@ include file="./controller/connection.jsp" %>
<% 
    String userEmail=(String)session.getAttribute("email");

    String sql3="select * from cart where user = '"+userEmail+"'"; 
    Statement st3=connection.createStatement(); 
    ResultSet rs3=st3.executeQuery(sql3); 
    int count=0;
     while(rs3.next()){ 
         count++; 
         } 

    String book_no = request.getParameter("bno");
    String sql1="select * from books where user = '"+userEmail+"' and bno='"+book_no+"'"; 
    Statement st1=connection.createStatement(); 
    ResultSet rs1=st1.executeQuery(sql1); 
    rs1.next();
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>Update Books</title>
    <link rel="icon" href="../images/icon.png">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="../css/bootstrap.min.css">

    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/aos.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="../css/style.css">
</head>
<style>
    .cart-basket {
        font-size: 12px;
        position: absolute;
        top: -6px;
        right: -5px;
        width: 18px;
        height: 22px;
        color: #fff;
        background-color: red;
        border-radius: 40%;
    }
    .head-shadow {
        color: white;
        text-shadow: 1px 1px 2px black, 0 0 25px rgb(146, 146, 175), 0 0 5px rgb(140, 140, 151);
    }
    /* .text-shadow {
    color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
    } */

    @media screen and (max-width:481px) {
        .navbar-brand {
            font-size: large;
        }

        .btn-secondary,
        .btn-dark {
            font-size: xx-small;
        }

    }
</style>
<script>
    function checkPrice(){
        var originalPrice = parseInt(document.getElementById("originalPrice").value);
        var sellingPrice = parseInt(document.getElementById("sellingPrice").value);
        if(sellingPrice<originalPrice){
            document.getElementById("priceWarn").innerHTML="";
        }else{
            document.getElementById("priceWarn").innerHTML="Selling price should be less than original price.";
           
        }

    }
</script>
<body>

    <section>
        <nav class="navbar navbar-expand-sm navbar-light bg-light position-relative p-1 m-2 rounded shadow-lg">
            <a class="navbar-brand p-1 head-shadow text-danger" href="index.jsp">SECONDHAND-BOOK STORE</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse " id="navbarSupportedContent">
                <div class="navbar-nav ml-auto mr-lg-5">
                    <ul class="navbar-nav">
                        <li class="nav-link nav-item mr-lg-2 dropdown" id="navbarSupportedContent">
                            <a class="dropdown-toggle text-dark" href="#" role="button" id="dropdownMenuLink"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-user-circle fa-2x" style="font-size:x-large;"> Hi, <%
                                        out.print(session.getAttribute("name"));%></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <a class="dropdown-item" href="./myOrders.jsp"><i class="fas fa fa-shopping-bag"></i> Your
                                    Orders</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="./changePassword.jsp"><i class="fas fa fa-key"></i>
                                    Change
                                    Password</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="./bankAccount.jsp"><i class="fas fa fa-plus"></i> Add
                                    Bank
                                    Account</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item text-center" href="./controller/logout.jsp"><button
                                        class=" btn btn-danger"><i class="fas fa fa-sign-out"></i> Logout</button></a>
                            </div>
                        </li>
                        <li class="nav-link nav-item">
                            <a href="myCart.jsp" class="cart position-relative d-inline-flex">
                                <i class="fa fa-shopping-cart fa-2x"></i>
                                <span class="cart-basket d-flex align-items-center justify-content-center">
                                    <strong>
                                        <% out.print(count); %>
                                    </strong>
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <nav class="nav nav-justified bg-dark p-2 m-2 rounded shadow ">
            
            <a class="nav-item nav-link rounded text-white" href="uploadBook.jsp">Upload
                Books</a>
            <a class="nav-item nav-link rounded text-white" href="myBooks.jsp">Your Books</a>
            <a class="nav-item nav-link rounded text-white" href="viewBooks.jsp">View Books</a>
        </nav>
    </section>

    <section>
        <div class="container p-2 shadow-lg rounded">
            <form class="p-3 rounded" id="sellForm" action="./controller/updateBook.jsp" method="get"
                enctype="multipart/form-data">
                <h3 class="mb-4 bg-light rounded p-3 text-dark head-shadow">Update Book</h3>
                <div class="form-row shadow p-3 rounded">
                    <div class="form-group col-md-6">
                        <label for="inputBookName4">Book Name:</label>
                        <input type="text" class="form-control" name="bookName" id="bookName" placeholder="BookName" value="<% out.println(rs1.getString("book_name")); %>"
                            required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputAutherName4">Auther Name:</label>
                        <input type="text" class="form-control" name="autherName" id="autherName"
                            placeholder="AutherName" value="<% out.println(rs1.getString("auther_name")); %>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputState">Category:</label>
                        <select id="category"  name="category" class="form-control" required>
                            <option selected><% out.println(rs1.getString("category")); %></option>
                            <option>Science</option>
                            <option>Drama</option>
                            <option>Story</option>
                            <option>Action and Adventure</option>
                            <option>Romance</option>
                            <option>Mystery</option>
                            <option>Horror</option>
                            <option>Health</option>
                            <option>Travel</option>
                            <option>Childrens</option>
                            <option>Dictionaries</option>
                            <option>History</option>
                            <option>Cookbooks</option>
                            <option>Mathematics</option>
                            <option>Autobiographics</option>
                            <option>Fantasy</option>
                            <option>Kadambari</option>
                            <option>Others</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputState">Book Language:</label>
                        <select id="bookLanguage" name="bookLanguage" class="form-control" required>
                            <option selected><% out.println(rs1.getString("book_language")); %></option>
                            <option>English</option>
                            <option>Hindi</option>
                            <option>Marathi</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputState">Purchase Date:</label>
                        <input type="Date" class="form-control" name="purchaseDate" id="purchaseDate"
                            placeholder="BookName" value="<% out.println(rs1.getString("purchase_date")); %>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputState">Book Condition:</label>
                        <select id="bookCondition" name="bookCondition" class="form-control" required>
                            <option selected><% out.println(rs1.getString("book_condition")); %></option>
                            <option>New</option>
                            <option>Good</option>
                            <option>Fair</option>
                            <option>Poor</option>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputState">Original Price:</label>
                        <input type="text" class="form-control" name="originalPrice" id="originalPrice"
                            placeholder="Enter Price" value="<% out.println(Integer.parseInt(rs1.getString("original_price"))-40); %>" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputState">Selling Price:</label>
                        <input type="text" class="form-control" onchange="checkPrice()" name="sellingPrice" id="sellingPrice"
                            placeholder="Enter Price" value="<% out.println(Integer.parseInt(rs1.getString("selling_price"))-40); %>" required>
                            <span><small class="text-danger" id="priceWarn"></small></span>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputState">Description:</label>
                        <textarea class="form-control" id="description" name="description"
                            placeholder="Enter Description" required><% out.println(rs1.getString("description")); %></textarea>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="formFile">Upload Image:</label><br>
                        <input name="imageFile" type="file" id="bookImage" value="<% out.println(rs1.getString("image")); %>" required>
                    </div>
                    <input type="hidden" name="bno" value="<% out.println(request.getParameter("bno")); %>">
                </div>
                <!-- <div class="text-center"> -->
                <button type="submit" class="btn btn-dark col-2 mt-4 shadow-lg" id="submit">Submit</button>
                <!-- </div> -->
            </form>
        </div>
    </section>


    <!-- FOOTER -->
    <footer class="site-footer">
        <div class="container">
            <div class="row">

                <div class="ml-auto col-lg-4 col-md-5">
                    <p class="copyright-text">Copyright &copy; 2022 SecondHand Book-Store

                        <br>Design By: <a href="https://www.Shubham Lagad.com">Shubham Lagad</a>
                    </p>
                </div>

                <div class="d-flex justify-content-center mx-auto col-lg-5 col-md-7 col-12">
                    <p class="mr-4">
                        <i class="fa fa-envelope-o mr-1"></i>
                        <a href="#">shubhamlagad2000@gmail.com</a>
                    </p>
                    <p><i class="fa fa-phone mr-1"></i> +91 8007878524</p>
                </div>
            </div>
        </div>
    </footer>


    <!-- SCRIPTS -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/aos.js"></script>
    <script src="../js/smoothscroll.js"></script>
    <script src="../js/custom.js"></script>
</body>

</html>
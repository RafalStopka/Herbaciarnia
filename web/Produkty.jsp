<%@ page import="com.db.get.GetDataFromDataBase" %>
<%@ page import="com.items.categories.Category" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="com.items.products.Product" %><%--
  Created by IntelliJ IDEA.
  User: Rafal
  Date: 28.08.2018
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<HTML>

<HEAD>

    <title>Fanaberia - produkty</title>
    <meta charset="utf-8">
    <link href="/StyleSheet/style.css" type="text/css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Alex Brush' rel='stylesheet' type="text/css">
    <script
            src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="Scripts/scripts.js"></script>

</HEAD>

<BODY>

<header class="Top" class="Title">

    <h1>
        Fanaberia - Tea Garden
    </h1>

</header>

<nav class="Top">

    <ul class="Title">

        <li>Strona Główna</li>
        <li><a href="Menu.jsp">Menu</a></li>
        <li>O nas</li>
        <li>Jak dojechać</li>
        <li>Kontakt</li>

    </ul>

</nav>

<section class="Tea-History">

    <h1 class="Text-Menu">
        <%
            Category category = new Category();
            GetDataFromDataBase data = new GetDataFromDataBase();
            category = data.GetCategory(request.getParameter("nazwa"));
            out.print(category.getCategoryName());
        %>
    </h1>

    <p>
        <%
            out.print(category.getCategoryDescription());
        %>
    </p>


</section>

<section class="Tea-Kind-Menu">

    <h1>
        Nasze
        <%
            out.print(category.getCategoryName());
            if(category.getCategoryType().equals("Herbata"))
            {
                out.print(" Herbaty");
            }
        %>
    </h1>

    <%
        ArrayList <Product> produkty = new ArrayList<>();
        produkty = new GetDataFromDataBase().GetAllProductsFromCategory(request.getParameter("nazwa"));
        for(int i = 0 ; i < produkty.size() ; i++)
        {
            out.print("<article class=\"Menu-Item\">\n" +
                    "\n" +
                    "        <div class=\"Tea-img\">" +
                    "<img src=\"/Images/" +
                        produkty.get(i).getImageName() +
                    "\">\n" +
                    "\n" +
                    "        </div>\n" +
                    "\n" +
                    "        <div class=\"Menu-Item-Description\">\n" +
                    "\n" +
                    "            <h2>\n" +
                                    produkty.get(i).getProductName() +
                    "            </h2>\n" +
                    "\n" +
                    "            <p>\n" +
                                    produkty.get(i).getProductDescription() +
                    "            </p>\n" +
                                 "<button class=\"Roll-Item-Description\">Rozwin opis</button>" +
                    "\n" +
                    "        </div>\n" +
                    "\n" +
                    "    </article>");
        }
    %>

</section>

<footer class="Footer">

    <div class="Contact">

        <div id="Facebook" class="Icon">

            <p>
                Facebook
            </p>

        </div>

        <div id="Google" class="Icon">

            <p>
                Google+
            </p>

        </div>

        <div id="Phone" class="Icon">

            <p>
                123-456-789
            </p>

        </div>

        <p class="Normal">
            Rafał Stopka
            rafal.stopka@edu.uekat.pl
        </p>

    </div>

</footer>

<button class="On-Top">
    ^
</button>

</BODY>

</HTML>

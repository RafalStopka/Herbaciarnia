<%@ page import="com.db.get.GetDataFromDataBase" %>
<%@ page import="com.items.categories.Category" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Rafal
  Date: 27.08.2018
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<HEAD>

    <title>Fanaberia - Menu</title>
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


<section class="Pictures">

    <h2 class="Text">
        Herbaty
    </h2>

    <%
        GetDataFromDataBase herbaty = new GetDataFromDataBase();
        ArrayList<Category> category = herbaty.GetAllCategories();
        for(int i = 0; i < category.size() ; i++)
        {
            if(category.get(i).getCategoryType().equals("Herbata"))
            {
                out.print("<a href=\"Produkty.jsp?nazwa="+category.get(i).getProductGet()+"\" class=\"a-Img\">\n" +
                        "\n" +
                        "      <article class=\"vanish\">\n" +
                        "\n" +
                        "        <div class=\"card\">\n" +
                        "\n" +
                        "          <div class=\"imgBox\">\n" +
                        "            <img src=\"/Images/" +
                        category.get(i).getImageName() +
                        "\">\n" +
                        "          </div>\n" +
                        "\n" +
                        "          <div class=\"details\">\n" +
                        "\n" +
                        "            <h2>\n" +
                        category.get(i).getCategoryName() +
                        "            </h2>\n" +
                        "\n" +
                        "            <p>\n" +
                        category.get(i).getCategoryText() +
                        "            </p>\n" +
                        "          </div>\n" +
                        "\n" +
                        "        </div>\n" +
                        "\n" +
                        "      </article>\n" +
                        "\n" +
                        "    </a>");
            }
        }
    %>

</section>

<section class="Curiosity">
<div class="test">
    <h2 class="Text-Curio">
        Inne
    </h2>

    <%
        GetDataFromDataBase inne = new GetDataFromDataBase();
        ArrayList<Category> category2 = herbaty.GetAllCategories();
        for(int i = 0; i < category.size() ; i++)
        {
            if(category.get(i).getCategoryType().equals("Inne"))
            {
                out.print("<a href=\"Produkty.jsp?nazwa="+category.get(i).getProductGet()+"\" class=\"a-Img\">\n" +
                        "\n" +
                        "      <article class=\"vanish\">\n" +
                        "\n" +
                        "        <div class=\"card\">\n" +
                        "\n" +
                        "          <div class=\"imgBox\">\n" +
                        "            <img src=\"/Images/" +
                        category2.get(i).getImageName() +
                        "\">\n" +
                        "          </div>\n" +
                        "\n" +
                        "          <div class=\"details\">\n" +
                        "\n" +
                        "            <h2>\n" +
                        category2.get(i).getCategoryName() +
                        "            </h2>\n" +
                        "\n" +
                        "            <p>\n" +
                        category2.get(i).getCategoryText() +
                        "            </p>\n" +
                        "          </div>\n" +
                        "\n" +
                        "        </div>\n" +
                        "\n" +
                        "      </article>\n" +
                        "\n" +
                        "    </a>");
            }
        }
    %>
</div>
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

<div id="vueApp">
    <p>{{1+1}}</p>
</div>

    <button class="On-Top">
        ^
    </button>

</BODY>
</html>

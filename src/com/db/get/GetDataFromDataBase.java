package com.db.get;

import com.db.connect.ConnectToDatabase;
import com.items.categories.Category;
import com.items.products.Product;

import java.sql.*;
import java.util.ArrayList;

public class GetDataFromDataBase
{
    private Statement statement;
    private ResultSet resultSet;

    public GetDataFromDataBase() {
        try {
            statement = new ConnectToDatabase().getConnection().createStatement();
        } catch (Exception exception) {
            System.out.println("Blad Get. Kod : " + exception);
        }
    }
    public ArrayList GetAllCategories()
    {
        ArrayList <Category> categories = new ArrayList<>();
        try
        {
            resultSet = statement.executeQuery("SELECT * FROM Categories");
            while(resultSet.next())
            {
                Category category = new Category(resultSet.getInt(1),resultSet.getString(2),
                        resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),
                        resultSet.getString(6),resultSet.getString(7));
                categories.add(category);
            }
        }
        catch(Exception exception)
        {
            System.out.println("Blad GET. Kod " + exception);
        }
        return categories;
    }
    public Category GetCategory(String name)
    {
        Category category = new Category();
        try
        {
            resultSet = statement.executeQuery("SELECT * FROM Categories WHERE ProductGet =  '" + name + "'");
            while(resultSet.next())
            {
                category = new Category(resultSet.getInt(1),resultSet.getString(2),
                        resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),
                        resultSet.getString(6),resultSet.getString(7));
            }
            return category;
        }
        catch(Exception exception)
        {
            System.out.println("Blad GET. Kod " + exception);
        }
        return category;
    }
    public ArrayList GetAllProductsFromCategory(String productGet) {
        ArrayList<Product> products = new ArrayList<>();
        try
        {
            resultSet = statement.executeQuery("SELECT * FROM Products P INNER JOIN Categories C on P.CategoryID = C.CategoryID" +
                    " WHERE C.ProductGet = '" + productGet + "'");
            while(resultSet.next())
            {
                Product product = new Product(resultSet.getInt(1),resultSet.getInt(2),
                        resultSet.getString(3),resultSet.getString(4),resultSet.getString(5));
                products.add(product);
            }
        } catch (Exception exception)
        {
            System.out.println("Blad products. Kod " + exception);
        }
        return products;
    }

    public ArrayList ShowAllProducts()
    {
        ArrayList <Product> products = new ArrayList<>();
        ArrayList <String> produkty = new ArrayList<>();
        for(int i = 0 ; i < produkty.size() ; i++)
        {
            produkty.add("<article class=\"Menu-Item\">\n" +
                    "\n" +
                    "        <div class=\"Tea-img\">" +
                    "<img src=\"/Images/" +
                    products.get(i).getImageName() +
                    "\">\n" +
                    "\n" +
                    "        </div>\n" +
                    "\n" +
                    "        <div class=\"Menu-Item-Description\">\n" +
                    "\n" +
                    "            <h2>\n" +
                    products.get(i).getProductName() +
                    "            </h2>\n" +
                    "\n" +
                    "            <p>\n" +
                    products.get(i).getProductDescription() +
                    "            </p>\n" +
                    "<button class=\"Roll-Item-Description\">Rozwin opis</button>" +
                    "\n" +
                    "        </div>\n" +
                    "\n" +
                    "    </article>");
        }
        return produkty;
    }
}

package com.db.connect;

import java.sql.*;

public class ConnectToDatabase
{
    private Connection connection;

    private final String url = "jdbc:mysql://localhost:3306/Fanaberia?useUnicode="
        + "true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    private final String name = "root";
    private final String pass = "";

    public ConnectToDatabase()
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            setConnection(DriverManager.getConnection(url,name,pass));
        }
        catch(Exception exception)
        {
            System.out.println("Blad Connect. Kod : " + exception);
        }
    }
    public Connection getConnection()
    {
        return connection;
    }

    public void setConnection(Connection connection)
    {
        this.connection = connection;
    }
}

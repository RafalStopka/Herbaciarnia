package com.db.add;

import com.db.connect.ConnectToDatabase;
import java.sql.*;

public class AddDataToDatabase
{
    private Statement statement;
    private Connection connection;

    public AddDataToDatabase()
    {
        try
        {
            statement = new ConnectToDatabase().getConnection().createStatement();
        }
        catch(Exception exception)
        {
            System.out.println("Blad ADD. Kod " + exception);
        }
    }
    public void DodajDoBazy()
    {
        try
        {
            statement.executeUpdate("INSERT INTO categories VALUES (default,'Czarna','Praktycznie każdego dnia sięgamy po czarną herbatę," +
                    "która jest też doskonałym pretekstem do spotkań z bliskimi czy przyjaciółmi." +
                    "Nie zmienia to jednak faktu, że wiedza o jej powstawaniu dla większości z nas jest obca','Czarna.png'," +
                    "'Najlepiej znana z naszym kraju odmiana herbaty, u nas dostępna w najlepszych odmianach,\n" +
                    "wysoko jakościowa i aromatyczna'" +
                    ")");
        }
        catch(Exception exception)
        {
            System.out.println("Blad. Kod " + exception);
        }

    }
}

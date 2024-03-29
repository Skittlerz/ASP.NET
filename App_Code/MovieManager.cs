﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for MovieManager
/// </summary>
public class MovieManager
{

    public string connectionString; 

    public MovieManager()
    {
        connectionString = 
            WebConfigurationManager.ConnectionStrings["dbMovies12ConnectionString"].ConnectionString;
    }

    public SqlDataReader getMoviesUsingReader()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd = 
            new SqlCommand( "Select Id, Title, Director, Description From Movies");

        cmd.Connection = con;

        con.Open();

        SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        return reader;
    }

    public List<MovieCategory> getMovieCategories()
    {
        List<MovieCategory> categories = new List<MovieCategory>();

        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Select Id, Name From MovieCategories");

        cmd.Connection = con;

        con.Open();

        SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        while (reader.Read())
        {
            categories.Add(new MovieCategory(Convert.ToInt32(reader["id"]), reader["name"].ToString()));
        }

        con.Close();
        return categories;
    }

    public void insertMovieCategory(String name)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd = new SqlCommand("INSERT INTO MovieCategories (Name) VALUES (@Name)");

        cmd.Connection = con;

        cmd.Parameters.AddWithValue("Name", name);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    public void updateMovieCategory(int id, String category)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Update MovieCategories Set Name=@Name Where Id=@Id");

        cmd.Connection = con;

        cmd.Parameters.AddWithValue("Name", category);
        cmd.Parameters.AddWithValue("Id", id);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
    public List<Movie> getMovies()
    {
        List<Movie> movies = new List<Movie>();

        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Select Id, Title, Director, Description From Movies");

        cmd.Connection = con;

        con.Open();

        SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        while (reader.Read())
        {
            movies.Add(new Movie(Convert.ToInt32(reader["id"]), reader["title"].ToString(), 
                reader["director"].ToString(), reader["description"].ToString()));
        }

        con.Close();
        return movies;
    }

    public List<Movie> getMoviesByCategory(int cat)
    {
        List<Movie> movies = new List<Movie>();

        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Select Id, Title, Director, Description From Movies WHERE CategoryId=@Id");

        cmd.Connection = con;

        cmd.Parameters.AddWithValue("Id", cat);

        con.Open();

        SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        while (reader.Read())
        {
            movies.Add(new Movie(Convert.ToInt32(reader["id"]), reader["title"].ToString(),
                reader["director"].ToString(), reader["description"].ToString()));
        }

        con.Close();
        return movies;
    }

    public List<Movie> getMoviesByTitle(String title)
    {
        List<Movie> movies = new List<Movie>();

        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Select Id, Title, Director, Description From Movies WHERE Title LIKE @title");

        cmd.Connection = con;

        cmd.Parameters.AddWithValue("title", title);

        con.Open();

        SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        while (reader.Read())
        {
            movies.Add(new Movie(Convert.ToInt32(reader["id"]), reader["title"].ToString(),
                reader["director"].ToString(), reader["description"].ToString()));
        }

        con.Close();
        return movies;
    }

    public List<Movie> getMoviesByDirector(String director)
    {
        List<Movie> movies = new List<Movie>();

        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Select Id, Title, Director, Description From Movies WHERE Director=@Director");

        cmd.Connection = con;

        cmd.Parameters.AddWithValue("Director", director);

        con.Open();

        SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        while (reader.Read())
        {
            movies.Add(new Movie(Convert.ToInt32(reader["id"]), reader["title"].ToString(),
                reader["director"].ToString(), reader["description"].ToString()));
        }

        con.Close();
        return movies;
    }

    public void insertMovie(Movie m)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Insert INTO MOVIES (Title, Director, Description, CategoryID) VALUES (@Title, @Director, @Description, @CategoryId)");

        cmd.Connection = con;

        cmd.Parameters.AddWithValue("Title", m.Title);
        cmd.Parameters.AddWithValue("Director", m.Director);
        cmd.Parameters.AddWithValue("Description", m.Description);
        cmd.Parameters.AddWithValue("CategoryId", m.CategoryId);
        //cmd.Parameters.AddWithValue("InTheaters", m.InTheatres);


        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
    public void updateMovie(int id, String title, string director, string description)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Update Movies Set Title=@Title, Director=@Director, Description=@Description Where Id=@Id");

        cmd.Connection = con;

        cmd.Parameters.AddWithValue("Title", title);
        cmd.Parameters.AddWithValue("Director", director);
        cmd.Parameters.AddWithValue("Description", description);
        cmd.Parameters.AddWithValue("Id", id);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }


    public void deleteMovie(int id)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Delete from Movies Where Id=@Id");

        cmd.Connection = con;

        cmd.Parameters.AddWithValue("Id", id);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }

}
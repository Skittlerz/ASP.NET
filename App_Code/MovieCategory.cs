using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MovieCategory
/// </summary>
public class MovieCategory
{
    public int Id { get; set; }
    public String Category { get; set; }

    public MovieCategory(){ }

    public MovieCategory(int id, String category)
    {
        Id = id;
        Category = category;
    }
}
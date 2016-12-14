using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Job
/// </summary>
public class Job
{
    public int JobCode {get; set;}
    public String JobDescription { get; set; }

    public Job() { }
    public Job(int code, String description)
    {
        JobCode = code;
        JobDescription = description;
    }
}
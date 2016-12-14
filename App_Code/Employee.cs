using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Employee
/// </summary>
public class Employee
{
    public int EmployeeID { get; set; }
    public int Jobcode { get; set; }
    public String Firstname { get; set; }
    public String Lastname { get; set; }

    public Employee(int id, int job, String fname, String lname)
    {
        EmployeeID = id;
        Jobcode = job;
        Firstname = fname;
        Lastname = lname;
    }

    public Employee() { }

}
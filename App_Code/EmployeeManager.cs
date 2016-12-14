using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for EmployeeManager
/// </summary>
public class EmployeeManager
{
    public string connectionString;

    public EmployeeManager()
    {
        connectionString =
           WebConfigurationManager.ConnectionStrings["dbEmp12ConnectionString2"].ConnectionString;
    }

    public List<Employee> getEmployees()
    {
        List<Employee> employees = new List<Employee>();

        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Select EmployeeId, FirstName, LastName, JobCode From Employees");

        cmd.Connection = con;

        con.Open();

        SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        while (reader.Read())
        {
            employees.Add(new Employee(Convert.ToInt32(reader["EmployeeId"]), Convert.ToInt32(reader["JobCode"]),
                reader["FirstName"].ToString(), reader["LastName"].ToString()));
        }

        con.Close();
        return employees;
    }

    public List<Employee> getEmployeesByJobcode(int job)
    {
        List<Employee> employees = new List<Employee>();

        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Select EmployeeId, FirstName, LastName From Employees WHERE JobCode=@job");

        cmd.Connection = con;

        cmd.Parameters.AddWithValue("job", job);

        con.Open();

        SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        while (reader.Read())
        {
            employees.Add(new Employee(Convert.ToInt32(reader["EmployeeId"]), Convert.ToInt32(reader["JobCode"]),
                reader["FirstName"].ToString(), reader["LastName"].ToString()));
        }

        con.Close();
        return employees;
    }

    public void updateEmployee(int id, int job, string fname, string lname)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Update Employees Set JobCode=@job, FirstName=@fname, LastName=@lname Where EmployeeId=@Id");

        cmd.Connection = con;

        cmd.Parameters.AddWithValue("job", job);
        cmd.Parameters.AddWithValue("fname", fname);
        cmd.Parameters.AddWithValue("lname", lname);
        cmd.Parameters.AddWithValue("Id", id);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }

    public void insertEmployee(Employee e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Insert INTO Employees (JobCode, FirstName, LastName) VALUES (@job, @fname, @lname)");

        cmd.Connection = con;

        cmd.Parameters.AddWithValue("job", e.Jobcode);
        cmd.Parameters.AddWithValue("fname", e.Firstname);
        cmd.Parameters.AddWithValue("lname", e.Lastname);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }

    public List<Job> getJobs()
    {
        List<Job> jobs = new List<Job>();

        SqlConnection con = new SqlConnection();
        con.ConnectionString = connectionString;

        SqlCommand cmd =
            new SqlCommand("Select JobCode, JobDescription From Jobs");

        cmd.Connection = con;

        con.Open();

        SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        while (reader.Read())
        {
            jobs.Add(new Job(Convert.ToInt32(reader["JobCode"]),reader["JobDescription"].ToString()));
        }

        con.Close();
        return jobs;
    }
}
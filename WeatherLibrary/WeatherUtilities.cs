using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WeatherLibrary
{
    public class WeatherUtilities
    {
        String conString;

        public WeatherUtilities()
        {
            conString = Connections.ConnectionString();
        }

        public void addWeatherReport(WeatherReport report)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = conString;

            SqlCommand cmd =
                new SqlCommand("INSERT INTO Reports (Lat,Lon,Facing,TimeSubmitted) VALUES (@lat,@lon,@facing,@time)");

            cmd.Connection = con;

            cmd.Parameters.AddWithValue("lat", report.Latitude);
            cmd.Parameters.AddWithValue("lon", report.Longitude);
            cmd.Parameters.AddWithValue("facing", report.Facing);
            cmd.Parameters.AddWithValue("time", report.TimeSubmitted);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
       
        public List<WeatherReport> getAllReports()
        {
            List<WeatherReport> reports = new List<WeatherReport>();

            SqlConnection con = new SqlConnection();
            con.ConnectionString = conString;

            SqlCommand cmd =
                new SqlCommand("Select Lat,Lon,Facing,TimeSubmitted From Reports");

            cmd.Connection = con;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            while (reader.Read())
            {
                reports.Add(new WeatherReport(Convert.ToSingle(reader["Lat"]), Convert.ToSingle(reader["Lon"]),
                    Convert.ToSingle(reader["Facing"]), Convert.ToDateTime(reader["TimeSubmitted"])));
            }

            con.Close();
            return reports;
        }
    
        public WeatherReport getMostRecentReport()
        {
            WeatherReport report = new WeatherReport();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = conString;

            SqlCommand cmd =
                new SqlCommand("SELECT TOP 1 [Lat],[Lon],[Facing],[TimeSubmitted] FROM[WeatherReports12].[dbo].[Reports] order by TimeSubmitted");

            cmd.Connection = con;

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

             report = new WeatherReport(Convert.ToSingle(reader["Lat"]), Convert.ToSingle(reader["Lon"]),
                    Convert.ToSingle(reader["Facing"]), Convert.ToDateTime(reader["TimeSubmitted"]));
            
            con.Close();

            return report;

        }
    
    }
}

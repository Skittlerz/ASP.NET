using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WeatherLibrary;

public partial class WeatherReports : System.Web.UI.Page
{
    WeatherUtilities wu;
    List<WeatherReport> reports;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        wu = new WeatherUtilities();  
        reports = wu.getAllReports();
        gvReports.DataSource = reports;
        gvReports.DataBind();
        
     
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        float lat, lon;

        lat = Convert.ToSingle(txtLat.Text);
        lon = Convert.ToSingle(txtLon.Text);

        wu.addWeatherReport(new WeatherReport(lat, lon, 0, DateTime.Now));
    }
}
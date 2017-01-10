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
    public int iCounter = 0;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        wu = new WeatherUtilities();  
        reports = wu.getAllReports();
        rptReports.DataSource = reports;
        rptReports.DataBind();
        gvReports.DataSource = reports;
        gvReports.DataBind();
        
     
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        float lat, lon, facing;

        lat = Convert.ToSingle(txtLat.Text);
        lon = Convert.ToSingle(txtLon.Text);
        facing = Convert.ToSingle(txtFacing.Text);

        wu.addWeatherReport(new WeatherReport(lat, lon, facing, DateTime.Now));
        reports = wu.getAllReports();
        gvReports.DataSource = reports;
        gvReports.DataBind();
        txtLat.Text = "";
        txtLon.Text = "";
    }

    protected void btnAllReports_Click(object sender, EventArgs e)
    {
        reports = wu.getAllReports();
        gvReports.DataSource = reports;
        gvReports.DataBind();
    }

    protected void btnMostRecentReport_Click(object sender, EventArgs e)
    {
        reports = wu.getMostRecentReport();
        rptReports.DataSource = reports;
        rptReports.DataBind();
        gvReports.DataSource = reports;
        gvReports.DataBind();
    }
}
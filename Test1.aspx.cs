using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test1 : System.Web.UI.Page
{
    String [,] schedule;
    protected void Page_Load(object sender, EventArgs e)
    {
        schedule = (String[,])Session["schedule"];

        if (schedule == null)
        {
            schedule = new string[13, 32];
        }

        Session["schedule"] = schedule;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        TableCell c;
        c = e.Cell;
        String job;

        int x = e.Day.Date.Month;
        int y = e.Day.Date.Day;

        if (schedule[x, y] != null)
        {
            job = schedule[x, y];

            switch (job)
            {
                case "1000":
                    c.BackColor = Color.Aqua;
                    break;
                case "1001":
                    c.BackColor = Color.Coral;
                    break;
                case "1002":
                    c.BackColor = Color.Purple;
                    break;
                case "1003":
                    c.BackColor = Color.DarkCyan;
                    break;
                case "1004":
                    c.BackColor = Color.Green;
                    break;
                case "1005":
                    c.BackColor = Color.Orange;
                    break; 
            }
           

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String[,] schedule = (String[,])Session["schedule"];

        int x = Calendar1.SelectedDate.Month;
        int y = Calendar1.SelectedDate.Day;

        schedule[x, y] = (string)ddlJobs.SelectedValue;

        switch (schedule[x,y])
        {
            case "1000":
                lblJob.Text = "Station Manager";
                break;
            case "1001":
                lblJob.Text = "DJ";
                break;
            case "1002":
                lblJob.Text = "Receptionist";
                break;
            case "1003":
                lblJob.Text = "Assistant Manager";
                break;
            case "1004":
                lblJob.Text = "Sales";
                break;
            case "1005":
                lblJob.Text = "News";
                break;
        }

        Session["schedule"] = schedule;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        String[,] schedule = (String[,])Session["schedule"];

        int x = Calendar1.SelectedDate.Month;
        int y = Calendar1.SelectedDate.Day;

        if (schedule[x, y] != null)
        {
            
            switch (schedule[x,y])
            {
                case "1000":
                    lblJob.Text = "Station Manager";
                    break;
                case "1001":
                    lblJob.Text = "DJ";
                    break;
                case "1002":
                    lblJob.Text = "Receptionist";
                    break;
                case "1003":
                    lblJob.Text = "Assistant Manager";
                    break;
                case "1004":
                    lblJob.Text = "Sales";
                    break;
                case "1005":
                    lblJob.Text = "News";
                    break;
            }
        }
        else
        {
            lblJob.Text = "No Job";
        }
    }
}
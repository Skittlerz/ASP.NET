using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public partial class MeetingScheduler : System.Web.UI.Page
{
    String[,] schedule;
    FileStream schedIO;
    BinaryFormatter schedObjIO;


    protected void Page_Load(object sender, EventArgs e)
    {

        schedule = (String[,])Session["schedule"];

        if (schedule == null)
        {
            if (File.Exists(MapPath("toDoList\\toDoList.bin")))
            {
                schedIO = new FileStream(MapPath("toDoList\\toDoList.bin"), FileMode.Open);
                schedObjIO = new BinaryFormatter();
                schedule = (string[,])schedObjIO.Deserialize(schedIO);
                schedIO.Close();
            }
            else
            {
                schedule = new string[13, 32];
            }

            Session["schedule"] = schedule;
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        String[,] schedule = (String[,])Session["schedule"];

        int x = calMeetings.SelectedDate.Month;
        int y = calMeetings.SelectedDate.Day;

        schedule[x, y] = (string)txtSchedule.Text;

        Session["schedule"] = schedule;

        schedIO = 
            new FileStream(MapPath("toDoList\\toDoList.bin"), FileMode.Create);

        schedObjIO = new BinaryFormatter();
        schedObjIO.Serialize(schedIO, schedule);

        schedIO.Close();

    }

    protected void calMeetings_SelectionChanged(object sender, EventArgs e)
    {
        String[,] schedule = (String[,])Session["schedule"];

        int x = calMeetings.SelectedDate.Month;
        int y = calMeetings.SelectedDate.Day;
       
        txtSchedule.Text = schedule[x, y];
       

        
    }

    protected void calMeetings_DayRender(object sender, DayRenderEventArgs e)
    {
        TableCell c;
        c = e.Cell;
        String meeting;

        int x = e.Day.Date.Month;
        int y = e.Day.Date.Day;

        if (schedule[x, y] != null)
        {
            meeting = schedule[x, y];
            c.BackColor = Color.Aqua;
            c.Controls.Add(new LiteralControl("<p>"));
            c.Controls.Add(new LiteralControl(meeting));
            c.Controls.Add(new LiteralControl("</p>"));
              
        }
    }
}
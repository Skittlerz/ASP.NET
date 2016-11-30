using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class FileUploadDemo : System.Web.UI.Page
{
    protected void Page_PreRender(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            if (Request.QueryString["FileToDelete"] != null)
            {
                String fileName = Request.QueryString["fileToDelete"].ToString();
                String filePath = "~/UploadedImages/" + fileName;

                if (File.Exists(Server.MapPath(filePath)))
                {
                    File.Delete(Server.MapPath(filePath));
                }
          
            }
        }
        DirectoryInfo dir = new DirectoryInfo(MapPath("~/UploadedImages/"));
        dlstImages.DataSource = dir.GetFiles();
        dlstImages.DataBind();

    }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        String filePath = "~/UploadedImages/" + fupUpload.FileName;
            if(CheckFileType(filePath))
        {
            fupUpload.SaveAs(MapPath(filePath));
        }
    }

private bool CheckFileType(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        switch (ext.ToLower())
        {
            case ".gif":
                return true;
            case ".png":
                return true;
            case ".jpg":
                return true;
            case ".jpeg":
                return true;
            default:
                return false;

        }
    }

public void deleteFile()
    {
        QueryStringParameter file;

        
    }

}
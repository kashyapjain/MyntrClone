using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default14 : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile == true )
        {

            FileUpload1.SaveAs(Server.MapPath("pics/" + FileUpload1.FileName + ".jpg"));
            c1.Image_Resize(Server.MapPath("pics/" + FileUpload1.FileName + ".jpg"), Server.MapPath("pics/thumb_" + FileUpload1.FileName + ".jpg"), 120, 150);

            
        }

    }
}

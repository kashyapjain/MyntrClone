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
using System.Data.SqlClient;

public partial class Default12 : System.Web.UI.Page
{
    SqlDataAdapter adp;
    DataSet ds = new DataSet();
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=LAPTOP-7FSEBR6V\\SQLEXPRESS;Initial Catalog=thefashionstore;Integrated Security=True;";
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        Page.Response.Cache.SetCacheability(HttpCacheability.NoCache);

        //HttpResponse.RemoveOutputCacheItem("/caching/CacheForever.aspx");

        //Cache.Remove("key");

        //foreach (System.Collections.DictionaryEntry entry in HttpContext.Current.Cache)
        //{
        //    HttpContext.Current.Cache.Remove((string)entry.Key);
        //}

        //    Response.Cache.SetExpires(DateTime.UtcNow.AddSeconds(-1));
        //Response.Cache.SetCacheability(HttpCacheability.NoCache);
        //Response.Cache.SetNoStore();

        //HttpContext.Current.Response.AddHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        //HttpContext.Current.Response.AddHeader("Pragma", "no-cache");
        //HttpContext.Current.Response.AddHeader("Expires", "0");

        String sql1 = "select * from catogries";
        adp = new SqlDataAdapter(sql1, con);
        adp.Fill(ds, "catnm");
        Repeater1.DataSource = ds.Tables["catnm"];
        Repeater1.DataBind();

       
    }
  }

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class pages_home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-BSGQKN7;Initial Catalog=C:\USERS\ADMIN\DESKTOP\MINIPROJECT\APP_DATA\DATABASE.MDF;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            SetImageUrl();
        }

        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        if (Request.QueryString["category"] == null)
        {
            cmd.CommandText = "select * from product";
        }

        else
        {
            cmd.CommandText = "select * from product where product_category= '" + Request.QueryString["category"].ToString() + "'";
        }

           if (Request.QueryString["search"] != null)
                {
                    cmd.CommandText = "select * from product where product_name like ('%" + Request.QueryString["search"].ToString() + "%')";
                }
                
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource = dt;
        d1.DataBind();
        con.Close();
    }


    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }

    private void SetImageUrl()
    {
        Random ran = new Random();
        int i = ran.Next(1,9);
        Image2.ImageUrl = "../slider/" + i.ToString() + ".jpg" ;
    }
}
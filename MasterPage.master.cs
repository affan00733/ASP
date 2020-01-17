using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    string s;
    string t;
    string[] a = new string[5];
    int tot = 0;
    int totcount = 0;
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-BSGQKN7;Initial Catalog=C:\USERS\ADMIN\DESKTOP\MINIPROJECT\APP_DATA\DATABASE.MDF;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
          con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product_category";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        dd.DataSource = dt;
        dd.DataBind();
        con.Close();
        /*
        if (Request.Cookies["aa"] != null)
        {
            s = Convert.ToString(Request.Cookies["aa"].Value);

            string[] strarr = s.Split('|');

            for (int i = 0; i < strarr.Length; i++)
            {
                t = Convert.ToString(strarr[i].ToString());
                string[] strarr1 = t.Split(',');
                for (int j = 0; j < strarr1.Length; j++)
                {
                    a[j] = strarr1[j].ToString();
                }

                tot = tot + (Convert.ToInt32(a[2].ToString()) * Convert.ToInt32(a[3].ToString()));
                totcount = totcount + 1;
               
                cartot.Text = totcount.ToString();
                carttotprice.Text = tot.ToString();
            }
        }*/
    }



}

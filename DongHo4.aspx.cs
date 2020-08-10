using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DongHo4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String strcn = ConfigurationManager.ConnectionStrings["SongToan"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();

        String strcmd = "insert into SanPhamDongHoCasio values('" + lbMasp.Text + "',N'" + lbTensp.Text + "','" + lbGia.Text + "')";

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = strcmd;

        int rs = cmd.ExecuteNonQuery();
        if (rs == 1)
            lbKetQua.Text = "";
        cn.Close();
    }
}
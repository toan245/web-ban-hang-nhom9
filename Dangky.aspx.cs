using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dangky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (KT() == 1)
        {
            Label1.Text = "Email da su dung vui long nhap Email Khac";
        }
        else
        {
            String CNN = "Data Source=LAPTOP-SPTBDMDT\\SQLEXPRESS;Initial Catalog=DSKH;User ID=sa;Password=sa";
            SqlConnection cnn = new SqlConnection(CNN);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnn;
            cmd.CommandText = "DK";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", TxtEmail.Text);
            cmd.Parameters.AddWithValue("@TenKH", TxtTen.Text);
            cmd.Parameters.AddWithValue("@MatKhau", TxtMK.Text);
            cmd.Parameters.AddWithValue("@DiaChi", TxtDC.Text);
            cmd.Parameters.AddWithValue("@SDT", TxtSoDT.Text);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            Label1.Text = "dang ky thanh cong";

        }
    }
    public int KT()
    {
        int KQ = 0;
        String CNN = "Data Source=LAPTOP-SPTBDMDT\\SQLEXPRESS;Initial Catalog=DSKH;User ID=sa;Password=sa";
        SqlConnection cnn = new SqlConnection(CNN);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandText = "select count(Email) from Khach where Email = @Email";
        cmd.Parameters.AddWithValue("@Email", TxtEmail.Text);
        cnn.Open();
        KQ = (int)cmd.ExecuteScalar();
        cnn.Close();
        return KQ;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("DangNhap.aspx");
    }
}
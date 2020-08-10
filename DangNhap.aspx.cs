using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (KT() == 1)
        {
            Session["Email"] = TxtEmail.Text;
            Session["DN"] = "Roi";
            Response.Redirect("TrangChu.aspx");
        }
        else if (KT1() == 1)
        {
            Response.Redirect("DSKhachHang.aspx");
        }
        else
        {
            Label1.Text = "Email Hoac Mat Khau Khong Dung Vui Long Nhap Lai";
        }
    }
    public int KT()
    {
        int KQ = 0;
        String CNN = "Data Source=LAPTOP-SPTBDMDT\\SQLEXPRESS;Initial Catalog=DSKH;User ID=sa;Password=sa";
        SqlConnection cnn = new SqlConnection(CNN);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandText = "select count(Email) as 'KQ' from Khach where Email = @Email and MatKhau = @MatKhau and Quyen='user'";
        cmd.Parameters.AddWithValue("@Email", TxtEmail.Text);
        cmd.Parameters.AddWithValue("MatKhau", TxtMK.Text);
        cnn.Open();
        KQ = (int)cmd.ExecuteScalar();
        cnn.Close();
        return KQ;
    }
    public int KT1()
    {
        int KQ = 0;
        String CNN = "Data Source=LAPTOP-SPTBDMDT\\SQLEXPRESS;Initial Catalog=DSKH;User ID=sa;Password=sa";
        SqlConnection cnn = new SqlConnection(CNN);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cnn;
        cmd.CommandText = "select count(Email) from Khach where Email = @Email and MatKhau = @MatKhau and Quyen='admin'";
        cmd.Parameters.AddWithValue("@Email", TxtEmail.Text);
        cmd.Parameters.AddWithValue("MatKhau", TxtMK.Text);
        cnn.Open();
        KQ = (int)cmd.ExecuteScalar();
        cnn.Close();
        return KQ;
    }
}
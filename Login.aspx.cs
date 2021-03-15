using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   


    protected void btn_Llogin_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter sda = new SqlDataAdapter("Select * from Teacher where TUserID='" + txt_Username.Text + "' and TPassword='" + txt_password.Text + "'", con);

        DataTable dt = new DataTable();
        sda.Fill(dt);

        if (txt_Username.Text == "Admin" & txt_password.Text == "123")
        {
            Response.Redirect("Admin_Home.aspx");
        }
        else if (dt.Rows.Count == 1)
        {
            Session["TeacherID"] = dt.Rows[0][0].ToString();
            Session["TeacherName"] = dt.Rows[0][1].ToString();
            Session["TUserId"] = txt_Username.Text;
            Response.Redirect("Teacher_Home.aspx");

        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Login Failed...";
        }
    }
}
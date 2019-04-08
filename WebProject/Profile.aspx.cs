using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Project_Stuff
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["PSConnectionStrings"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }
        private void BindData()
        {
            SqlCommand objCmd = new SqlCommand();
            objCmd.Connection = con;
            objCmd.CommandText = "SELECT * FROM restaurantProfile";
            objCmd.CommandType = CommandType.Text;
            SqlDataReader sdr = null;
            con.Open();
            sdr = objCmd.ExecuteReader();

            while (sdr.Read())
            {
                TextBoxName.Text = (sdr["restaurantName"].ToString());
                TextBoxContact.Text = (sdr["restaurantContactNo"].ToString());
                TextBoxEmail.Text = (sdr["restaurantEmail"]).ToString();
                TextBoxAddress.Text = (sdr["restaurantAddress"].ToString());
                TextBoxOpeningTime.Text = (sdr["restaurantOpeningTime"].ToString());
                TextBoxClosingTime.Text = (sdr["restaurantClosingTime"].ToString());
                TextBoxCapacity.Text = (sdr["restaurantCapacity"].ToString());
                TextBoxBio.Text = (sdr["restaurantDescription"].ToString());
            }
            con.Close();
        }
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into restaurantProfile(restaurantName,restaurantContactNo,restaurantEmail,restaurantAddress,restaurantOpeningTime,restaurantClosingTime,restaurantCapacity,restaurantDescription)values('" + TextBoxName.Text + "','" + TextBoxContact.Text + "','" + TextBoxEmail.Text + "','" + TextBoxAddress.Text + "','" + TextBoxOpeningTime.Text + "','" + TextBoxClosingTime.Text + "','" + TextBoxCapacity.Text + "','" + TextBoxBio.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void ButtonReset_Click(object sender, EventArgs e)
        {
            TextBoxName.Text = "";
            TextBoxContact.Text = "";
            TextBoxEmail.Text = "";
            TextBoxAddress.Text = "";
            TextBoxOpeningTime.Text = "";
            TextBoxClosingTime.Text = "";
            TextBoxCapacity.Text = "";
            TextBoxBio.Text = "";
        }
    }
}
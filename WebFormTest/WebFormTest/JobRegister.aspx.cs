using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using WebFormTest.Config;

namespace WebFormTest
{
    public partial class JobRegister : System.Web.UI.Page
    {
        Connection conn = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblDate.Text = DateTime.Today.ToString("MM/dd/yyyy");
                IdLoad();
            }
            


        }

        private void IdLoad()
        {
            conn.con.Open();
            string qry = "SELECT     MAX(Id) AS Id  FROM JobRegister  ";
            SqlCommand cmd = new SqlCommand(qry, conn.con);
            SqlDataReader sdr = cmd.ExecuteReader();
            // string dept = 
            if (sdr.Read())
            {
                txtId.Text = (sdr["Id"].ToString());
            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //if (validation==0){return;}
            SaveMethodCall();
            IdLoad();
        }
        private void SaveMethodCall()
        {
            //sir db te save korar simple ekta demo
            using (SqlCommand command = conn.con.CreateCommand())
            {
                command.CommandText = "INSERT INTO  JobRegister (VasselName, TripStatus,JobDate) VALUES (@VasselName, @TripStatus,@JobDate)";

                command.Parameters.AddWithValue("@VasselName", drpVassel.SelectedValue);
                command.Parameters.AddWithValue("@TripStatus", drpTripStatus.SelectedValue);
                command.Parameters.AddWithValue("@JobDate", txtJobDate.Text);
               
                conn.con.Open();
                int i = command.ExecuteNonQuery();

                if (i > 0)
                {

                    //Response.Write("<script>alert('Save Successfully');</script>");
                    lblMessage.Text = "Save successfully";
                    
                    //ConncentionClose();
                    conn.con.Close();
                   

                }

            }
        }
    }
}
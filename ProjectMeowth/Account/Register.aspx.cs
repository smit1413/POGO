using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ProjectMeowth.Account
{

    public partial class Register : System.Web.UI.Page
    {
        //Put connection string here for database
        private string connectionString = @"Data Source=DESKTOP-3O49TB0;Initial Catalog=userreg;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            ErrorMessage.Visible = false;
            SuccessMessage.Visible = false;
            try
            {
                using (var connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    var sql = "INSERT INTO reg (name, email, team, exp, password) VALUES (@name, @email, @team, @exp, @password)";
                    using (var cmd = new SqlCommand(sql, connection))
                    {
                        cmd.Parameters.AddWithValue("@name", TrainerName.Text);
                        cmd.Parameters.AddWithValue("@email", Email.Text);
                        cmd.Parameters.AddWithValue("@team", TeamDropdown.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@exp", Experience.Text);
                        cmd.Parameters.AddWithValue("@password", Password.Text);
                        cmd.ExecuteNonQuery();
                        ErrorMessage.Visible = false;
                        SuccessMessage.Visible = true;
                        SuccessMessage.Text = "Registration Successful!";
                    }
                }
            }
            catch (Exception ex)
            {
                SuccessMessage.Visible = false;
                ErrorMessage.Visible = true;
                ErrorMessage.Text = ex.Message;
            }

        }

    }
}
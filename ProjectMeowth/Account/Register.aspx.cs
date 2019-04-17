using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using ProjectMeowth.Models;


namespace ProjectMeowth.Account
{

    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();

            int parsedExp = -1;
            int.TryParse(Experience.Text, out parsedExp);
            var user = new ApplicationUser() {
                UserName = Email.Text,
                Email = Email.Text,
                PlayerName = TrainerName.Text,
                Team = TeamDropdown.SelectedItem.Text,
                GameExperience = parsedExp
            };

            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                // For more information on how to enable account confirmation and password reset please visit https://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            /*
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
            */
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
                /*
                SuccessMessage.Visible = false;
                ErrorMessage.Visible = true;
                ErrorMessage.Text = ex.Message;
                */
            }
        }
    }
}
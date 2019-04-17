using Microsoft.AspNet.Identity.Owin;
using ProjectMeowth.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectMeowth
{
    public partial class MyProfile : System.Web.UI.Page
    {
        public string PlayerName { get; private set; }
        public string TeamName { get; private set; }
        public int GameExperience { get; private set; }
        public int Level { get; private set; }


        protected void Page_Load(object sender, EventArgs e)
        {
            PlayerName = User.Identity.GetPlayerName();
            TeamName = User.Identity.GetTeamName();
            GameExperience = User.Identity.GetGameExperience();
            Level = AccountHelper.ConvertExpToLevel(GameExperience);
        }
    }
}
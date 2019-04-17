using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace ProjectMeowth
{
    public partial class Trades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlImage img = new HtmlImage();
            img.Attributes.Add("class", "pokemonImage");
            img.Src = "/Content/img/Loading Pokeball-xs.gif";
            
            tmpPanel.Controls.Add(img);
            tmpPanel.Attributes.Add("class", "text-center");
        }
    }
}
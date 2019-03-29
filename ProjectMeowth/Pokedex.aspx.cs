using ProjectMeowth.Helpers;
using ProjectMeowth.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace ProjectMeowth
{
    public partial class Pokedex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                //Response.Cookies["myCookie"].Value = "some cookie value";
                //var cookieValue = Request.Cookies["myCookie"].Value;
            }

            lblHi.Text = AccountHelper.GetUsername();

            PokedexFakeGenerator generator = new PokedexFakeGenerator();
            List<PokemonModel> lstPokemon = generator.GetFakePokedex();

            HtmlGenericControl bootStrapRow = new HtmlGenericControl();
            bootStrapRow.Attributes.Add("class", "row");

            PokedexGrid.Controls.Add(bootStrapRow);


            lstPokemon.ForEach(x =>
            {
                string customClass = "Generation-" + x.Generation.ToString() + " " + x.PokemonType;

                HtmlGenericControl cardWrapper = new HtmlGenericControl();
                cardWrapper.Attributes.Add("class", "card col-sm-6 col-md-4 col-lg-2 grid-item " + customClass);

                HtmlGenericControl cardBody = new HtmlGenericControl();
                cardBody.Attributes.Add("class", "card-body");

                ImageButton cardImage = new ImageButton();
                cardImage.Attributes.Add("class", "card-img-top mx-auto");
                cardImage.Attributes.Add("data-speciesid", "SpeciesID-" + x.SpeciesID);
                cardImage.Click += TogglePokemonState;

                //HtmlImage innerImg = new HtmlImage();
                String imageURL = "/Content/img/pokemon/" + x.SpeciesID + ".png";
                if (File.Exists(Server.MapPath(imageURL)))
                {
                    //innerImg.Src = imageURL;
                    cardImage.ImageUrl = imageURL;
                    cardImage.Attributes.Add("style", "max-width: 150px");
                    //innerImg.Attributes.Add("style", "max-width: 150px");
                }
                //cardImage.Controls.Add(innerImg);

                ///
                ////Label lblImg = new Label();
                ////lblImg.Text = "\u2713";
                ////lblImg.Visible = false;



                ////String imageURL = "/Content/img/pokemon/" + x.SpeciesID + ".png";
                ////if(File.Exists(Server.MapPath(imageURL)))
                ////{
                ////    cardImage.Src = imageURL;
                ////    cardImage.Attributes.Add("style", "max-width: 150px");
                ////}


                HtmlGenericControl cardTitle = new HtmlGenericControl();
                cardTitle.Attributes.Add("class", "card-title");
                cardTitle.InnerText = x.Name;

                ////HtmlAnchor cardLink = new HtmlAnchor();
                ////cardLink.HRef = "#";
                ////cardLink.Attributes.Add("class", "btn btn-sm btn-info");
                ////cardLink.InnerText = "Need this";
                Label lblImg = new Label();
                lblImg.Text = "\u2713";
                lblImg.Visible = false;

                cardBody.Controls.Add(cardTitle);
                //cardBody.Controls.Add(cardLink);
                cardBody.Controls.Add(lblImg);
                cardWrapper.Controls.Add(cardImage);
                cardWrapper.Controls.Add(cardBody);

                bootStrapRow.Controls.Add(cardWrapper);
                //PokedexGrid.Controls.Add(cardWrapper);
                //////////////////
                
                ////HtmlGenericControl panelOutside = new HtmlGenericControl();
                ////panelOutside.Attributes.Add("class", "panel panel-success" + " grid-item " + customClass);
                ////panelOutside.Attributes.Add("style", "min-height: 120px;");

                ////HtmlGenericControl panelHeading = new HtmlGenericControl();
                ////panelHeading.Attributes.Add("class", "panel-heading");

                ////HtmlGenericControl panelBody = new HtmlGenericControl();
                ////panelBody.Attributes.Add("class", "panel-body");

                
                ////ImageButton img = new ImageButton();
                ////img.ImageUrl = "/Content/img/pokemon/" + x.SpeciesID + ".png";
                ////img.Attributes.Add("data-speciesid", "SpeciesID-" + x.SpeciesID);
                ////img.Click += TogglePokemonState;

                ////Label lblImg = new Label();
                ////lblImg.Text = "\u2713";
                ////lblImg.Visible = false;

                //////HtmlImage img = new HtmlImage();
                //////img.Src = "/Content/img/pokemon/" + x.SpeciesID + ".png";

                ////panelHeading.InnerText = x.Name;

                ////panelBody.Controls.Add(img);
                ////panelBody.Controls.Add(lblImg);

                ////panelOutside.Controls.Add(panelHeading);
                ////panelOutside.Controls.Add(panelBody);
                ////PokedexGrid.Controls.Add(panelOutside);
                
            });
        }

        public void TogglePokemonState(object sender, ImageClickEventArgs e)
        {
            ImageButton img = (ImageButton)sender;
            String SpeciesID = img.Attributes["data-speciesid"];

            
            if (img.Style["opacity"] == "0.3")
            {
                img.Style.Remove("opacity");
                img.Parent.Controls[1].Controls[1].Visible = false;
            }
            else
            {
                img.Style.Add("opacity", "0.3");
                img.Parent.Controls[1].Controls[1].Visible = true;
            }
        }
    }
}
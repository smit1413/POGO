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

                HtmlImage cardImage = new HtmlImage();
                cardImage.Attributes.Add("class", "card-img-top");
                cardImage.Attributes.Add("data-speciesid", "SpeciesID-" + x.SpeciesID);
                String imageURL = "/Content/img/pokemon/" + x.SpeciesID + ".png";
                if(File.Exists(Server.MapPath(imageURL)))
                {
                    cardImage.Src = imageURL;
                    cardImage.Attributes.Add("style", "max-width: 150px");
                }
                

                HtmlGenericControl cardTitle = new HtmlGenericControl();
                cardTitle.Attributes.Add("class", "card-title");
                cardTitle.InnerText = x.Name;

                HtmlAnchor cardLink = new HtmlAnchor();
                cardLink.HRef = "#";
                cardLink.Attributes.Add("class", "btn btn-sm btn-info");
                cardLink.InnerText = "Need this";

                cardBody.Controls.Add(cardTitle);
                cardBody.Controls.Add(cardLink);
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

            
            if(img.Style["opacity"] == "0.3")
            {
                img.Style.Remove("opacity");
                img.Parent.Controls[1].Visible = false;
            }
            else
            {
                img.Style.Add("opacity", "0.3");
                img.Parent.Controls[1].Visible = true;
            }
        }
    }
}
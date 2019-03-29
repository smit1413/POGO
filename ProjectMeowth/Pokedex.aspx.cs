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

            }

            PokedexFakeGenerator generator = new PokedexFakeGenerator();
            List<PokemonModel> lstPokemon = generator.GetFakePokedex();

            HtmlGenericControl bootStrapRow = new HtmlGenericControl();
            bootStrapRow.Attributes.Add("class", "row  align-items-center");

            PokedexGrid.Controls.Add(bootStrapRow);


            lstPokemon.ForEach(x =>
            //lstPokemon.Take(20).ToList<PokemonModel>().ForEach(x =>
            {
                string customClass = "Generation-" + x.Generation.ToString() + " " + x.PokemonType;

                HtmlGenericControl cardWrapper = new HtmlGenericControl();
                cardWrapper.Attributes.Add("class", "card border-info col-sm-3 col-md-2 col-lg-1 grid-item " + customClass);
                
                // Due to jQuery.imgCheckbox, cards are getting overlapped on each other, so we need to add margin-bottom for the label.
                cardWrapper.Attributes.Add("style", "margin-bottom: 3%");

                HtmlGenericControl cardContents = new HtmlGenericControl();
                cardContents.Attributes.Add("class", "pokemonCard");
                

                HtmlGenericControl cardBody = new HtmlGenericControl();
                cardBody.Attributes.Add("class", "card-body");

                HtmlGenericControl cardImage = new HtmlGenericControl();
                cardImage.Attributes.Add("class", "card-img-top mx-auto");
                cardImage.Attributes.Add("data-speciesid", "SpeciesID-" + x.SpeciesID);

                HtmlImage img = new HtmlImage();
                img.Attributes.Add("class", "pokemonImage");
                String imageURL = "/Content/img/pokemon/" + x.SpeciesID + ".png";
                if (File.Exists(Server.MapPath(imageURL)))
                {
                    img.Src = imageURL;
                    img.Attributes.Add("style", "max-width: 100px");
                }
                cardImage.Controls.Add(img);

                HtmlGenericControl cardTitle = new HtmlGenericControl();
                cardTitle.Attributes.Add("class", "card-title");
                cardTitle.InnerText = x.Name;

                cardBody.Controls.Add(cardTitle);
                cardContents.Controls.Add(cardImage);
                cardContents.Controls.Add(cardBody);

                
                cardWrapper.Controls.Add(cardContents);
                bootStrapRow.Controls.Add(cardWrapper);
            });
        }
    }
}
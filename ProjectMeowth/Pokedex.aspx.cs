using ProjectMeowth.Models;
using System;
using System.Collections.Generic;
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

            ////< div class="grid-item region-johto type-none">A</div>
            ////<div class="grid-item grid-item--width2 region-kanto type-dragon">B</div>
            ////<div class="grid-item region-johto type-dragon">C</div>
            ////<div class="grid-item region-kanto type-none">D</div>
            ////<div class="grid-item region-johto type-none">E</div>

            lstPokemon.ForEach(x =>
            {
                string customClass = "Generation-" + x.Generation.ToString() + " " + x.PokemonType;

                HtmlGenericControl panelOutside = new HtmlGenericControl();
                panelOutside.Attributes.Add("class", "panel panel-success" + " grid-item " + customClass);

                HtmlGenericControl panelHeading = new HtmlGenericControl();
                panelHeading.Attributes.Add("class", "panel-heading");

                HtmlGenericControl panelBody = new HtmlGenericControl();
                panelBody.Attributes.Add("class", "panel-body");


                /*
                HtmlGenericControl div = new HtmlGenericControl();
                string customClass = "generation-" + x.Generation.ToString() + " " + x.PokemonType;
                div.Attributes.Add("class", "grid-item" + customClass);
                div.InnerText = x.Name;
                */
                HtmlImage img = new HtmlImage();
                img.Src = "/Content/img/150.png";
                /*
                div.Controls.Add(img);
                PokedexGrid.Controls.Add(div);
                */

                panelHeading.InnerText = x.Name;

                panelBody.Controls.Add(img);

                panelOutside.Controls.Add(panelHeading);
                panelOutside.Controls.Add(panelBody);
                PokedexGrid.Controls.Add(panelOutside);
            });
        }
    }
}
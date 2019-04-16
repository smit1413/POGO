using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjectMeowth.Models
{
    public class PokemonModel
    {
        public PokemonModel(string Name, int SpeciesID, int Generation, string PokemonType)
        {
            this.Name = Name;
            this.SpeciesID = SpeciesID;
            this.Generation = Generation;
            this.PokemonType = PokemonType;
        }

        public string Name { get; }
        public int SpeciesID { get; }
        public int Generation { get; }
        public string PokemonType { get; }

        
    }
}
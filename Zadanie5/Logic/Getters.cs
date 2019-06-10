using System.Linq;

namespace Logic
{
    public static class Getters
    {
        public static Wydawca GetWydawca(Kolekcja_gier_rpg root, Sys system)
        {
            return root.Wydawcy.Wydawca.Where(x => x.Wydawca_id == system.Wydawca_id).FirstOrDefault();
        }

        public static Gatunek GetGatunek(Kolekcja_gier_rpg root, Sys system)
        {
            return root.Gatunki.Gatunek.Where(x => x.Gatunek_id == system.Gatunek_id).FirstOrDefault();
        }

        public static Typ GetTyp(Kolekcja_gier_rpg root, Podrecznik podrecznik)
        {
            return root.Typy.Typ.Where(x => x.Typ_id == podrecznik.Typ_id).FirstOrDefault();
        }
    
    }
}

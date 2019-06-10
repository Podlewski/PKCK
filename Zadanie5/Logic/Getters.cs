using System.Linq;

namespace Logic
{
    public static class Getters
    {
        public static Wydawca GetWydawca(Kolekcja_gier_rpg kgr, Sys system)
        {
            return kgr.Wydawcy.Wydawca.Where(x => x.Wydawca_id == system.Wydawca_id).FirstOrDefault();
        }

        public static Gatunek GetGatunek(Kolekcja_gier_rpg kgr, Sys system)
        {
            return kgr.Gatunki.Gatunek.Where(x => x.Gatunek_id == system.Gatunek_id).FirstOrDefault();
        }

        public static Typ GetTyp(Kolekcja_gier_rpg kgr, Podrecznik podrecznik)
        {
            return kgr.Typy.Typ.Where(x => x.Typ_id == podrecznik.Typ_id).FirstOrDefault();
        }
    
    }
}

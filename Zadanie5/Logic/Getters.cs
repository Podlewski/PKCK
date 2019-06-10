using System.Linq;

namespace Logic
{
    public static class Getters
    {
        public static 

        public static Artist GetArtis(Background root, Album album)
        {
            return root.Document.Library.Artists.Artist.Where(x => x.Aid == album.Aid).FirstOrDefault();
        }

        public static Medium GetMedium(Background root, Album album)
        {
            return root.Document.Library.Mediums.Medium.Where(x => x.Mid == album.Mid).FirstOrDefault();
        }

        public static Currency GetCurrency(Background root, Album album)
        {
            return root.Document.Library.Currencies.Currency.Where(x => x.Cid == album.Price.Cid).FirstOrDefault();
        }

        public static Genre GetGenre(Background root, Album album)
        {
            return root.Document.Library.Genres.Genre.Where(x => x.Gid == album.Gid).FirstOrDefault();
        }
    }
}

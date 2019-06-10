using System.Collections.Generic;

namespace Logic
{
    public static class Tools
    {
        public static void AddNewAlbum(Background root)
        {
            //todo change to Readlines
            Album album = new Album();
            album.Gid = "G006";//Console.ReadLine(); //G006
            album.Mid = "M001";// Console.ReadLine(); //M001
            album.Aid = "A022";// Console.ReadLine(); //A022

            album.Price = new Price();
            album.Price.Cid = "PLN"; //Console.ReadLine();
            album.Price.Text = 28.99;

            album.Title_album = "hors d'oeuvre";
            album.Rate = 8.88;
            album.Release_date = "September 31, 2018";

            album.Songs = new Songs();
            album.Songs.Song = new List<Song>
            {
                new Song(1, "blow off", "02:04"),
                new Song(2, "tom & jerry", "02:06"),
                new Song(3, "camel feat. vkie", "2:12"),
                new Song(4, "candy.doll", "02:10"),
                new Song(5, "good will hunting", "03:00"),
                new Song(6, "miami 1999", "01:56"),
                new Song(7, "blur", "02:29"),
                new Song(8, "pub", "02:21")
            };

            root.Document.Library.Albums.Album.Add(album);
        }

        public static void AddNewArtist(Background root)
        {
            Artist artist = new Artist();
            artist.Aid = "A022";
            artist.Text = "schafter";

            root.Document.Library.Artists.Artist.Add(artist);
        }
    }
}

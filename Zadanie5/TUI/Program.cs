using Logic;
using System;

namespace TUI
{
    class Program
    {
        public static string WriteTab(int howMany)
        {
            return new string('\t', howMany);
        }

        public static void PrintLibrary(Background root)
        {
            int level = 0;
            Console.WriteLine(WriteTab(level) + "Currencies: ");
            level++;
            foreach (var currency in root.Document.Library.Currencies.Currency)
            {
                Console.WriteLine(WriteTab(level) + currency.Cid + ": " + currency.Text);
            }

            level = 0;
            Console.WriteLine(WriteTab(level) + "genres: ");
            level++;
            foreach (var genre in root.Document.Library.Genres.Genre)
            {
                Console.WriteLine(WriteTab(level) + genre.Gid + ": " + genre.Text);
            }

            level = 0;
            Console.WriteLine(WriteTab(level) + "artists: ");
            level++;
            foreach (var artist in root.Document.Library.Artists.Artist)
            {
                Console.WriteLine(WriteTab(level) + artist.Aid + ": " + artist.Text);
            }

            level = 0;
            Console.WriteLine(WriteTab(level) + "mediums: ");
            level++;
            foreach (var medium in root.Document.Library.Mediums.Medium)
            {
                Console.WriteLine(WriteTab(level) + medium.Mid + ": " + medium.Text);
            }
        }

        public static void PrintXML(Background i)
        {
            int level = 0;
            Console.WriteLine(WriteTab(level) + "Title: " + i.Document.Title);

            level++;
            var header = i.Document.Header;
            Console.WriteLine(WriteTab(level) + "Date: " + header.Date.Day + "-" + header.Date.Month + "-" + header.Date.Year);

            level++;
            foreach(var author in header.Authors.Author)
            {
                Console.WriteLine(WriteTab(level) + "Author: " + author.Name + " " + author.Surname + ", " + author.Index);
            }

            //PrintLibrary(i);

            level = 0;
            Console.WriteLine(WriteTab(level) + "Albums:"); 
            foreach (var album in i.Document.Library.Albums.Album)
            {
                level = 1;
                Console.WriteLine(WriteTab(level) + "Artist: " + Getters.GetArtis(i, album)?.Text);
                Console.WriteLine(WriteTab(level) + "Album: " + album.Title_album);
                Console.WriteLine(WriteTab(level) + "Genre: " + Getters.GetGenre(i, album)?.Text);
                Console.WriteLine(WriteTab(level) + "Release date: " + album?.Release_date);
                Console.WriteLine(WriteTab(level) + "Medium: " + Getters.GetMedium(i, album)?.Text);
                Console.WriteLine(WriteTab(level) + "Price: " + album?.Price.Text + Getters.GetCurrency(i, album)?.Text);
                Console.WriteLine(WriteTab(level) + "Rate: " + album?.Rate);
                Console.WriteLine(WriteTab(level) + "Songs:");
                if(album.Songs != null)
                {
                    foreach (var song in album.Songs.Song)
                    {
                        level = 2;
                        Console.WriteLine(WriteTab(level) + song.Number + ". " + song.Title_song + " - " + song.Length);
                    }
                    Console.WriteLine();
                }                
            }
        }

        static void Main(string[] args)
        {
            string projectPath = @"..\..\..\";

            var root = Serialization.Deserialize(projectPath + @"ay.xml");

            bool goOn = true;
            while (goOn)
            {
                //Console.WriteLine("Type file name:");
                //var fileName = Console.ReadLine();
                //var root = Serialization.DeserializeFile(filePath + fileName);
                Console.WriteLine("1.Print all ");
                Console.WriteLine("2.Print Artist, Medium and Genre ids");
                Console.WriteLine("3.Add new artist");
                Console.WriteLine("4.Add new album");
                Console.WriteLine("5.Save to file");
                Console.WriteLine("6.Exit");
                var choice = ReadUserChoice();
                switch (choice)
                {
                    case 1:
                        PrintXML(root);
                        break;
                    case 2:
                        PrintLibrary(root);
                        break;
                    case 3:
                        Tools.AddNewArtist(root);
                        break;
                    case 4:
                        Tools.AddNewAlbum(root);
                        break;
                    case 5:
                        Serialization.Serialize(projectPath + @"NOWY.xml", root);
                        break;
                    case 6:
                        goOn = false;
                        break;
                }
            }           
        }

        public static int ReadUserChoice()
        {
            var userInput = Console.ReadKey();

            Console.WriteLine();

            if (char.IsDigit(userInput.KeyChar))
            {
                return int.Parse(userInput.KeyChar.ToString());
            }
            else
            {
                return -1;
            }
        }
    }
}

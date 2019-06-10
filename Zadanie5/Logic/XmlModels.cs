using System.Collections.Generic;
using System.Xml.Serialization;

namespace Logic
{
    [XmlRoot(ElementName = "date")]
    public class Date
    {
        [XmlAttribute(AttributeName = "day")]
        public string Day { get; set; }
        [XmlAttribute(AttributeName = "month")]
        public string Month { get; set; }
        [XmlAttribute(AttributeName = "year")]
        public string Year { get; set; }
    }

    [XmlRoot(ElementName = "author")]
    public class Author
    {
        [XmlElement(ElementName = "name")]
        public string Name { get; set; }
        [XmlElement(ElementName = "surname")]
        public string Surname { get; set; }
        [XmlElement(ElementName = "index")]
        public string Index { get; set; }
    }

    [XmlRoot(ElementName = "authors")]
    public class Authors
    {
        [XmlElement(ElementName = "author")]
        public List<Author> Author { get; set; }
    }

    [XmlRoot(ElementName = "header")]
    public class Header
    {
        [XmlElement(ElementName = "date")]
        public Date Date { get; set; }
        [XmlElement(ElementName = "authors")]
        public Authors Authors { get; set; }
    }

    [XmlRoot(ElementName = "currency")]
    public class Currency
    {
        [XmlAttribute(AttributeName = "cid")]
        public string Cid { get; set; }
        [XmlText]
        public string Text { get; set; }
    }

    [XmlRoot(ElementName = "currencies")]
    public class Currencies
    {
        [XmlElement(ElementName = "currency")]
        public List<Currency> Currency { get; set; }
    }

    [XmlRoot(ElementName = "medium")]
    public class Medium
    {
        [XmlAttribute(AttributeName = "mid")]
        public string Mid { get; set; }
        [XmlText]
        public string Text { get; set; }
    }

    [XmlRoot(ElementName = "mediums")]
    public class Mediums
    {
        [XmlElement(ElementName = "medium")]
        public List<Medium> Medium { get; set; }
    }

    [XmlRoot(ElementName = "genre")]
    public class Genre
    {
        [XmlAttribute(AttributeName = "gid")]
        public string Gid { get; set; }
        [XmlText]
        public string Text { get; set; }
    }

    [XmlRoot(ElementName = "genres")]
    public class Genres
    {
        [XmlElement(ElementName = "genre")]
        public List<Genre> Genre { get; set; }
    }

    [XmlRoot(ElementName = "artist")]
    public class Artist
    {
        [XmlAttribute(AttributeName = "aid")]
        public string Aid { get; set; }
        [XmlText]
        public string Text { get; set; }
    }

    [XmlRoot(ElementName = "artists")]
    public class Artists
    {
        [XmlElement(ElementName = "artist")]
        public List<Artist> Artist { get; set; }
    }

    [XmlRoot(ElementName = "price")]
    public class Price
    {
        [XmlAttribute(AttributeName = "cid")]
        public string Cid { get; set; }
        [XmlText]
        public double Text { get; set; }
    }

    [XmlRoot(ElementName = "song")]
    public class Song
    {
        [XmlElement(ElementName = "number")]
        public int Number { get; set; }
        [XmlElement(ElementName = "title_song")]
        public string Title_song { get; set; }
        [XmlElement(ElementName = "length")]
        public string Length { get; set; }
        public Song() { }
        public Song(int number, string title_song, string length)
        {
            Number = number;
            Title_song = title_song;
            Length = length;
        }
    }

    [XmlRoot(ElementName = "songs")]
    public class Songs
    {
        [XmlElement(ElementName = "song")]
        public List<Song> Song { get; set; }
    }

    [XmlRoot(ElementName = "album")]
    public class Album
    {
        [XmlElement(ElementName = "title_album")]
        public string Title_album { get; set; }
        [XmlElement(ElementName = "release_date")]
        public string Release_date { get; set; }
        [XmlElement(ElementName = "price")]
        public Price Price { get; set; }
        [XmlElement(ElementName = "rate")]
        public double Rate { get; set; }
        [XmlElement(ElementName = "songs")]
        public Songs Songs { get; set; }
        [XmlAttribute(AttributeName = "mid")]
        public string Mid { get; set; }
        [XmlAttribute(AttributeName = "gid")]
        public string Gid { get; set; }
        [XmlAttribute(AttributeName = "aid")]
        public string Aid { get; set; }
        [XmlAttribute(AttributeName = "cover")]
        public string Cover { get; set; }
    }

    [XmlRoot(ElementName = "albums")]
    public class Albums
    {
        [XmlElement(ElementName = "album")]
        public List<Album> Album { get; set; }
    }

    [XmlRoot(ElementName = "library")]
    public class Library
    {
        [XmlElement(ElementName = "currencies")]
        public Currencies Currencies { get; set; }
        [XmlElement(ElementName = "mediums")]
        public Mediums Mediums { get; set; }
        [XmlElement(ElementName = "genres")]
        public Genres Genres { get; set; }
        [XmlElement(ElementName = "artists")]
        public Artists Artists { get; set; }
        [XmlElement(ElementName = "albums")]
        public Albums Albums { get; set; }
    }

    [XmlRoot(ElementName = "document")]
    public class Document
    {
        [XmlElement(ElementName = "title")]
        public string Title { get; set; }
        [XmlElement(ElementName = "header")]
        public Header Header { get; set; }
        [XmlElement(ElementName = "library")]
        public Library Library { get; set; }
    }

    [XmlRoot(ElementName = "background")]
    public class Background
    {
        [XmlElement(ElementName = "document")]
        public Document Document { get; set; }
    }
}

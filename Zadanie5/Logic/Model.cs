using System;
using System.Xml.Serialization;
using System.Collections.Generic;

namespace Logic
{
    [XmlRoot(ElementName = "nagłówek")]
    public class Naglowek
    {
        [XmlElement(ElementName = "przedmiot")]
        public string Przedmiot { get; set; }
        [XmlElement(ElementName = "projekt")]
        public string Projekt { get; set; }
        [XmlElement(ElementName = "autor")]
        public List<string> Autor { get; set; }
    }

    [XmlRoot(ElementName = "wydawca")]
    public class Wydawca
    {
        [XmlAttribute(AttributeName = "wydawca_id")]
        public string Wydawca_id { get; set; }
        [XmlText]
        public string Text { get; set; }
    }

    [XmlRoot(ElementName = "wydawcy")]
    public class Wydawcy
    {
        [XmlElement(ElementName = "wydawca")]
        public List<Wydawca> Wydawca { get; set; }
    }

    [XmlRoot(ElementName = "gatunek")]
    public class Gatunek
    {
        [XmlAttribute(AttributeName = "gatunek_id")]
        public string Gatunek_id { get; set; }
        [XmlText]
        public string Text { get; set; }
    }

    [XmlRoot(ElementName = "gatunki")]
    public class Gatunki
    {
        [XmlElement(ElementName = "gatunek")]
        public List<Gatunek> Gatunek { get; set; }
    }

    [XmlRoot(ElementName = "typ")]
    public class Typ
    {
        [XmlAttribute(AttributeName = "typ_id")]
        public string Typ_id { get; set; }
        [XmlText]
        public string Text { get; set; }
    }

    [XmlRoot(ElementName = "typy")]
    public class Typy
    {
        [XmlElement(ElementName = "typ")]
        public List<Typ> Typ { get; set; }
    }

    [XmlRoot(ElementName = "kość")]
    public class Kosc
    {
        [XmlAttribute(AttributeName = "liczba_kości")]
        public string Liczba_kosci { get; set; }
        [XmlText]
        public string Text { get; set; }
    }

    [XmlRoot(ElementName = "kości")]
    public class Kosci
    {
        [XmlElement(ElementName = "kość")]
        public List<Kosc> Kosc { get; set; }
    }

    [XmlRoot(ElementName = "podręcznik")]
    public class Podrecznik
    {
        [XmlElement(ElementName = "tytuł")]
        public string Tytul { get; set; }
        [XmlElement(ElementName = "tytuł_oryginalny")]
        public string Tytul_oryginalny { get; set; }
        [XmlElement(ElementName = "data_wydania")]
        public string Data_wydania { get; set; }
        [XmlElement(ElementName = "liczba_stron")]
        public string Liczba_stron { get; set; }
        [XmlElement(ElementName = "ocena_podręcznika")]
        public string Ocena_podrecznika { get; set; }
        [XmlElement(ElementName = "cena_podręcznika")]
        public string Cena_podrecznika { get; set; }
        [XmlAttribute(AttributeName = "typ_id")]
        public string Typ_id { get; set; }
    }

    [XmlRoot(ElementName = "podręczniki")]
    public class Podreczniki
    {
        [XmlElement(ElementName = "podręcznik")]
        public List<Podrecznik> Podrecznik { get; set; }
    }

    [XmlRoot(ElementName = "sys")]
    public class Sys
    {
        [XmlElement(ElementName = "nazwa")]
        public string Nazwa { get; set; }
        [XmlElement(ElementName = "kości")]
        public Kosci Kosci { get; set; }
        [XmlElement(ElementName = "podręczniki")]
        public Podreczniki Podreczniki { get; set; }
        [XmlElement(ElementName = "popularność")]
        public string Popularnosc { get; set; }
        [XmlElement(ElementName = "format")]
        public string Format { get; set; }
        [XmlAttribute(AttributeName = "gatunek_id")]
        public string Gatunek_id { get; set; }
        [XmlAttribute(AttributeName = "wydawca_id")]
        public string Wydawca_id { get; set; }
    }

    [XmlRoot(ElementName = "nasza_kolekcja")]
    public class Nasza_kolekcja
    {
        [XmlElement(ElementName = "system")]
        public List<Sys> Sys { get; set; }
    }

    [XmlRoot(ElementName = "kolekcja_gier_rpg")]
    public class Kolekcja_gier_rpg
    {
        [XmlElement(ElementName = "nagłówek")]
        public Naglowek Naglowek { get; set; }
        [XmlElement(ElementName = "wydawcy")]
        public Wydawcy Wydawcy { get; set; }
        [XmlElement(ElementName = "gatunki")]
        public Gatunki Gatunki { get; set; }
        [XmlElement(ElementName = "typy")]
        public Typy Typy { get; set; }
        [XmlElement(ElementName = "nasza_kolekcja")]
        public Nasza_kolekcja Nasza_kolekcja { get; set; }
    }

}

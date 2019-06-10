using System;
using System.Xml.Serialization;
using System.Collections.Generic;

namespace Logic
{
    [XmlRoot(ElementName = "nagłówek")]
    public class Nagłówek
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
    public class Kość
    {
        [XmlAttribute(AttributeName = "liczba_kości")]
        public string Liczba_kości { get; set; }
        [XmlText]
        public string Text { get; set; }
    }

    [XmlRoot(ElementName = "kości")]
    public class Kości
    {
        [XmlElement(ElementName = "kość")]
        public List<Kość> Kość { get; set; }
    }

    [XmlRoot(ElementName = "podręcznik")]
    public class Podręcznik
    {
        [XmlElement(ElementName = "tytuł")]
        public string Tytuł { get; set; }
        [XmlElement(ElementName = "tytuł_oryginalny")]
        public string Tytuł_oryginalny { get; set; }
        [XmlElement(ElementName = "data_wydania")]
        public string Data_wydania { get; set; }
        [XmlElement(ElementName = "liczba_stron")]
        public string Liczba_stron { get; set; }
        [XmlElement(ElementName = "ocena_podręcznika")]
        public string Ocena_podręcznika { get; set; }
        [XmlElement(ElementName = "cena_podręcznika")]
        public string Cena_podręcznika { get; set; }
        [XmlAttribute(AttributeName = "typ_id")]
        public string Typ_id { get; set; }
    }

    [XmlRoot(ElementName = "podręczniki")]
    public class Podręczniki
    {
        [XmlElement(ElementName = "podręcznik")]
        public List<Podręcznik> Podręcznik { get; set; }
    }

    [XmlRoot(ElementName = "sys")]
    public class Sys
    {
        [XmlElement(ElementName = "nazwa")]
        public string Nazwa { get; set; }
        [XmlElement(ElementName = "kości")]
        public Kości Kości { get; set; }
        [XmlElement(ElementName = "podręczniki")]
        public Podręczniki Podręczniki { get; set; }
        [XmlElement(ElementName = "popularność")]
        public string Popularność { get; set; }
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
        public Nagłówek Nagłówek { get; set; }
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

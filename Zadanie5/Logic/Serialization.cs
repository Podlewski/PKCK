using System;
using System.IO;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Xml.Serialization;

namespace Logic
{
    public static class Serialization
    {
        public static Kolekcja_gier_rpg Deserialize(string filename)
        {
            XmlSerializer serializer = new XmlSerializer(typeof(Kolekcja_gier_rpg));

            using (Stream reader = new FileStream(filename, FileMode.Open))
                return (Kolekcja_gier_rpg)serializer.Deserialize(reader);      
        }

        public static void Serialize(string filename, Kolekcja_gier_rpg root)
        {
            XmlSerializer serializer = new XmlSerializer(typeof(Kolekcja_gier_rpg));
            TextWriter writer = new StreamWriter(filename);
            serializer.Serialize(writer, root);
            writer.Close();
        }
    }
}

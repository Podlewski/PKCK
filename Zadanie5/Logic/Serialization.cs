using System.IO;
using System.Xml.Serialization;

namespace Logic
{
    public static class Serialization
    {
        public static Background Deserialize(string filename)
        {
            XmlSerializer serializer = new XmlSerializer(typeof(Background));

            using (Stream reader = new FileStream(filename, FileMode.Open))
                return (Background)serializer.Deserialize(reader);      
        }

        public static void Serialize(string filename, Background root)
        {
            XmlSerializer serializer = new XmlSerializer(typeof(Background));
            TextWriter writer = new StreamWriter(filename);
            serializer.Serialize(writer, root);
            writer.Close();
        }
    }
}

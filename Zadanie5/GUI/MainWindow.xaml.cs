using Microsoft.Win32;
using System.Windows;

using Logic;

namespace GUI
{
    /// <summary>
    /// Logika interakcji dla klasy MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Kolekcja_gier_rpg kgr;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Write()
        {
            string text = "";

            text += "Przedmiot: " + kgr.Naglowek.Przedmiot + '\n';
            text += "Tytul: " + kgr.Naglowek.Projekt + '\n';
            text += "Autorzy: \n";

            foreach (var author in kgr.Naglowek.Autor)
                text += '\t' + author + '\n';

            text += "Wydawcy: \n";
            foreach (var ph in kgr.Wydawcy.Wydawca)
                text += '\t' + ph.Text + " (" + ph.Wydawca_id + ")\n";

            text += "Gatunki: \n";
            foreach (var genree in kgr.Gatunki.Gatunek)
                text += '\t' + genree.Text + " (" + genree.Gatunek_id + ")\n";

            text += "Typy: \n";
            foreach (var type in kgr.Typy.Typ)
                text += '\t' + type.Text + " (" + type.Typ_id + ")\n";

            text += "Systemy: \n";
            foreach (var sys in kgr.Nasza_kolekcja.Sys)
            {
                text += "\tNazwa: " + sys.Nazwa + '\n';
                text += "\tWydawca: " + sys.Wydawca_id + '\n';
                text += "\tGatunek: " + sys.Gatunek_id + '\n';
                text += "\tPopularnosc: " + sys.Popularnosc + '\n';
                text += "\tFormat: " + sys.Format + '\n';

                text += "\tPodreczniki:\n";
                foreach (var hb in sys.Podreczniki.Podrecznik)
                {
                    text += "\t\tTytuł: " + hb.Tytul + '\n';

                    if (hb.Tytul_oryginalny != null)
                        text += "\t\t\tTytul orginalny: " + hb.Tytul_oryginalny + '\n';

                    text += "\t\t\tTyp: " + hb.Typ_id + '\n';
                    text += "\t\t\tData wydania: " + hb.Data_wydania + '\n';
                    text += "\t\t\tLiczba stron: " + hb.Liczba_stron + '\n';
                    text += "\t\t\tOcena podrecznika: " + hb.Ocena_podrecznika+ '\n';
                    text += "\t\t\tCena podrecznika: " + hb.Cena_podrecznika + '\n';
                }
            }

            Box.Text = text;
        }

        private void AddHandbook(object sender, RoutedEventArgs e)
        {
            NewHandbook window = new NewHandbook();
            window.Show();
        }

        private void Load(object sender, RoutedEventArgs e)
        {
            kgr = Serialization.Deserialize(LoadPath(true));
            Write();
        }

        private void Save(object sender, RoutedEventArgs e)
        {
            LoadPath(false);
        }

        public string LoadPath(bool loadMode)
        {
            if(loadMode)
            {
                OpenFileDialog openFileDialog = new OpenFileDialog
                {
                    RestoreDirectory = true
                };

                openFileDialog.ShowDialog();

                if (openFileDialog.FileName.Length == 0)
                {
                    MessageBox.Show("No files selected");
                    return null;
                }

                return openFileDialog.FileName;
            }

            SaveFileDialog saveFileDialog = new SaveFileDialog()
            {
                RestoreDirectory = true
            };

            saveFileDialog.ShowDialog();

            if (saveFileDialog.FileName.Length == 0)
            {
                MessageBox.Show("No files selected");
                return null;
            }

            return saveFileDialog.FileName;
        }
    }
}

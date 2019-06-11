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
        public MainWindow(Kolekcja_gier_rpg k)
        {
            kgr = k;
            InitializeComponent();
            Write();
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
                text += "\tWydawca: " + Getters.GetWydawca(kgr, sys).Text + '\n';
                text += "\tGatunek: " + Getters.GetGatunek(kgr, sys).Text + '\n';
                text += "\tPopularnosc: " + sys.Popularnosc + '\n';
                text += "\tFormat: " + sys.Format + '\n';

                text += "\tPodreczniki:\n";

                if(sys.Podreczniki != null)
                {
                    foreach (var hb in sys.Podreczniki.Podrecznik)
                    {
                        text += "\t\tTytuł: " + hb.Tytul + '\n';

                        if (hb.Tytul_oryginalny != null)
                            text += "\t\t\tTytul orginalny: " + hb.Tytul_oryginalny + '\n';

                        text += "\t\t\tTyp: " + Getters.GetTyp(kgr, hb).Text + '\n';
                        text += "\t\t\tData wydania: " + hb.Data_wydania + '\n';
                        text += "\t\t\tLiczba stron: " + hb.Liczba_stron + '\n';
                        text += "\t\t\tOcena podrecznika: " + hb.Ocena_podrecznika + '\n';
                        text += "\t\t\tCena podrecznika: " + hb.Cena_podrecznika + '\n';
                    }
                }
                else
                    text += "\t\tbrak podrecznikow";
            }

            Box.Text = text;
        }

        private void AddPH(object sender, RoutedEventArgs e)
        {
            if (kgr != null)
            {
                NewPH window = new NewPH(kgr);
                this.Close();
                window.Show();
            }
            else
                MessageBox.Show("Brak wczytanego XMLa", "Błąd", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        private void AddGenre(object sender, RoutedEventArgs e)
        {
            if (kgr != null)
            {
                NewGenre window = new NewGenre(kgr);
                this.Close();
                window.Show();
            }
            else
                MessageBox.Show("Brak wczytanego XMLa", "Błąd", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        private void AddType(object sender, RoutedEventArgs e)
        {
            if (kgr != null)
            {
                NewType window = new NewType(kgr);
                this.Close();
                window.Show();
            }
            else
                MessageBox.Show("Brak wczytanego XMLa", "Błąd", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        private void AddSystem(object sender, RoutedEventArgs e)
        {
            if (kgr != null)
            {
                NewSystem window = new NewSystem(kgr);
                this.Close();
                window.Show();
            }
            else
                MessageBox.Show("Brak wczytanego XMLa", "Błąd", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        private void AddHandbook(object sender, RoutedEventArgs e)
        {
            if (kgr != null)
            {
                NewHandbook window = new NewHandbook(kgr);
                this.Close();
                window.Show();
            }
            else
                MessageBox.Show("Brak wczytanego XMLa", "Błąd", MessageBoxButton.OK, MessageBoxImage.Error);
        }

        private void Load(object sender, RoutedEventArgs e)
        {
            kgr = Serialization.Deserialize(LoadPath(true));
            Write();
        }

        private void Save(object sender, RoutedEventArgs e)
        {
            Serialization.Serialize(LoadPath(false), kgr);
        }

        public string LoadPath(bool loadMode)
        {
            if(loadMode)
            {
                OpenFileDialog openFileDialog = new OpenFileDialog
                {
                    Filter = "XML file(.xml) | *.xml",
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

using Logic;

namespace GUI
{
    /// <summary>
    /// Logika interakcji dla klasy NewSystem.xaml
    /// </summary>
    public partial class NewSystem : Window
    {
        private Kolekcja_gier_rpg kgr;

        public NewSystem(Kolekcja_gier_rpg k)
        {
            kgr = k;

            InitializeComponent();

            foreach (var ph in kgr.Wydawcy.Wydawca)
                PH.Items.Add(ph.Text);

            PH.SelectedIndex = 0;

            foreach (var gen in kgr.Gatunki.Gatunek)
                Genrees.Items.Add(gen.Text);

            Genrees.SelectedIndex = 0;
        }

        private void Save(object sender, RoutedEventArgs e)
        {
            string phId = "";
            string genId = "";

            foreach (var ph in kgr.Wydawcy.Wydawca)
            {
                if (ph.Text == PH.SelectedValue.ToString())
                    phId = ph.Wydawca_id;
            }

            foreach (var gen in kgr.Gatunki.Gatunek)
            {
                if (gen.Text == Genrees.SelectedValue.ToString())
                    genId = gen.Gatunek_id;
            }

            Sys sys = new Sys()
            {
                Nazwa = Name.Text,
                Popularnosc = Pop.Text,
                Format = Format.Text,
                Wydawca_id = phId,
                Gatunek_id = genId
            };

            kgr.Nasza_kolekcja.Sys.Add(sys);

            MainWindow window = new MainWindow(kgr);
            this.Close();
            window.Show();
        }
    }
}

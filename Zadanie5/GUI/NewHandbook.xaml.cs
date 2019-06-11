using System.Windows;

using Logic;

namespace GUI
{
    /// <summary>
    /// Logika interakcji dla klasy NewHandbook.xaml
    /// </summary>
    public partial class NewHandbook : Window
    {
        private Kolekcja_gier_rpg kgr;

        public NewHandbook(Kolekcja_gier_rpg k)
        {
            kgr = k;

            InitializeComponent();

            foreach (var sys in kgr.Nasza_kolekcja.Sys)
                Systems.Items.Add(sys.Nazwa);

            Systems.SelectedIndex = 0;

            foreach (var type in kgr.Typy.Typ)
                Types.Items.Add(type.Text);

            Types.SelectedIndex = 0;
        }

        private void Save(object sender, RoutedEventArgs e)
        {
            string typeId = "";

            foreach (var type in kgr.Typy.Typ)
            {
                if (type.Text == Types.SelectedValue.ToString())
                    typeId = type.Typ_id;
            }

            Podrecznik podrecznik = new Podrecznik()
            {
                Tytul = Title.Text,
                Tytul_oryginalny = TitleOrg.Text,
                Data_wydania = Date.Text,
                Liczba_stron = Pages.Text,
                Ocena_podrecznika = Rate.Text,
                Cena_podrecznika = Price.Text,
                Typ_id = typeId
            };

            foreach (var sys in kgr.Nasza_kolekcja.Sys)
            {
                if (sys.Nazwa == Systems.SelectedValue.ToString())
                    sys.Podreczniki.Podrecznik.Add(podrecznik);
            }

            MainWindow window = new MainWindow(kgr);
            this.Close();
            window.Show();
        }

        private void Cancel(object sender, RoutedEventArgs e)
        {
            MainWindow window = new MainWindow(kgr);
            this.Close();
            window.Show();
        }
    }
}

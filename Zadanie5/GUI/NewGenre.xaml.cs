using System;
using System.Windows;
using System.Linq;

using Logic;

namespace GUI
{
    /// <summary>
    /// Logika interakcji dla klasy NewPH.xaml
    /// </summary>
    public partial class NewGenre : Window
    {
        private Kolekcja_gier_rpg kgr;

        public NewGenre(Kolekcja_gier_rpg k)
        {
            kgr = k;

            InitializeComponent();

            ID.Text = CountID();
        }

        private string CountID()
        {
            int num;
            string id = kgr.Gatunki.Gatunek.Last().Gatunek_id.Substring(3, 2);
            Int32.TryParse(id, out num);
            num++;

            if(num < 10)
                return "gat0" + num; 

            else
                return "gat" + num;
        }

        private void Save(object sender, RoutedEventArgs e)
        {
            Gatunek gatunek = new Gatunek()
            {
                Text = Name.Text,
                Gatunek_id = ID.Text
            };

            kgr.Gatunki.Gatunek.Add(gatunek);

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

using System;
using System.Windows;
using System.Linq;

using Logic;

namespace GUI
{
    /// <summary>
    /// Logika interakcji dla klasy NewPH.xaml
    /// </summary>
    public partial class NewPH : Window
    {
        private Kolekcja_gier_rpg kgr;

        public NewPH(Kolekcja_gier_rpg k)
        {
            kgr = k;

            InitializeComponent();

            ID.Text = CountID();
        }

        private string CountID()
        {
            string id = kgr.Wydawcy.Wydawca.Last().Wydawca_id.Substring(3, 2);
            int num;

            Int32.TryParse(id, out num);
            num++;

            if(num < 10)
                return "wyd0" + num; 

            else
                return "wyd" + num;
        }

        private void Save(object sender, RoutedEventArgs e)
        {
            Wydawca wydawca = new Wydawca()
            {
                Text = Name.Text,
                Wydawca_id = ID.Text
            };

            kgr.Wydawcy.Wydawca.Add(wydawca);

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

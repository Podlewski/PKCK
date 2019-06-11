using System;
using System.Windows;
using System.Linq;

using Logic;

namespace GUI
{
    /// <summary>
    /// Logika interakcji dla klasy NewPH.xaml
    /// </summary>
    public partial class NewType : Window
    {
        private Kolekcja_gier_rpg kgr;

        public NewType(Kolekcja_gier_rpg k)
        {
            kgr = k;

            InitializeComponent();

            ID.Text = CountID();
        }

        private string CountID()
        {
            int num;
            string id = kgr.Typy.Typ.Last().Typ_id.Substring(3, 2);
            Int32.TryParse(id, out num);
            num++;

            if(num < 10)
                return "typ0" + num; 

            else
                return "typ" + num;
        }

        private void Save(object sender, RoutedEventArgs e)
        {
            Typ typ = new Typ()
            {
                Text = Name.Text,
                Typ_id = ID.Text
            };

            kgr.Typy.Typ.Add(typ);

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

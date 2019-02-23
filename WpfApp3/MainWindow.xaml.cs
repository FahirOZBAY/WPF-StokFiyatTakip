using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace WpfApp3
{
 
    public partial class MainWindow : Window
    {
        takipEntities db;

        public MainWindow()
        {

            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            //datagride ürünleri listeliyoruz
            db = new takipEntities();
            dgurun.ItemsSource = db.urun.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            dgurun.SelectedIndex = -1;

            //kayıt
            if (ad.Text == "" ||  perakende.Text == "" || toptan.Text == "")
            {

            }
            else
            {
                dgurun.SelectedIndex = -1;
                urun yeniurun = new urun();
                yeniurun.barkod = barkod.Text;
                yeniurun.ad = ad.Text;
                yeniurun.perakende = perakende.Text;
                yeniurun.toptan = toptan.Text;
                db.urun.Add(yeniurun);

                db.SaveChanges();
            }
            temizle();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {//silme işlemi

            if (ad.Text == "" || barkod.Text == "" || perakende.Text == "" || toptan.Text == "")
            {
            }
            else
            {
                int silinecek = int.Parse(id.Text);
                var silinenurun = db.urun.Where(w => w.id == silinecek).FirstOrDefault();
                db.urun.Remove(silinenurun);
                db.SaveChanges();

            }
            temizle();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {//güncelleme
            dgurun.SelectedIndex = -1;

            if (ad.Text == "" || barkod.Text == "" || perakende.Text == "" || toptan.Text == "")
            {

            }
            else
            {
                int guncellenecek = int.Parse(id.Text);
                var guncellenen = db.urun.Where(w => w.id == guncellenecek).FirstOrDefault();
                guncellenen.ad = ad.Text;
                guncellenen.perakende = perakende.Text;
                guncellenen.toptan = toptan.Text;

                db.SaveChanges();
            }
        }

        private void dgurun_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
        public void temizle(){
            dgurun.ItemsSource = db.urun.ToList();//işlemden sonra yenileme 
            id.Text = "";
            ad.Text = "";
            barkod.Text = "";
            perakende.Text = "";
            toptan.Text = "";

        }

        private new void PreviewTextInput(object sender, TextCompositionEventArgs e)
        {

            Regex regex = new Regex("^[,][0-9]+$|^[0-9]*[,]{0,1}[0-9]*$");
            e.Handled = !regex.IsMatch((sender as TextBox).Text.Insert((sender as TextBox).SelectionStart, e.Text));
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            string girilen = ara.Text;
            if (db != null)
            {
                if (ara.Text == "")
                {
                    dgurun.ItemsSource = db.urun.ToList();

                }
                else
                {
                    dgurun.ItemsSource = db.urun.Where(a => a.ad.Contains(girilen) || a.barkod.Contains(girilen)).ToList();

                }
            }

        }

        private void ara_MouseEnter(object sender, MouseEventArgs e)
        {
            ara.Text = "";
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            dgurun.SelectedIndex = -1;
            id.Text = "";
            ad.Text = "";
            barkod.Text = "";
            perakende.Text = "";
            toptan.Text = "";
        }
    }
}

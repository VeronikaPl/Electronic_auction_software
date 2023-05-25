using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Electonic_auctionWPF
{
    /// <summary>
    /// Логика взаимодействия для AddProductForm.xaml
    /// </summary>
    public partial class AddProductForm : Window
    {
        public string name { get; set; }
        public string description { get; set; }
        public int price { get; set; }
        public AddProductForm()
        {
            InitializeComponent();
        }

        private void add_product_button_Click(object sender, RoutedEventArgs e)
        {
            name = this.name_textBox.Text;
            description = this.description_textBox.Text;
            price = Convert.ToInt32(this.price_textBox.Text);
            this.Close();
        }
    }
}

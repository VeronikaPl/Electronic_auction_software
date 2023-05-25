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
    /// Логика взаимодействия для RegisterForm.xaml
    /// </summary>
    public partial class RegisterForm : Window
    {
        public string login { get; set; }
        public string password { get; set; }
        public string email { get; set; }
        public string telephone { get; set; }
        public string name { get; set; }
        public RegisterForm()
        {
            InitializeComponent();
        }

        private void reg_button_Click(object sender, RoutedEventArgs e)
        {
            email = this.email_textBox.Text;
            telephone=this.tel_textBox.Text;
            name = this.name_textBox.Text;
            login = this.login_textBox.Text;
            password = this.password_textBox.Text;
            this.Close();
        }
    }
}

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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Electonic_auctionWPF
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {   
            InitializeComponent();
            this.reg_button.Visibility = Visibility.Visible;
            this.login_button.Visibility = Visibility.Visible;
            this.profile_button.Visibility = Visibility.Collapsed;
            this.profile_name_label.Visibility = Visibility.Collapsed;
            this.grid_for_profile.Visibility = Visibility.Collapsed;
            this.search_grid.Visibility = Visibility.Visible;
            this.grid_with_products.Visibility = Visibility.Visible;
        }   

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            LoginForm login_form = new LoginForm();
            login_form.Closed += (s, args) =>
            {
                this.reg_button.Visibility= Visibility.Collapsed;
                this.login_button.Visibility = Visibility.Collapsed;
                this.profile_button.Visibility = Visibility.Visible;
                this.profile_name_label.Visibility = Visibility.Visible;
            };
            login_form.ShowDialog();
        }

        private void RegButton_Click(object sender, RoutedEventArgs e)
        {
            RegisterForm reg_form = new RegisterForm();        
            reg_form.Closed += (s, args) =>
            {
                this.reg_button.Visibility = Visibility.Collapsed;
                this.login_button.Visibility = Visibility.Collapsed;
                this.profile_button.Visibility = Visibility.Visible;
                this.profile_name_label.Visibility = Visibility.Visible;
            };
            reg_form.ShowDialog();
        }

        private void profile_button_Click(object sender, RoutedEventArgs e)
        {
            this.reg_button.Visibility = Visibility.Collapsed;
            this.login_button.Visibility = Visibility.Collapsed;
            this.profile_button.Visibility = Visibility.Visible;
            this.profile_name_label.Visibility = Visibility.Visible;
            this.grid_for_profile.Visibility=Visibility.Visible;
        }

        private void home_button_Click(object sender, RoutedEventArgs e)
        {
            this.grid_for_profile.Visibility = Visibility.Collapsed;
            this.search_grid.Visibility = Visibility.Visible;
            this.grid_with_products.Visibility = Visibility.Visible;
        }

        private void exit_acc_button_Click(object sender, RoutedEventArgs e)
        {
            this.reg_button.Visibility = Visibility.Visible;
            this.login_button.Visibility = Visibility.Visible;
            this.profile_button.Visibility = Visibility.Collapsed;
            this.profile_name_label.Visibility = Visibility.Collapsed;
            if (this.grid_for_profile.Visibility == Visibility.Visible) {
                this.grid_for_profile.Visibility = Visibility.Collapsed;
                this.search_grid.Visibility = Visibility.Visible;
                this.grid_with_products.Visibility = Visibility.Visible;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.grid_for_product.Visibility = Visibility.Visible;
        }
    }
}

using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Xml;

namespace Electonic_auctionWPF
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {      
        List<User> userList=new List<User>(); //список всіх юзерів
        User current_user=new User(); //юзер, який наразі зайшов у профіль
        public ObservableCollection<Product> ProductsList { get; set; } //список всіх продуктів
        public ObservableCollection<Product> ProductsOfUser { get; set; } //список продуктів певного юзера
        public ObservableCollection<Product> ProductsOrderedByUser { get; set; } //список продуктів певного юзера, на які він поставив ставку
        public MainWindow()
        {   
            InitializeComponent();
            userList = ReadUsersFromJson("users.json");
            DataContext = this;

            ProductsList = new ObservableCollection<Product>();
            ProductsList = ReadProductsForObserv("products.json");

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

            User newUser = new User
            {
                id = 1,
                name = reg_form.name,
                email = reg_form.email,
                password = reg_form.password,
                login = reg_form.login,
                telephone = reg_form.telephone
            };
            userList.Add(newUser);
            string usersJson = JsonConvert.SerializeObject(userList, Newtonsoft.Json.Formatting.Indented);
            File.WriteAllText("users.json", usersJson);
            current_user = newUser;

            this.profile_name_label.Content=current_user.name;
        }

        private void profile_button_Click(object sender, RoutedEventArgs e)
        {
            this.reg_button.Visibility = Visibility.Collapsed;
            this.login_button.Visibility = Visibility.Collapsed;
            this.profile_button.Visibility = Visibility.Visible;
            this.profile_name_label.Visibility = Visibility.Visible;
            this.grid_for_profile.Visibility=Visibility.Visible;
            this.grid_for_product.Visibility=Visibility.Collapsed;
            this.grid_with_products.Visibility=Visibility.Collapsed;
        }

        private void home_button_Click(object sender, RoutedEventArgs e)
        {
            this.grid_for_profile.Visibility = Visibility.Collapsed;
            this.grid_for_product.Visibility = Visibility.Collapsed;
            this.search_grid.Visibility = Visibility.Visible;
            this.grid_with_products.Visibility = Visibility.Visible;
        }

        private void exit_acc_button_Click(object sender, RoutedEventArgs e)
        {
            this.reg_button.Visibility = Visibility.Visible;
            this.login_button.Visibility = Visibility.Visible;
            this.profile_button.Visibility = Visibility.Collapsed;
            this.profile_name_label.Visibility = Visibility.Collapsed;
            this.search_grid.Visibility = Visibility.Visible;
            this.grid_with_products.Visibility = Visibility.Visible;
            if (this.grid_for_profile.Visibility == Visibility.Visible) {
                this.grid_for_profile.Visibility = Visibility.Collapsed;
            }
        }

        public List<User> ReadUsersFromJson(string filePath)
        {
            if (File.Exists(filePath))
            {
                string json = File.ReadAllText(filePath);
                return JsonConvert.DeserializeObject<List<User>>(json);
            }
            else
            {
                Console.WriteLine($"File not found: {filePath}");
                return new List<User>();
            }
        }

        public List<Product> ReadProductsFromJson(string filePath)
        {
            if (File.Exists(filePath))
            {
                string json = File.ReadAllText(filePath);
                return JsonConvert.DeserializeObject<List<Product>>(json);
            }
            else
            {
                Console.WriteLine($"File not found: {filePath}");
                return new List<Product>();
            }
        }
        public ObservableCollection<Product> ReadProductsForObserv(string filePath)
        {
            if (File.Exists(filePath))
            {
                string json = File.ReadAllText(filePath);
                return JsonConvert.DeserializeObject<ObservableCollection<Product>>(json);
            }
            else
            {
                Console.WriteLine($"File not found: {filePath}");
                return new ObservableCollection<Product>();
            }
        }

        private void product_photo_button_Click(object sender, RoutedEventArgs e)
        {
            this.grid_with_products.Visibility = Visibility.Collapsed;
            this.grid_for_product.Visibility = Visibility.Visible;
        }

        private void add_advertisement_button_Click(object sender, RoutedEventArgs e)
        {
            AddProductForm add_form = new AddProductForm();
            add_form.Closed += (s, args) =>
            {
                Product newProduct = new Product
                {
                    id = 1,
                    id_seller = current_user.id,
                    photo = "/profile_photo.png",
                    name = add_form.name,
                    description = add_form.description,
                    price = add_form.price,
                    status = "Продається"
                };
                ProductsList.Add(newProduct);
                string usersJson = JsonConvert.SerializeObject(ProductsList, Newtonsoft.Json.Formatting.Indented);
                File.WriteAllText("users.json", usersJson);
            };
            add_form.ShowDialog();
        }
    }    
}

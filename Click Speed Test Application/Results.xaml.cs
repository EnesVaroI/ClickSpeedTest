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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Click_Speed_Test_Application
{
    /// <summary>
    /// Interaction logic for Results.xaml
    /// </summary>
    public partial class Results : Window
    {
        MainWindow main;
        public Results(MainWindow main)
        {
            this.main = main;
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            main.overlayRectangle.Visibility = Visibility.Collapsed;

            Storyboard closeAnimation = (Storyboard)FindResource("CloseAnimation");
            closeAnimation.Completed += (s, args) => Close();

            BeginStoryboard(closeAnimation);
        }
    }
}

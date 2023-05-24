using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using System.ComponentModel;
using System.Windows.Media.Animation;

namespace Click_Speed_Test_Application
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    /// 
    public class ToolToggleButton : ToggleButton
    {
        static ToolToggleButton()
        {
            DefaultStyleKeyProperty.OverrideMetadata(typeof(ToolToggleButton), new FrameworkPropertyMetadata(typeof(ToolToggleButton)));
        }
    }
    public partial class MainWindow : Window
    {
        private int countdownValue;
        private DispatcherTimer timer;
        bool control = false;

        public event PropertyChangedEventHandler PropertyChanged;

        public int CountdownValue
        {
            get => countdownValue;
            set
            {
                countdownValue = value;
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs("CountdownValue"));
            }
        }

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (control == false)
            {
                bttn1s.IsEnabled = false;
                bttn5s.IsEnabled = false;
                bttn10s.IsEnabled = false;
                bttn20s.IsEnabled = false;
                bttn30s.IsEnabled = false;
                bttn60s.IsEnabled = false;

                control = true;
                text.Text = string.Empty;

                CountdownValue = Time();

                timer = new DispatcherTimer();
                timer.Interval = TimeSpan.FromSeconds(1);
                timer.Tick += Timer_Tick;
                timer.Start();
            }
            else
            {
                if (Convert.ToInt32(clicks.Text) < 9)
                    clicks.Text = "0" + (Convert.ToInt32(clicks.Text) + 1).ToString();
                else clicks.Text = (Convert.ToInt32(clicks.Text) + 1).ToString();
            }
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            if (countdownValue < 10)
                time.Text = "0" + countdownValue.ToString();
            else time.Text = countdownValue.ToString();

            CountdownValue--;

            if (CountdownValue == -1)
            {
                timer.Stop();
                timer.Tick -= Timer_Tick;

                overlayRectangle.Visibility = Visibility.Visible;

                Results results = new Results(this);

                results.clicksPerSecond.Text = (Math.Truncate(Convert.ToDouble(clicks.Text) * 100 / Time()) / 100).ToString();

                Storyboard openAnimation = (Storyboard)FindResource("OpenAnimation");
                results.BeginStoryboard(openAnimation);
                
                results.Left = this.Left + (this.Width - results.Width) / 2;
                results.Top = this.Top + (this.Height - results.Height) / 2;
                results.ShowDialog();

                control = false;
                text.Text = "Click anywhere\nto begin";
                clicks.Text = "00";

                bttn1s.IsEnabled = true;
                bttn5s.IsEnabled = true;
                bttn10s.IsEnabled = true;
                bttn20s.IsEnabled = true;
                bttn30s.IsEnabled = true;
                bttn60s.IsEnabled = true;
            }
        }

        private int Time()
        {
            switch (true)
            {
                case bool _ when bttn1s.IsChecked == true:
                    return 1;
                case bool _ when bttn5s.IsChecked == true:
                    return 5;
                case bool _ when bttn10s.IsChecked == true:
                    return 10;
                case bool _ when bttn20s.IsChecked == true:
                    return 20;
                case bool _ when bttn30s.IsChecked == true:
                    return 30;
                case bool _ when bttn60s.IsChecked == true:
                    return 60;
                default:
                    return 0;
            }
        }
    }
}

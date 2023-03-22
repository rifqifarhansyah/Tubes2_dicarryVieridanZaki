﻿using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
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
using TreasureHunterAlgo;
using System.ComponentModel.Design;
using System.Windows.Threading;

namespace TreasureHunterApp
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Maze m;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void initializeMaze(object sender, EventArgs e)
        {
            Window mainWindow = Application.Current.MainWindow;
            double width = mainWindow.ActualWidth;
            double height = mainWindow.ActualHeight;
            
        }

        private void visualizeButton_Click(object sender, RoutedEventArgs e)
        {
            mazeGrid.Children.Clear();
            mazeGrid.RowDefinitions.Clear();
            mazeGrid.ColumnDefinitions.Clear();
            for (int i = 0; i < this.m.Width; i++)
            {
                mazeGrid.RowDefinitions.Add(new RowDefinition());
            }
            for (int i = 0; i < this.m.Length; i++)
            {
                mazeGrid.ColumnDefinitions.Add(new ColumnDefinition());
            }
            TextBox cell;
            for (int i = 0; i < this.m.Width; i++)
            {
                for (int j = 0; j < this.m.Length; j++)
                {
                    cell = new TextBox();
                    SolidColorBrush brush;
                    if (this.m.Content[i][j] == "X")
                    {
                        brush = new SolidColorBrush(Colors.Black);
                    } 
                    else if (this.m.Content[i][j] == "T") 
                    {
                        brush = new SolidColorBrush(Colors.Gold);
                    } 
                    else if (this.m.Content[i][j] == "K")
                    {
                        brush = new SolidColorBrush(Colors.Red);
                    }
                    else
                    {
                        brush = new SolidColorBrush(Colors.White);
                    }
                    cell.Background = brush;
                    Grid.SetColumn(cell, j);
                    Grid.SetRow(cell, i);
                    mazeGrid.Children.Add(cell);
                }
            }
            // TextBox element = mazeGrid.Children
            //                     .Cast<TextBox>()
            //                     .FirstOrDefault(ez => Grid.GetRow(ez) == 2 && Grid.GetColumn(ez) == 2);
            // SolidColorBrush bruh = new SolidColorBrush(Colors.White);
            // element.Background = bruh;
        }

        private void TextBox_TextChanged_1(object sender, TextChangedEventArgs e)
        {

        }

        private void TextBox_TextChanged_2(object sender, TextChangedEventArgs e)
        {

        }

        public void changeLightGray(int i, int j)
        {
            TextBox element = mazeGrid.Children
                                .Cast<TextBox>()
                                .FirstOrDefault(ez => Grid.GetRow(ez) == i && Grid.GetColumn(ez) == j);
            SolidColorBrush gray = new SolidColorBrush(Colors.Gray);
            SolidColorBrush white = new SolidColorBrush(Colors.White);
            if (element.Background == white)
            {
                element.Background = gray;
            }
        }
        public void changeGreen(int i, int j)
        {
            TextBox element = mazeGrid.Children
                                .Cast<TextBox>()
                                .FirstOrDefault(ez => Grid.GetRow(ez) == i && Grid.GetColumn(ez) == j);
            SolidColorBrush darkGreen = new SolidColorBrush(Colors.DarkGreen);
            SolidColorBrush white = new SolidColorBrush(Colors.White);
            if (element.Background.GetHashCode() == white.GetHashCode())
            {
                element.Background = darkGreen;
            }
        }
        public void changeWhite(int i, int j)
        {
            TextBox element = mazeGrid.Children
                                .Cast<TextBox>()
                                .FirstOrDefault(ez => Grid.GetRow(ez) == i && Grid.GetColumn(ez) == j);
            SolidColorBrush white = new SolidColorBrush(Colors.White);
            element.Background = white;
        }
        private void fileButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Text files (*txt)|*.txt";
            openFileDialog.Multiselect = false;
            if (openFileDialog.ShowDialog() == true)
            {
                string filePath = openFileDialog.FileName;
                if (System.IO.Path.GetExtension(filePath) != ".txt")
                {
                    MessageBox.Show("Please select a .txt file", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    m = new Maze(filePath);
                }
            }
        }

        private void RadioButton_Checked(object sender, RoutedEventArgs e)
        {

        }

        private void searchButton_Click(object sender, RoutedEventArgs e)
        {
            if (bfs_radio.IsChecked == true)
            {
                BFS bFS = new BFS(this.m, this);
                Node solutionNode = bFS.doAction(tsp_check.IsChecked == true, this);
            }
        }

        private void CheckBox_Checked(object sender, RoutedEventArgs e)
        {

        }

        public void updateUI()
        {
            Dispatcher.Invoke(() =>
            {
                this.UpdateLayout();
            });
        }
    }
}
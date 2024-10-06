using Avalonia.Controls;
using System.Collections.Generic;
using LocaleSelector.Utils;
using System;

namespace LocaleSelector.Views;

public partial class MainWindow : Window
{
    private static int GetLCS(string str1, string str2)
    {
        var dp = new int[str1.Length + 1, str2.Length + 1];
        for (int i = 0; i < str1.Length; i++)
        {
            for (int j = 0; j < str2.Length; j++)
            {
                if (str1[i] == str2[j])
                {
                    dp[i + 1, j + 1] = dp[i, j] + 1;
                }
                else
                {
                    dp[i + 1, j + 1] = Math.Max(dp[i + 1, j], dp[i, j + 1]);
                }
            }
        }
        List<string> l = [];
        for (int i = 0; i <= str1.Length; i++)
        {
            List<int> ll = [];
            for (int j = 0; j <= str2.Length; j++)
            {
                ll.Add(dp[i, j]);
            }
            l.Add(string.Join(" ", ll));
        }
        return dp[str1.Length, str2.Length];
    }

    public MainWindow()
    {
        InitializeComponent();
        List<string> items = [];
        foreach (var item in Locales.LocalesMap)
        {
            items.Add($"({item.Key}) {item.Value}");
        }
        LocalesListBox.ItemsSource = items;
    }

    private void OnOK(object? sender, Avalonia.Interactivity.RoutedEventArgs e)
    {
        string selected_locale;
        if (LocalesListBox.SelectedItem != null)
        {
            string selected = LocalesListBox.SelectedItem.ToString()!;
            selected_locale = selected.Split(' ')[0].Trim('(', ')');
        }
        else
        {
            selected_locale = "en_US";
        }
        Console.WriteLine(selected_locale);
        Close();
    }

    private class LCSLocale(int lcs, string locale) : IComparable<LCSLocale>
    {
        public int LCSValue = lcs;
        public string LocaleID = locale;

        public int CompareTo(LCSLocale? other)
        {
            if (other == null) return 1;

            return LCSValue.CompareTo(other.LCSValue);
        }

        // Define the is greater than operator.
        public static bool operator >(LCSLocale operand1, LCSLocale operand2)
        {
            return operand1.CompareTo(operand2) > 0;
        }

        // Define the is less than operator.
        public static bool operator <(LCSLocale operand1, LCSLocale operand2)
        {
            return operand1.CompareTo(operand2) < 0;
        }

        // Define the is greater than or equal to operator.
        public static bool operator >=(LCSLocale operand1, LCSLocale operand2)
        {
            return operand1.CompareTo(operand2) >= 0;
        }

        // Define the is less than or equal to operator.
        public static bool operator <=(LCSLocale operand1, LCSLocale operand2)
        {
            return operand1.CompareTo(operand2) <= 0;
        }

        public override string ToString()
        {
            return $"{LocaleID} ({LCSValue})";
        }
    }

    private void SearchBoxPropertyChanged(object? sender, Avalonia.AvaloniaPropertyChangedEventArgs e)
    {
        if (e.Property.Name == "Text")
        {
            var search = (sender as TextBox)?.Text;
            if (search != null && LocalesListBox.ItemsSource != null)
            {
                List<LCSLocale> locales = [];
                foreach (var item in LocalesListBox.ItemsSource)
                {
                    locales.Add(new LCSLocale(GetLCS(search, item.ToString()!), item.ToString()!));
                }
                locales.Sort();
                locales.Reverse();
                List<string> items = [];
                foreach (var item in locales)
                {
                    items.Add(item.LocaleID);
                }
                LocalesListBox.ItemsSource = items;
                LocalesListBox.SelectedIndex = 0;
            }
        }
    }
}

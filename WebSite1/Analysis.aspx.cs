using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bookingDB"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        List<double> average = new List<double>();

        string[] title = { "counter", "housekeeper", "driver", "overall" };
        int[] points = { 1, 2, 3, 4, 5 };

        foreach (var data in title)
        {
            List<int> total = new List<int>();
            using (SqlCommand cmd = con.CreateCommand())
            {
                foreach (int point in points)
                {
                    int i = 0;

                    cmd.Parameters.AddWithValue("@p", point);
                    cmd.CommandText = @"SELECT " + data + " FROM Feedback where " + data + " = @p";
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows == false)
                        {
                            total.Add(0);
                        }
                        else
                        {
                            while (reader.Read())
                            {
                                i += 1;
                            }
                            total.Add(i);
                        }
                        
                    }
                    cmd.Parameters.Clear();
                    cmd.CommandText = "UPDATE Points SET " + data + " = " + i + " WHERE points = " + point;
                    cmd.ExecuteNonQuery();
                }
            }

            double sum = 0;
            int amount = 0;
            for (int i = 0; i < 5; i++)
            {
                sum += total[i] * (i + 1);
                amount += total[i];
            }
            average.Add(sum / amount);
        }

        string[] t = { "again", "recommend" };
        int[] yn = { 0, 1 };

        foreach (var data in t)
        {
            List<int> total = new List<int>();
            using (SqlCommand cmd = con.CreateCommand())
            {
                foreach (int point in yn)
                {
                    int i = 0;

                    cmd.Parameters.AddWithValue("@p", point);
                    cmd.CommandText = @"SELECT " + data + " FROM Feedback where " + data + " = @p";
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows == false)
                        {
                            total.Add(0);
                        }
                        else
                        {
                            while (reader.Read())
                            {
                                i += 1;
                            }
                            total.Add(i);
                        }

                    }
                    cmd.Parameters.Clear();
                    cmd.CommandText = "UPDATE YN SET " + data + " = " + i + " WHERE tf = " + point;
                    cmd.ExecuteNonQuery();
                }
            }

            double sum = 0;
            int amount = 0;
            for (int i = 0; i < 2; i++)
            {
                sum += total[i] * (i + 1);
                amount += total[i];
            }
            average.Add(sum / amount);
            Label2.Text = Convert.ToString(amount);
        }

        Label4.Text = Convert.ToString(average[0]);
        Label6.Text = Convert.ToString(average[1]);
        Label8.Text = Convert.ToString(average[2]);
        Label10.Text = Convert.ToString(average[3]);
        Label12.Text = Convert.ToString(1 - average[4]);
        Label14.Text = Convert.ToString(1 - average[5]);
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}
using System;
using System.Data;
using System.IO;
using System.Windows.Forms;
using ExcelDataReader;

namespace _MYS2_F1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Cargar_Excel();
        }


        public void Cargar_Excel()
        {
            // Ruta del fichero Excel
            string filePath = "DataFile.xlsx";
            Region region = new Region();
            using (var stream = File.Open(filePath, FileMode.Open, FileAccess.Read))
            {
                using (var reader = ExcelReaderFactory.CreateReader(stream))
                {
                    var result = reader.AsDataSet();

                    // Ejemplos de acceso a datos
                    DataTable Hoja = result.Tables[2];
                    for (int i = 2; i <= 44; i++)
                    {
                        DataRow Xfila = Hoja.Rows[i];
                        String Station = Xfila[0].ToString();
                        string Xcolumna = Xfila[6].ToString();
                        string Zcolumna = Xfila[7].ToString();
                        double X = Convert.ToDouble(Xcolumna);
                        double Z = Convert.ToDouble(Zcolumna);
                        Console.WriteLine("(Station Server: "+ Station+ ", X: " + Xcolumna + ", Z: " + Zcolumna + ")");
                        region.createServer(X, Z);
                        int num = i - 1;
                        region.updateName("Server1" , Station);
                        
                    }
               
                    region.CrearModelo();

                }
            }

        }

        private void label1_Click(object sender, EventArgs e)
        {
            //2009-15305
        }
    }
}

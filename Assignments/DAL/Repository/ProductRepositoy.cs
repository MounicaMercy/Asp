using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Configuration;
using DAL.Model;
using System.Data;

namespace DAL.Repository
{
    public class ProductRepositoy
    {
        SqlConnection DefaultConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString.ToString());
        public List<Product> GetallProducts()
        {
            List<Product> ProductList = new List<Product>();
            DefaultConnection.Open();

            string sql = "Select * From Product";

            SqlCommand myCommand = new SqlCommand(sql, DefaultConnection);
            Product p;
            using (SqlDataReader dr = myCommand.ExecuteReader())
            {
                while (dr.Read())
                {
                    p = new Product
                    {

                        PId = Convert.ToInt32(dr["ProductId"].ToString()),
                        PName = dr["ProductName"].ToString(),
                        PPrice = Convert.ToDouble(dr["ProductPrice"].ToString()),
                        PURL = dr["ProductImgURL"].ToString(),
                        PDescription = dr["Description"].ToString()
                    };
                    ProductList.Add(p);
                }
            }

            return ProductList;
        }
        public Product GetProduct(int id)
        {
            Product P = new Product();
            DefaultConnection.Open();
            string str = "select * from Product where ProductId="+id;
            SqlCommand cmd = new SqlCommand(str, DefaultConnection);
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                dr.Read();
                P.PId = Convert.ToInt32(dr["ProductId"].ToString());
                P.PName = dr["ProductName"].ToString();
                P.PPrice = Convert.ToDouble(dr["ProductPrice"].ToString());
                P.PURL = dr["ProductImgURL"].ToString();
                P.PDescription = dr["Description"].ToString();
                return P;
                DefaultConnection.Close();
            }
            DefaultConnection.Close();
        }
        public void Update(int id, String name, int price, String URL, String dec, int BrandId)
        {
            DefaultConnection.Open();
            SqlCommand cmd = new SqlCommand("proc_update", DefaultConnection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ProductId", id);
            cmd.Parameters.AddWithValue("@ProductImgUrl", URL);
            cmd.Parameters.AddWithValue("@ProductName", name);
            cmd.Parameters.AddWithValue("@ProductPrice", price);
            cmd.Parameters.AddWithValue("@Description", dec);
            cmd.Parameters.AddWithValue("@BrandId", BrandId);
            cmd.Connection = DefaultConnection;
            try
            {
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                DefaultConnection.Close();
                DefaultConnection.Dispose();

            }

        }
        public void Insert(String name, int price, String URL, String dec, int BrandId)
        {
            DefaultConnection.Open();
            SqlCommand cmd = new SqlCommand("proc_insertdata", DefaultConnection);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@ProductName", name);
            cmd.Parameters.AddWithValue("@ProductPrice", price);
            cmd.Parameters.AddWithValue("@ProductImgUrl", URL);
            cmd.Parameters.AddWithValue("@Description", dec);
            cmd.Parameters.AddWithValue("@BrandId", BrandId);
            cmd.Connection = DefaultConnection;
            cmd.ExecuteNonQuery();
            DefaultConnection.Close();
            DefaultConnection.Dispose();
        }
        public void Delete(int id)
        {
            SqlConnection DefaultConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString.ToString());
            DefaultConnection.Open();

            SqlCommand cmd = new SqlCommand("proc_delete", DefaultConnection);

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ProductId", id);

            cmd.Connection = DefaultConnection;
            cmd.ExecuteNonQuery();
            DefaultConnection.Close();
            DefaultConnection.Dispose();
        }
        public void Search(string name)
        {
            DefaultConnection.Open();
            SqlCommand cmd = new SqlCommand("proc_search", DefaultConnection);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ProductName", name);
            cmd.Connection = DefaultConnection;
            cmd.ExecuteNonQuery();
            DefaultConnection.Close();
            DefaultConnection.Dispose();
        }
    }
    public class BrandRepository
    {
        SqlConnection DefaultConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString.ToString());
        public List<Brand> GetBrand()
        {
            List<Brand> BrandList = new List<Brand>();
            DefaultConnection.Open();

            string sql = "Select * From Brand";

            SqlCommand myCommand = new SqlCommand(sql, DefaultConnection);
            Brand b;
            using (SqlDataReader dr = myCommand.ExecuteReader())
            {
                while (dr.Read())
                {
                    b = new Brand
                    {
                        BrandId = Convert.ToInt32(dr["BrandId"].ToString()),
                        BrandName = dr["BrandName"].ToString()
                    };
                    BrandList.Add(b);
                }
            }
            return BrandList;
        }
    }
}
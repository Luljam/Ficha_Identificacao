using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace id.Persistence
{
    public class Conexao
    {
        protected MySqlConnection Cnn;
        protected MySqlCommand Comm;
        protected MySqlDataReader Dr;

        protected void AbrirConexao()
        {
            try
            {
                Cnn = new MySqlConnection(ConfigurationManager.ConnectionStrings["iDConnectionString"].ToString());
                Cnn.Open();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void FecharConexao()
        {
            try
            {
                Cnn.Close();
            }
            catch(Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }

}
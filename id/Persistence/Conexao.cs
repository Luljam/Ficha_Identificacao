using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace id.Persistence
{
    public class Conexao
    {
        protected SqlConnection Cnn;
        protected SqlCommand Comm;
        protected SqlDataReader Dr;

        protected void AbrirConexao()
        {
            try
            {
                Cnn = new SqlConnection("");
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
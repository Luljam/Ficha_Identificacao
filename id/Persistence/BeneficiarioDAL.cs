using id.Funcionario;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace id.Persistence
{
    public class BeneficiarioDAL : Conexao
    {
        public void Gravar(Beneficiario beneficiario)
        {
            try
            {
                AbrirConexao();
                Comm = new MySqlCommand("INSERT INTO beneficiario (prontuario, nome, matricula) VALUE (@v1, @v2, @v3)", Cnn);
                Comm.Parameters.AddWithValue("@v1", beneficiario.Prontuario);
                Comm.Parameters.AddWithValue("@v2",beneficiario.Nome);
                Comm.Parameters.AddWithValue("@v3", beneficiario.Matricula);


                Comm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao Gravar: " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }

        }

        public Beneficiario PesquisaPorProntuario(int prontuario)
        {
            try
            {
                AbrirConexao();
                Comm = new MySqlCommand("SELECT * FROM beneficiario WHERE prontuario = @v1", Cnn);
                Comm.Parameters.AddWithValue("@v1", prontuario);

                Beneficiario beneficiario = null;
                if (Dr.Read())
                {
                    beneficiario = new Beneficiario();
                    beneficiario.Nome = Convert.ToString(Dr["Nome"]);
                    beneficiario.Prontuario = Convert.ToInt32(Dr["prontuario"]);

                }
                return beneficiario;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
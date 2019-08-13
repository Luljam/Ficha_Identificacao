using System;

namespace id.Funcionario
{
    public class Beneficiario : Pessoa

    {

        public int Prontuario { get; set; }
        public string Sexo { get; set; }
        public DateTime DataNascimento { get; set; }
        public int Raca { get; set; }
        public int Escolaridade { get; set; }
        public int EstadoCivil { get; set; }
        public int Naturalidade { get; set; }
        public int Nacionalidade { get; set; }
        public int Municipio { get; set; }
        public string Estado { get; set; }
        public string Referencia { get; set; }
        public string Pai { get; set; }
        public string Mae { get; set; }
        public string Conjuje { get; set; }
        public string NomeSocial { get; set; }

        public Beneficiario()
        {
        }

    }
}
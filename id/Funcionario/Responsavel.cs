using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace id.Funcionario
{
  
    public class Responsavel : Pessoa
    {
        public string LocalDeTrabalho { get; set; }
        public string OutrasReferencias { get; set; }
        public String EnderecoComercial { get; set; }

    }
}
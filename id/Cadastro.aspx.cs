using id.Funcionario;
using id.Persistence;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace id
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {
            Beneficiario b = new Beneficiario();
            b.Nome = txbNome.Text;
            b.Matricula = Convert.ToInt32(txbMatricula.Text);
            b.Prontuario = Convert.ToInt32(txbProntuario.Text);

            BeneficiarioDAL bDAL = new BeneficiarioDAL();
            bDAL.Gravar(b);
        }
    }
}
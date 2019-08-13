using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace id
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbMensagem.Text = "";
            }
        }

        protected void btnAcessar_Click(object sender, EventArgs e)
        {
            string opcao = ddlMenu.SelectedValue;

            switch(opcao)
            {
                case "0":
                    lbMensagem.Text = "Por favor, selecione uma opção válida";
                    break;
                case "1":
                    Response.Redirect("/Cadastro.aspx");
                    break;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjASPTCM
{
    public partial class cadastro : System.Web.UI.Page
    {
        ClasseConexao xx = new ClasseConexao();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void LimparTODOSTextBox(Control controle) {
            foreach 
                (Control ctle in controle.Controls ){
                if (ctle is TextBox) {
                    ((TextBox)ctle).Text = string.Empty;
                } else if (ctle.Controls.Count > 0)
                { LimparTODOSTextBox(ctle);
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            LimparTODOSTextBox(this);
            

        }

        protected void btnCadastro_Click(object sender, EventArgs e)
        {
            xx = new ClasseConexao();
            ds = new DataSet();
            ds = xx.executa_sql("insert into tblCliente values( '" + txtNome.Text + "', '" + txtSobrenome.Text + "', " + txtCPF.Text + ", " + txtCEP.Text + ", '" + txtCidade.Text + "', '" + txtEndereco.Text + "', getdate(), '" + txtNasc.Text + "', '" + txtEmail.Text + "', '" + txtPass.Text + "');");
            Response.Redirect("index.aspx");
        }
    }
}
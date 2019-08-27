using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjResumaoLogin
{
	public partial class index : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnCriar_Click(object sender, EventArgs e)
		{
			compartilha.setUsu(txtCadastroUsu.Text);
			compartilha.setSenha(txtCadastroSenha.Text);
			lblAvisoCadastro.Text = "Cadastro criado com sucesso";
		}

		protected void btnEntrar_Click(object sender, EventArgs e)
		{
			if (txtUsu.Text.Equals(compartilha.getUsu()) &&
			txtSenha.Text.Equals(compartilha.getSenha()))
			{
				Session["logged"] = "1";
				Response.Redirect("~/areaRestrita.aspx");
			}
			else
			{
				Session["logged"] = "0";
				lblAvisoLogin.Text = "Login ou Senha Incorretos";
			}
		}
	}
}
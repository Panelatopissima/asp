using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjASPTCM
{
    public partial class login : System.Web.UI.Page
    {

        ClasseConexao xx = new ClasseConexao();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String v1 = txtUser.Text;
            String v2 = txtPass.Text;

            xx = new ClasseConexao();
            ds = new DataSet();
            ds = xx.executa_sql("select * from tblCliente where email = '" + v1 + "' and senha = '" + v2+"'");
            if (ds != null)
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Response.Redirect("Index.aspx");
                    Session["idCliente"] = v1;
                    Session["logado"] = "1";
                }
                else
                {
                    Session["logado"] = 0;
                    System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Usúario e/ou Senha Incorretos');", true);

                }

            }
        }
    }
}
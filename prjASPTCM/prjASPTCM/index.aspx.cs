using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjASPTCM
{
    public partial class index : System.Web.UI.Page
    {
        ClasseConexao xx = new ClasseConexao();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    xx = new ClasseConexao();
                    ds = new DataSet();
                    ds = xx.executa_sql("select * from tblProduto where id_prod < 7");
                    dlProdutos.DataSource = ds.Tables[0];
                    dlProdutos.DataBind();
                }
                catch (Exception) { }
            }
        }
    }
}
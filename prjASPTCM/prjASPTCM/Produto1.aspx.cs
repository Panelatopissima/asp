using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjASPTCM
{
    public partial class Produto1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClasseConexao xx = new ClasseConexao();
            DataSet ds = new DataSet();
            if (!IsPostBack)
            {
                try
                {
                    xx = new ClasseConexao();
                    ds = new DataSet();
                    ds = xx.executa_sql("select * from tblProduto");
                    dlProdutos.DataSource = ds.Tables[0];
                    dlProdutos.DataBind();
                }
                catch (Exception) { }
                finally
                {
                    limpamenos(0);
                }
            }
        }

        protected void limpamenos(int i)
        {
            this.Controls.Add(new LiteralControl("<script>$('.item').css('display', 'none');$($('.item')[" + i + "]).css('display', 'block');</script>"));
        }

    }
}
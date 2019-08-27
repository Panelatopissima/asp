using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjResumaoLogin
{
	public partial class areaRestrita : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			try
			{
				if (!Session["logged"].Equals("1"))
				{
					btnSair_Click(sender, e);
				}
			}
			catch
			{
				btnSair_Click(sender, e);
			}
		}

		protected void btnSair_Click(object sender, EventArgs e)
		{
			Session["logged"] = "0";
			Response.Redirect("index.aspx");
		}
	}
}
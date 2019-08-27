using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrjResumaoLogin
{
	public class compartilha
	{
		static String usu;
		static String senha;
		public static void setUsu(String u)
		{
			usu = u;
		}
		public static void setSenha(String s)
		{
			senha = s;
		}
		public static String getUsu()
		{
			return usu;
		}
		public static String getSenha()
		{
			return senha;
		}
	}
}
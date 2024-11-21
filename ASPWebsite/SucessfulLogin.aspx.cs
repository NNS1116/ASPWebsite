using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BC = BCrypt.Net;

namespace ASPWebsite
{
    public partial class WebForm2 : System.Web.UI.Page
    {
    
        protected void Hash_OnClick(object sender, EventArgs e)
        {
            TextBox plainTextPassword = FormView1.FindControl("PlainTextPassword") as TextBox;
            TextBox hashedPassword = FormView1.FindControl("HashedPassword") as TextBox;

            hashedPassword.Text = BC.BCrypt.HashPassword(plainTextPassword.Text).ToString();
        }

    }

    
}
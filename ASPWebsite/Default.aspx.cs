﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPWebsite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Login_OnClick(object sender, EventArgs e)
        {
            try
            {
                DataView dv = (DataView)UserLogin.Select(DataSourceSelectArguments.Empty);
                DataTable dt = dv.Table;
                DataRow dr = dt.Rows[0];

                if (dr["PlainTextPassword"].ToString() == Password.Text)
                {
                    Session["UID"] = dr["ID"];
                    Session["USERID"] = dr["User_id"];
                    Response.Redirect("~/SucessfulLogin.aspx");
                }
                else
                {
                    Password.Focus();
                    Password.Text = "";
                    MessageLabel.Text = "Invalid Password Entered";
                    UserName.Text = string.Empty;

                }


            }
            catch (Exception)

            {
                UserName.Focus();
                Password.Text = "";
                MessageLabel.Text = "Invalid User Name Entered";




            }
        }    
    }
}
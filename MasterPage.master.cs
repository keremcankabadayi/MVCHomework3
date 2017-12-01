using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Request.UrlReferrer != null)

        {
            //string previousPageUrl = Request.UrlReferrer.AbsoluteUri;
           // string previousPageName = System.IO.Path.GetFileName(Request.UrlReferrer.AbsolutePath);
            
           // ListBox1.Items.Insert(1, previousPageName);

            string previousPageName = System.IO.Path.GetFileName(Request.UrlReferrer.AbsolutePath);
           // Stack<string> stack3 = new Stack<string>(10);            
            for (int i = 1; i < 6; i++) {
                ListBox1.Items.Add(previousPageName);          
            }
            

          //  string id = Request.QueryString["id"];

           // Label1.Text = previousPageName;
          //  Label2.Text = id;
            
        
        }
    }

}

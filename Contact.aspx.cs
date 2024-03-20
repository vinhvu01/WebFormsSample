using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebFormsSample
{
  public partial class Contact : Page
  {
    protected string FullName { get; set; }
    protected string Email { get; set; }
    protected string Message { get; set; }
    protected string Phone { get; set; }
    
    protected void Page_Load(object sender, EventArgs e)
    {
      if (IsPostBack)
      {
        FullName = Request.Form["Fullname"];
        Email = Request.Form["Email"];
        Message = Request.Form["Message"];
        Phone = Request.Form["Phone"];
        if (!string.IsNullOrWhiteSpace(FullName) && !string.IsNullOrWhiteSpace(Email) && !string.IsNullOrWhiteSpace(Message) && !string.IsNullOrWhiteSpace(Phone))
        {
          this.pnlForm.Visible = false;
          this.pnlSubmitted.Visible = true;
        }
      }
    }
  }
}

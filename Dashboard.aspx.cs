using System;
using System.Collections.Generic;
using System.Web.UI;

namespace WebFormsSample
{
  public class DashboardCardData
    {
    public string Type { get; set; }
    public string Percentage { get; set; }
    public string Icon { get; set; }
  }

  public partial class _DashboardCardData : Page
  {
    public IEnumerable<DashboardCardData> DashboardCard { get; } = new List<DashboardCardData>
    {
      new DashboardCardData
      {
        Type = "I-9 Form",
        Percentage = "100%",
        Icon = "Icon/fa-form-i9.svg"
      },
      new DashboardCardData
      {
        Type = "WOTC",
        Percentage = "0%",
        Icon = "Icon/fa-wotc.svg", 
      }
    };

    protected void Page_Load(object sender, EventArgs e)
    {

    }
  }
}

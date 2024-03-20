using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Web.UI;

namespace WebFormsSample
{
  public class CardData
  {
    public string Status { get; set; }
    public int Value { get; set; }
    public string Trend { get; set; }
    public string Icon { get; set; }
  }

  public class ChartDataPoint
  {
    [JsonProperty("key")]
    public string Key { get; set; }
    [JsonProperty("value")]
    public int Value { get; set; }

    [JsonProperty("color")]
    public string Color { get; set; }
  }

  public partial class _Default : Page
  {
    public IEnumerable<CardData> CardData { get; } = new List<CardData>
    {
      new CardData
      {
        Status = "Compliant",
        Value = 14,
        Trend = "+4",
        Icon = "person-success"
      },
      new CardData
      {
        Status = "Non-Compliant",
        Value = 23,
        Trend = "-10",
        Icon = "person-error", 
      },
      new CardData
      {
        Status = "Needs to Order",
        Value = 38,
        Trend = " ",
        Icon = "person-add"
      },
      new CardData
      {
          Status = "Vinh test",
          Value = 39,
          Trend = " ",
          Icon = "person-add"
      }
    };

    public IEnumerable<ChartDataPoint> DonutChartData { get; } = new List<ChartDataPoint>
    {
      new ChartDataPoint
      {
        Key = "In Progress",
        Value = 80
      },
      new ChartDataPoint
      {
        Key = "Pending",
        Value = 80
      },
      new ChartDataPoint
      {
        Key = "Needs to Order",
        Value = 160
      },
    };
     
    public string DonutChartJson
    {
      get
      {
        return JsonConvert.SerializeObject(this.DonutChartData, Formatting.None);
      }
    }

    public IEnumerable<ChartDataPoint> BarChartData { get; } = new List<ChartDataPoint>
    {
      new ChartDataPoint
      {
        Key = "Needs Review",
        Value = 12
      },
      new ChartDataPoint
      {
        Key = "Non-Compliant",
        Value = 5
      },
      new ChartDataPoint
      {
        Key = "Compliant",
        Value = 28
      },
      new ChartDataPoint
      {
        Key = "Needs to Order",
        Value = 17
      },
      new ChartDataPoint
      {
        Key = "In Progress",
        Value = 26
      },
      new ChartDataPoint
      {
        Key = "Pending",
        Value = 3
      },
    };

    public string BarChartJson
    {
      get
      {
        return JsonConvert.SerializeObject(this.BarChartData, Formatting.None);
      }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
  }
}

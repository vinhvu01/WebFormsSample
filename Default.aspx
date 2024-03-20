<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
Inherits="WebFormsSample._Default" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <fadv-box pv='{ "xs": "large", "sm": "xxx-large" }'>
    <h1 class="fadv-heading-medium fadv-pl-medium">Welcome to the Screening Website for Joe's Home Improvement</h1>
    <fadv-grid>
      <fadv-grid-row>
        <% foreach (var card in CardData) { %>
        <fadv-grid-col col='{ "xs": 12, "sm": 6, "md": 6, "lg": 6, "xl": 3 }' class="fadv-p-x-small">
          <fadv-card>
            <fadv-box pv="x-large" ph='{ "xs": "medium", "sm": "small", "md": "medium", "lg": "medium", "xl": "medium", "xxl": "medium" }'>
              <fadv-grid>
                <fadv-grid-row>
                  <fadv-grid-col col="5" alignment="center">
                    <fadv-box mt="x-small">
                      <fadv-icon set="first-advantage" name="<%= card.Icon %>"></fadv-icon>
                    </fadv-box>
                  </fadv-grid-col>
                  <fadv-grid-col col="7">
                    <div class="fadv-d-flex fadv-align-items-baseline">
                      <fadv-box mr="x-small">
                        <fadv-typography type="heading-x-large" weight="700"><%= card.Value %></fadv-typography>
                      </fadv-box>
                      <fadv-box mr="x-small">
                        <% if (card.Trend.Contains("+")) { %>
                        <fadv-icon set="fontawesome" library="solid" name="arrow-trend-up" label="Trend up icon" size="small"></fadv-icon>
                        <% } %> <% if (card.Trend.Contains("-")) { %>
                        <fadv-icon set="fontawesome" library="solid" name="arrow-trend-down" label="Trend down icon" size="small"></fadv-icon>
                        <% } %>
                      </fadv-box>
                      <fadv-typography type="paragraph-medium"><%= card.Trend %></fadv-typography>
                    </div>
                    <div class="fadv-white-space-nowrap fadv-label-large"><%= card.Status %></div>
                  </fadv-grid-col>
                </fadv-grid-row>
              </fadv-grid>
            </fadv-box>
          </fadv-card>
        </fadv-grid-col>
        <% } %>
        <fadv-grid-col col='{ "xs": 12, "sm": 6, "md": 6, "lg": 6, "xl": 3 }' class="fadv-p-x-small">
          <fadv-card>
            <fadv-box pv="x-large" ph='{ "xs": "medium", "sm": "small", "md": "medium", "lg": "medium", "xl": "medium", "xxl": "medium" }'>
              <fadv-grid>
                <fadv-grid-row>
                  <fadv-grid-col col="6">
                    <div class="fadv-align-center">
                      <fadv-typography class="fadv-white-space-nowrap" type="heading-x-large" weight="700">3735</fadv-typography>
                      <div class="fadv-white-space-nowrap">All Results</div>
                    </div>
                  </fadv-grid-col>
                  <fadv-grid-col col="6">
                    <div class="fadv-align-center">
                      <fadv-typography type="heading-x-large" weight="700">7</fadv-typography>
                      <div class="fadv-white-space-nowrap">In Progress</div>
                    </div>
                  </fadv-grid-col>
                </fadv-grid-row>
              </fadv-grid>
            </fadv-box>
          </fadv-card>
        </fadv-grid-col>
      </fadv-grid-row>
      <fadv-grid-row>
        <fadv-grid-col col='{ "xs": 12, "sm": 12, "md": 12, "lg": 12, "xl": 6 }' class="fadv-p-x-small">
          <fadv-card>
            <fadv-box p='{ "xs": "medium", "sm": "small", "md": "medium", "lg": "large", "xl": "x-large", "xxl": "xx-large" }'>
              <h2 class="fadv-heading-small fadv-pl-small">Order by Status</h2>
              <fa-chart-donut center-text-label="Orders"></fa-chart-donut>
            </fadv-box>
          </fadv-card>
        </fadv-grid-col>
        <fadv-grid-col col='{ "xs": 12, "sm": 12, "md": 12, "lg": 12, "xl": 6 }' class="fadv-p-x-small">
          <fadv-card>
            <fadv-box p='{ "xs": "medium", "sm": "small", "md": "medium", "lg": "large", "xl": "x-large", "xxl": "xx-large" }'>
              <h2 class="fadv-heading-small fadv-pl-small">Compliance Status</h2>
              <fa-chart-bar-horizontal></fa-chart-bar-horizontal>
              <script>
                const donutChart = document.querySelector('fa-chart-donut');
                donutChart.value = <%= DonutChartJson %>;
                const barChart = document.querySelector('fa-chart-bar-horizontal');                
                barChart.value = <%= BarChartJson %>;
              </script>
            </fadv-box>
          </fadv-card>
        </fadv-grid-col>
      </fadv-grid-row>
    </fadv-grid>
  </fadv-box>
</asp:Content>

<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs"
Inherits="WebFormsSample._DashboardCardData" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <fadv-box pv='{ "xs": "large", "sm": "xxx-large" }'>
    <h1 class="fadv-heading-medium fadv-pl-medium">Click on a category below to complete the step.</h1>
    <fadv-grid>
      <fadv-grid-row>
        <% foreach (var card in DashboardCard) { %>
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
                        <fadv-typography type="heading-x-large" weight="700"><%= card.Percentage %></fadv-typography>
                      </fadv-box>
                    </div>
                    <div class="fadv-white-space-nowrap fadv-label-large"><%= card.Type %></div>
                  </fadv-grid-col>
                </fadv-grid-row>
              </fadv-grid>
            </fadv-box>
          </fadv-card>
        </fadv-grid-col>
        <% } %>
      </fadv-grid-row>
    </fadv-grid>
  </fadv-box>
</asp:Content>

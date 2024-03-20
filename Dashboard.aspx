<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs"
    Inherits="WebFormsSample._DashboardCardData" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <fadv-box pv='{ "xs": "large", "sm": "xxx-large" }'>
        <h1 class="fadv-heading-small fadv-pl-small">Click on a category below to complete the step.</h1>
        <fadv-grid>
            <fadv-grid-row>
                <% foreach (var card in DashboardCard)
                    { %>
                <fadv-grid-col col='{ "xs": 12, "sm": 6, "md": 6, "lg": 6, "xl": 4 }' class="fadv-p-x-small">
                    <fadv-card>
                        <fadv-box pv="x-large" ph='{ "xs": "medium", "sm": "small", "md": "medium", "lg": "medium", "xl": "medium", "xxl": "medium" }'>
                            <fadv-grid>
                                <fadv-grid-row>
                                    <fadv-grid-col col="5" alignment="center">
                                        <div class="fadv-d-flex fadv-align-items-baseline">
                                            <fadv-box mr="x-large">
                                                <div class="fadv-white-space-nowrap fadv-label-small fadv-heading-small"><%= card.Type %></div>
                                            </fadv-box>
                                        </div>
                                    </fadv-grid-col>
                                    <fadv-grid-col col="7">
                                        <fadv-box mt="x-large">
                                            <img style="float:right; margin-top: -40px;" src="<%= card.Icon %>"/>
                                        </fadv-box>
                                    </fadv-grid-col>
                                </fadv-grid-row>
                                <fadv-grid-row>
                                    <fadv-grid-col col="5" alignment="center">
                                        <div class="fadv-d-flex fadv-align-items-baseline">
                                            <fadv-box mr="x-large">
                                                <fadv-typography type="heading-large"><%= card.Percentage %></fadv-typography>
                                            </fadv-box>
                                        </div>
                                    </fadv-grid-col>
                                    <fadv-grid-col col="7">
                                        <fadv-box mt="x-large">
                                        </fadv-box>
                                    </fadv-grid-col>
                                    <hr style="border: 3px solid rosybrown; border-radius: 5px;"/>
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

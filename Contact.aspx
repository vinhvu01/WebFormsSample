<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebFormsSample.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <fadv-box pv='{ "xs": "large", "sm": "xxx-large" }'>
    <h1 class="fadv-heading-medium fadv-pl-medium">Welcome to the Screening Website for Joe's Home Improvement</h1>
    <fadv-grid>
      <fadv-grid-row>
        <fadv-grid-col col='{ "xs": 12, "sm": 12, "md": 12, "lg": 12, "xl": 6 }' class="fadv-p-x-small">
          <fadv-card>
            <fadv-box p='{ "xs": "medium", "sm": "small", "md": "medium", "lg": "large", "xl": "x-large", "xxl": "xx-large" }'>
              <h2 id="title"><%: Title %>.</h2>
              <h3>Your contact page.</h3>
              <address>
                One Microsoft Way<br />
                Redmond, WA 98052-6399<br />
                <abbr title="Phone">P:</abbr>
                425.555.0100
              </address>

              <address>
                <strong>Support:</strong><a href="mailto:Support@example.com">Support@example.com</a><br />
                <strong>Marketing:</strong><a href="mailto:Marketing@example.com">Marketing@example.com</a>
              </address>
            </fadv-box>
          </fadv-card>
        </fadv-grid-col>
        <fadv-grid-col col='{ "xs": 12, "sm": 12, "md": 12, "lg": 12, "xl": 6 }' class="fadv-p-x-small">
          <fadv-card>
            <fadv-box p='{ "xs": "medium", "sm": "small", "md": "medium", "lg": "large", "xl": "x-large", "xxl": "xx-large" }'>
              <asp:Panel ID="pnlForm" runat="server">                
                  <fadv-input name="FullName" label="Full Name"></fadv-input>
                  <fadv-input name="Email" label="Email"></fadv-input>
                  <fadv-input name="Phone" label="Phone Number"></fadv-input>
                  <fadv-textarea name="Message" label="Message"></fadv-textarea>
                  <fadv-button block type="submit">Submit</fadv-button>
              </asp:Panel>
              <asp:Panel ID="pnlSubmitted" runat="server" Visible="False">
                <fadv-typography type="heading-medium">Hi <%=FullName %>!. Thank you for your submission!</fadv-typography>
                <fadv-typography>We will get back to you as soon as possible.</fadv-typography>
              </asp:Panel>
            </fadv-box>
          </fadv-card>
        </fadv-grid-col>
      </fadv-grid-row>
    </fadv-grid>
  </fadv-box>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="WebForm1.aspx.cs" Inherits="WebFormsSample.WebForm1" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <fadv-application mode="light">
   <fadv-header elevated>
     <fadv-grid>
       <fadv-grid-row>
         <fadv-grid-col col="6">
           <fadv-box pt="small">
             <img class="logo" src="/Content/img/fa-logo.svg" alt="Logo" />
           </fadv-box>
         </fadv-grid-col>
         <fadv-grid-col col="6" alignment="right">
           <fadv-box pv="medium">
             <fadv-button text class="fadv-mr-x-large">
               <fadv-icon slot="prefix" src="/Content/icons/cart-shopping.svg"></fadv-icon>
               <div class="fadv-label-medium">Cart (0)</div>
             </fadv-button>
             <fadv-dropdown hoist placement="bottom-end" class="fadv-mr-small">
               <fadv-button slot="trigger" text>
                 <fadv-icon set="fontawesome" slot="prefix" library="solid" name="circle-question"></fadv-icon>
                 <div class="fadv-label-medium">Help</div>
               </fadv-button>
               <fadv-box p="large" class="fadv-align-left">
                 <fadv-typography type="label-medium">FAQ</fadv-typography>
                 <fadv-box mv="medium">
                   <fadv-typography type="paragraph-medium">Call Technical Support: 1-866-237-2135</fadv-typography>
                 </fadv-box>
                 <fadv-typography type="label-medium">Email Support:</fadv-typography>
                 <fadv-typography type="paragraph-medium">ContractorAdvantageCustomerCare@fadv.com</fadv-typography>
               </fadv-box>
             </fadv-dropdown>
             <fadv-dropdown hoist placement="bottom-end">
               <fadv-button slot="trigger" text caret>
                 <fadv-avatar size="x-small" name="Richard Johnson"></fadv-avatar>
               </fadv-button>
               <fadv-menu>
                 <fadv-menu-item value="logout">Logout</fadv-menu-item>
                 <fadv-menu-item value="contact">Contact</fadv-menu-item>
                 <fadv-menu-item value="emailPref">Email Preferences</fadv-menu-item>
                 <fadv-menu-item value="profile">Profile</fadv-menu-item>
               </fadv-menu>
             </fadv-dropdown>
           </fadv-box>
         </fadv-grid-col>
       </fadv-grid-row>
     </fadv-grid>
     <fadv-navigation-bar>
       <fadv-navigation-item value="default" <%: Page.Title.Contains("Home") ? "checked" : "" %>>Home</fadv-navigation-item>
       <fadv-navigation-item value="contact" <%: Page.Title.Contains("Contact") ? "checked" : "" %>>Contact</fadv-navigation-item>
     </fadv-navigation-bar>

     <script>
         const navigation = document.querySelector('fadv-navigation-bar');
         navigation.addEventListener('fadv-selected', (event) => {
             window.location.href = '/' + event.detail;
         });
     </script>
   </fadv-header>   
 </fadv-application>
</asp:Content>

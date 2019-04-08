<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="ViewMenu.aspx.cs" Inherits="Project_Stuff.ViewMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
              <!-- HEADER DESKTOP-->
             <!-- MAIN CONTENT-->
             <div class="main-content">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                            <div class="row">
                                 <div class="col-md-12">
                                        <div class="card">
                                                <div class="card-header">       
                                                     <h2 class="title-1">View Menu:</h2> 
                                                </div>
                                                 <div class="table-responsive table--no-card m-b-30">

                                            <asp:Repeater ID="rptCategory" runat="server">
                                               <HeaderTemplate>
                                                    <table class="table table-borderless table-striped table-earning">
                                                        <tr>
                                                        <th class="text-center">Item Name</th>
                                                        <th class="text-center">Item Category</th>
                                                        <th class="text-center">Item Image</th>
                                                        <th class="text-center">Item Price</th>
                                                        <th class="text-center">Item Description</th>
                                                        </tr>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <tr>
                                                        <td class="text-center" style="width:300px"><asp:Label ID="itemName" runat="server" Text='<%# Eval("itemName") %>'/></td>
                                                        <td class="text=center" style="width:300px"><asp:Label ID="categoryNameLabel" runat="server" Text='<%# Eval("itemCategory") %>'/></td>
                                                        <td class="text-center" style="width:300px"><asp:Image ID="itemImage" runat="server" ImageUrl='<%#Eval("itemImage") %>'/></td>
                                                        <td class="text-center" style="width:300px"><asp:Label ID="itemPrice" runat="server" Text='<%#Eval("itemPrice") %>'/></td>
                                                        <td class="text-center" style="width:300px"><asp:Label ID="itemDescription" runat="server" Text='<%#Eval("itemDescription") %>'/></td>
                                                    </tr>
                                                    
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </table>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                        </div>                                      
                                      </div>
                                   </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>  
              <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
</asp:Content>

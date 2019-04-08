<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="HomeDeliveryOrders.aspx.cs" Inherits="Project_Stuff.HomeDeliveryOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                                <div class="card-header" ">       
                                                     <h2 class="title-1">Home Delivery Orders:</h2> 
                                                </div>
                                            <div class="table-responsive table--no-card m-b-30">
                                            <asp:Repeater ID="rptCategory" runat="server">
                                               <HeaderTemplate>
                                                    <table class="table table-borderless table-striped table-earning">
                                                        <tr style="background-color:black; color:white;width:100px; font-size:13px;">
                                                        <th class="text-center">Customer Name</th>
                                                        <th class="text-center">Arrival Time</th>
                                                        <th class="text-center">Departure Time</th>
                                                        <th class="text-center">Customer Address</th>
                                                        <th class="text-center">Item Name</th>
                                                        <th class="text-center">Discount</th>
                                                        <th class="text-center">Cancel</th>
                                                        </tr>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <tr>
                                                        <td class="text-center" style="width:100px; font-size:13px;"><asp:Label ID="customerName" runat="server" Text='<%# Eval("customerName") %>'/></td>
                                                        <td class="text=center" style="width:100px; font-size:13px;"><asp:Label ID="arrivalTime" runat="server" Text='<%# Eval("arrivalTime") %>'/></td>
                                                        <td class="text-center" style="width:100px; font-size:13px;"><asp:Label ID="checkoutTime" runat="server" Text='<%#Eval("departureTime") %>'/></td>
                                                        <td class="text-center" style="width:100px; font-size:13px;"><asp:Label ID="customerAddress" runat="server" Text='<%#Eval("customerAddress") %>'/></td>
                                                        <td class="text-center" style="width:100px; font-size:13px;"><asp:Label ID="Date" runat="server" Text='<%#Eval("itemName") %>'/></td>
                                                        <td class="text-center" style="width:100px; font-size:13px;"><asp:Label ID="NoOffPersons" runat="server" Text='<%#Eval("discountDescription") %>'/></td>
                                                        <td class="text-center" style="width:100px"><asp:Button ID="ButtonDelete" runat="server" class="btn btn-danger btn-md" Text="Delete" OnClientClick="return confirm('Do you want to delete this order?');" OnClick="ButtonDelete_Click"/></td>
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
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="InventorySystem.Adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                       <div class="row">
                           <div class="col">
                               <center>
                                  
                                   <img src="image/loginlogo2.png" class="img-fluid"/>
                               </center>
                           </div>
                       </div>
                        <div class="row">
                           <div class="col">
                               <center>
                            <h4 class="text-success ">Admin Login</h4>
                               </center>
                           </div>
                       </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox ID="txtadminid" runat="server" CssClass="form-control" placeholder="Admin ID"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtadminpassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btn_admin_login" runat="server" CssClass="btn btn-success btn-block btn-lg" Text="Login" OnClick="btn_admin_login_Click" />
                                </div>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

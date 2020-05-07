<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="Userlogin.aspx.cs" Inherits="InventorySystem.Userlogin" %>
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
                            <img src="image/ulogin.png" class="img-fluid"/>
                               </center>
                           </div>
                       </div>
                        <div class="row">
                           <div class="col">
                               <center>
                            <h4 class="text-success ">Member Login</h4>
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
                                    <asp:TextBox ID="txtmemberid" runat="server" CssClass="form-control" placeholder="Member ID" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnlogin" runat="server" CssClass="btn btn-success btn-block btn-lg" Text="Login" OnClick="btnlogin_Click" />
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnsignup" runat="server" CssClass="btn btn-primary btn-block btn-lg" Text="Sign Up" OnClick="btnsignup_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

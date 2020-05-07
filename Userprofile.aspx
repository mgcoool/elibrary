<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Userprofile.aspx.cs" Inherits="InventorySystem.Userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="image/username.png" class="img-fluid" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 class="text-success">Your Profile</h3>
                                   <span>Account Status:</span><asp:Label ID="status" runat="server" Text="Success" CssClass="badge badge-pill badge-info"></asp:Label>
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
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtfullname" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtdob" runat="server" CssClass="form-control" placeholder="dd-mm-yyyy" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-6">
                                <label>Contact</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--third row-- state city pin code-->
                             <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="dropdownliststate" runat="server" CssClass="form-control" placeholder="selct state">
                                          <asp:ListItem Text="--Select State--" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Utter Pradesh" Value="UP"></asp:ListItem>
                                         <asp:ListItem Text="Uttarakhand" Value="Uk"></asp:ListItem>
                                         <asp:ListItem Text="Madhya Pradesh" Value="MP"></asp:ListItem>
                                        <asp:ListItem Text="Maharashtra" Value="MH"></asp:ListItem>
                                         <asp:ListItem Text="Delhi" Value="Delhi"></asp:ListItem>
                                         <asp:ListItem Text="Dadar Nagar & Haveli" Value="Dh"></asp:ListItem>
                                        <asp:ListItem Text="Daman Div" Value="DD"></asp:ListItem>
                                         <asp:ListItem Text="Bihar" Value="Bihar"></asp:ListItem>
                                         <asp:ListItem Text="Asam" Value="Asam"></asp:ListItem>
                                         <asp:ListItem Text="Panjab" Value="Panjab"></asp:ListItem>
                                         <asp:ListItem Text="Hariyana" Value="Hariyana"></asp:ListItem>
                                         <asp:ListItem Text="Rajsthan" Value="Rajsthan"></asp:ListItem>
                                        <asp:ListItem Text="Goa" Value="Goa"></asp:ListItem>
                                         <asp:ListItem Text="Nagaland" Value="Nagaland"></asp:ListItem>
                                         <asp:ListItem Text="Odisha" Value="Odisha"></asp:ListItem>
                                        <asp:ListItem Text="Tamilnadu" Value="Tamilnadu"></asp:ListItem>
                                         <asp:ListItem Text="Bangalor" Value="Bangalor"></asp:ListItem>
                                         <asp:ListItem Text="Andhra Pradesh" Value="Andra Pradesh"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" placeholder="City" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                                 <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control" placeholder="Pin Code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--third row full address-->
                        <div class="row">
                            <div class="col-12">
                                <label>Address</label>
                                <div class="form-group">
                                   <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>                                </div>
                            </div>
                        </div>
                        <!--login creditionals-->
                        <div class="row">
                            <div class="col">
                                <center>
                                   <span class="badge badge-pill badge-info">Member Creditionals</span>
                                </center>
                            </div>
                        </div>
                        <!--member id creditionals-->
                         <div class="row">
                            <div class="col-md-4">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtmuserid" runat="server" CssClass="form-control" placeholder="Member ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtuserpassword" runat="server"  CssClass="form-control" placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                              <div class="col-md-4">
                                <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtupdatepassword" runat="server" CssClass="form-control" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--Submit button-->
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <div class="form-group">
                                    <asp:Button ID="btnusersignup" runat="server" CssClass="form-control btn btn-success btn-block btn-lg" Text="Update " /> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
           <!--bookissue 2nd row-->
               <div class="col-md-7">
                   <div class="card">
                       <div class="card-body">
                           <div class="row">
                               <div class="col">
                                   <center>
                               <img src="image/it1.jpg" class="img-fluid" />
                           </center>
                               </div>
                           </div>
                             <div class="row">
                               <div class="col">
                                   <center>
                               <h3 class="text-success">Book Issue</h3>
                           </center>
                               </div>
                           </div>
                           <div class="row">
                               <div class="col">
                                   <center>
                               <asp:Label ID="bookstatus" runat="server" CssClass="badge badge-pill badge-primary" Text="Your Status"></asp:Label>
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
                                   <center>
                               <asp:GridView ID="bookdata" runat="server" CssClass="table table-striped table-bordered"></asp:GridView>
                           </center>
                               </div>
                           </div>
                            
                       </div>
                   </div>
               </div>
        </div>
    </div>
</asp:Content>

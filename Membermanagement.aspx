<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Membermanagement.aspx.cs" Inherits="InventorySystem.Membermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
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
                                    <h3 class="text-success">Member Details</h3>
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
                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox ID="txtmemberid" runat="server" CssClass="form-control" placeholder="Member ID"></asp:TextBox>
                                        <asp:LinkButton ID="linkbtngo" runat="server" CssClass="btn btn-primary"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                             <div class="col-md-3">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtfullname" runat="server" CssClass="form-control"  placeholder="Member Name"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox ID="txtaccount_status" runat="server" CssClass="form-control mr-1"  placeholder="Account Status" ReadOnly="true"></asp:TextBox>
                                      <asp:LinkButton ID="linkbtnactive" runat="server" CssClass="btn btn-success mr-1"><i class="fas fa-check-circle mr-1"></i></asp:LinkButton>
                                      <asp:LinkButton ID="linkbtnpending" runat="server" CssClass=" btn btn-warning mr-1"><i class="fas fa-pause-circle mr-1"></i></asp:LinkButton>
                                        <asp:LinkButton ID="linkbtndeactive" runat="server" CssClass="btn btn-danger mr-1"><i class="fas fa-times-circle mr-1"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                           
                        </div>
                         <div class="row">
                              <div class="col-md-4">
                                <label>DOB</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtdob" runat="server" CssClass="form-control" placeholder="Email ID" TextMode="Date" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Contact</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control" placeholder="Contact Number" TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email ID" TextMode="Email" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--third row-- state city pin code-->
                             <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="dropdownliststate" runat="server" CssClass="form-control" placeholder="selct state" ReadOnly="true">
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
                                    <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" placeholder="City" TextMode="Email" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                                 <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control" placeholder="Pin Code" TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--third row full address-->
                        <div class="row">
                            <div class="col-12">
                                <label>Address</label>
                                <div class="form-group">
                                   <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" placeholder="Full Address" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>                                </div>
                            </div>
                        </div>
                        <!--Submit button-->
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <div class="form-group">
                                    <asp:Button ID="btnusersignup" runat="server" CssClass="form-control btn btn-danger btn-block btn-lg" Text="Delete User Permanently" /> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
           <!--bookissue 2nd row-->
               <div class="col-md-6">
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
                               <h3 class="text-success">Member List</h3>
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

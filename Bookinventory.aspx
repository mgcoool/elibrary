<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Bookinventory.aspx.cs" Inherits="InventorySystem.Bookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                    <h3 class="text-success">Books Details</h3>
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
                                
                               <asp:FileUpload ID="fileupload1" runat="server" CssClass="form-control" />
                               
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox ID="txtbookid" runat="server" CssClass="form-control" placeholder="Book ID"></asp:TextBox>
                                        <asp:LinkButton ID="linkbtngo" runat="server" CssClass="btn btn-primary"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                             <div class="col-md-9">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtbookname" runat="server" CssClass="form-control"  placeholder="Book Name"></asp:TextBox>
                                </div>
                            </div>
                            
                           
                        </div>
                       <!--
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
                        </div>-->
                        <!--third row-- state city pin code-->
                             <div class="row">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="dropdownliststate" runat="server" CssClass="form-control" placeholder="selct language">
                                          <asp:ListItem Text="--Select Language--" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                         <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <label>Author Name</label>
                                   <div class="form-group">
                                    <asp:DropDownList ID="dropdownlistauthor" runat="server" CssClass="form-control" placeholder="selct Author Name">
                                          <asp:ListItem Text="--Select Language--" Value="Select"></asp:ListItem>
                                          <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                          <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                          <asp:ListItem Text="Marathi" Value="Marathi"></asp:ListItem>
                                          <asp:ListItem Text="French" Value="French"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                                  <div class="col-md-4">
                                <label>Gendree</label>
                                <div class="form-group">
                                   <asp:ListBox ID="listbox2" runat="server" CssClass="form-control">
                                     
                                   </asp:ListBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <label>Publisher Name</label>
                                <div class="form-group">
                                     <asp:DropDownList ID="dropdownpublisername" runat="server" CssClass="form-control" placeholder="select publisher Name">
                                          <asp:ListItem Text="--Select Publisher--" Value="Select"></asp:ListItem>
                                          <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                          <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                          <asp:ListItem Text="Marathi" Value="Marathi"></asp:ListItem>
                                          <asp:ListItem Text="French" Value="French"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <label>Publish Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtpublishdate" runat="server" CssClass="form-control" placeholder="Publish Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                             
                        </div>
                        <div class="row">
                             <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Edition" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Book Cost</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Book Cost" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Pages" TextMode="Number" ></asp:TextBox>
                                </div>
                            </div>
                        </div>
                            <div class="row">
                             <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Actual Stock" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Current Stock" ReadOnly="true" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Issued Books" ReadOnly="true" ></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--third row full address-->
                        <div class="row">
                            <div class="col-12">
                                <label>Book Description</label>
                                <div class="form-group">
                                   <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control" placeholder="Book Description" TextMode="MultiLine"></asp:TextBox>                                </div>
                            </div>
                        </div>
                        <!--Submit button-->
                        <div class="row">
                            <div class="col-4">
                                <div class="form-group">
                                    <asp:Button ID="btnusersignup" runat="server" CssClass="form-control btn btn-success btn-block btn-lg" Text="Add" /> 
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <asp:Button ID="Button1" runat="server" CssClass="form-control btn btn-primary btn-block btn-lg" Text="Update" /> 
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <asp:Button ID="Button2" runat="server" CssClass="form-control btn btn-danger btn-block btn-lg" Text="Delete" /> 
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
                               <h3 class="text-success">Book Inventory List</h3>
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

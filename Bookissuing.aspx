<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Bookissuing.aspx.cs" Inherits="InventorySystem.Bookissuing" %>
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
                                      <h3 class="text-success">Book Issuing</h3>
                                  </center>
                              </div>
                           </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <img src="image/research.png" class="img-fluid"/>
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                             <div class="col-md-6">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtmemberid" runat="server" CssClass="form-control" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox ID="txtbookid" runat="server" CssClass="form-control" placeholder="Book ID"></asp:TextBox>
                                    <asp:Button ID="btngo" runat="server" CssClass="btn btn-primary" Text="Go" />
                                 </div>
                               </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtmembername" runat="server" CssClass="form-control" ReadOnly="True" placeholder="Member Name"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                 <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ReadOnly="True" placeholder="Book Name"></asp:TextBox>
                                </div>
                            </div>
                             
                        </div>
                         <div class="row">
                            <div class="col-md-6">
                                <label>Start Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtstartdate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                 <label>End Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtenddate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                      <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Button ID="btnissue" runat="server" CssClass="btn btn-success btn-lg btn-block" Text="Issue" />
                                </div>
                            </div>
                             <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Button ID="btnreturn" runat="server" CssClass="btn btn-primary btn-lg btn-block" Text="Return"/>
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
                            <h3 class="text-success">Issued Book List</h3>
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

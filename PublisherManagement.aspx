<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PublisherManagement.aspx.cs" Inherits="InventorySystem.PublisherManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
         <div class="row">
             <div class="col-md-5">
                  <div class="card">
                     <div class="card-body">
                         <div class="row">
                             <div class="col">
                                   <center>
                                      <h3 class="text-success">Publisher Details</h3>
                                  </center>
                              </div>
                           </div>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <img src="image/username.png" class="img-fluid" />
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-4">
                                <label>Publisher ID</label>
                                
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox ID="txtauthorid" runat="server" CssClass="form-control" placeholder="ID"></asp:TextBox>
                                    <asp:Button ID="btngo" runat="server" CssClass="btn btn-primary" Text="Go" />
                                 </div>
                               </div>
                            </div>
                          
                            <div class="col-md-8">
                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtauthorname" runat="server" CssClass="form-control" placeholder="Author Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button ID="btnadd" runat="server" CssClass="btn btn-success btn-lg btn-block" Text="Add" />
                                </div>
                            </div>
                             <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-primary btn-lg btn-block" Text="Update"/>
                                </div>
                            </div>
                             <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button ID="btndelete" runat="server" CssClass="btn btn-danger btn-lg btn-block" Text="Delete"/>
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
                            <h3 class="text-success">Publisher List</h3>
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

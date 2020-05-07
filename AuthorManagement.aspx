<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AuthorManagement.aspx.cs" Inherits="InventorySystem.AuthorManagement" %>
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
                                      <h3 class="text-success">Author Details</h3>
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
                                <label>Author ID</label>
                                
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox ID="txtauthorid" runat="server" CssClass="form-control" placeholder="ID"></asp:TextBox>
                                    <asp:Button ID="btngo" runat="server" CssClass="btn btn-primary" Text="Go" />
                                 </div>
                               </div>
                            </div>
                          
                            <div class="col-md-8">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="txtauthorname" runat="server" CssClass="form-control" placeholder="Author Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button ID="btnadd" runat="server" CssClass="btn btn-success btn-lg btn-block" Text="Add" OnClick="btnadd_Click" />
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
                            <h3 class="text-success">Author List</h3>
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
                                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eLibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                                   <center>
                               <asp:GridView ID="bookdata" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                   <Columns>
                                       <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                       <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                   </Columns>
                                       </asp:GridView>
                           </center>
                               </div>
                           </div>
                            
                       </div>
                   </div>
               </div>
        </div>
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Blocks.aspx.cs" Inherits="Admin_Blocks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">بلاک ها</div>
						    <div class="panel-body" align="center">

                            <br />

                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>

                            <br />
                            
                            <div class="panel panel-default">
                                <div class="panel-body" align="right">
                                    <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="Large" Text="ثبت بلاک جدید"></asp:Label>
                                </div>
                                <div class="panel-body">

                                    <br />
                                    
                                    <p>
                                        <label for="txtTitel">عنوان بلاک:</label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="txtTitel" runat="server" Width="200px"></asp:TextBox>
                                    </p>

                                    <p>
                                        <asp:CheckBox ID="chkShowOrNot" Text="نمایش یا عدم نمایش بلاک:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                                         runat="server" TextAlign="Left" />
                                    </p>

                                    <br />
                                    <br />

                                    <p>
                                        <asp:Button ID="btnAdd" CssClass="btn btn-default" Width="75px" runat="server" Text="ثبت" onclick="btnAdd_Click" />
                                    </p>

                                </div>
                            </div>

                            <br />
                            <br />

                            <div class="panel panel-default">
                                <div class="panel-body" align="right">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="true" Font-Size="Large" Text="ویرایش و حذف بلاک ها"></asp:Label>
                                </div>
                                <div class="panel-body">
                                    
                                    <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                                        
                                        <asp:TemplateField HeaderText="ویرایش" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="hlEdit" NavigateUrl='<%# "~/Admin/Blocks_Edit.aspx?ID=" + Eval("IB_ID") %>' runat="server">ویرایش</asp:HyperLink>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center"></HeaderStyle>
                                            <ItemStyle CssClass="text-center"></ItemStyle>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="حذف" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="hlDelete" NavigateUrl='<%# "~/Admin/Blocks.aspx?IDDEL=" + Eval("IB_ID") %>' runat="server">حذف</asp:HyperLink>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center"></HeaderStyle>
                                            <ItemStyle CssClass="text-center"></ItemStyle>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="کد" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("IB_ID") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center"></HeaderStyle>
                                            <ItemStyle CssClass="text-center"></ItemStyle>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="عنوان" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("IB_TitelBlock") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center"></HeaderStyle>
                                            <ItemStyle CssClass="text-center"></ItemStyle>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="نمایش یا عدم نمایش" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("IB_ShowOrNot") %>' />
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center"></HeaderStyle>
                                            <ItemStyle CssClass="text-center"></ItemStyle>
                                        </asp:TemplateField>

                                        </Columns>
                                    </asp:GridView>

                                    <br />
                                    
                                </div>
                            </div>

                            <br />

                            </div>
</asp:Content>


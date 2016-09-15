<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Shobehat_Answer.aspx.cs" Inherits="Shobehat_Answer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                        <div class="panel <% Response.Write(Session["Theam"]); %>" style="margin-left:-15px; margin-right:-20px;" dir="rtl">
                            <div class="panel-heading" align="center">
                                <asp:Label ID="lblTitel" runat="server" Text="پاسخ به شبهات"></asp:Label>
                            </div>
						    <div class="panel-body" align="right">
                                
                                <br />

                                <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                    <Columns>

                                        <asp:TemplateField HeaderText="سوالات" HeaderStyle-CssClass="text-right" ItemStyle-CssClass="text-right">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="hlSoal" runat="server" Text='<%# Eval("SHOB_Soal") %>' NavigateUrl='<%# "~/Show_Answer_Shobahat.aspx?ID=" + Eval("SHOB_ID") %>'></asp:HyperLink>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-right"></HeaderStyle>
                                            <ItemStyle CssClass="text-right"></ItemStyle>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>

                                <br />

                            </div>
                        </div>
</asp:Content>


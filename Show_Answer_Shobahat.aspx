<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Show_Answer_Shobahat.aspx.cs" Inherits="Show_Answer_Shobahat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                        <div class="panel <% Response.Write(Session["Theam"]); %>" style="margin-left:-15px; margin-right:-20px;" dir="rtl">
                            <div class="panel-heading" align="center">
                                <asp:Label ID="lblTitel" runat="server" Text="سوال و پاسخ شبهات"></asp:Label>
                            </div>
						    <div class="panel-body" align="right">
                                
                                <br />

                                <asp:PlaceHolder ID="PlaceHolder1" runat="server">

                                </asp:PlaceHolder>

                                <br />

                            </div>
                        </div>
</asp:Content>


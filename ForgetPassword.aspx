<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                        <div class="panel <% Response.Write(Session["Theam"]); %>" style="margin-left:-15px; margin-right:-20px;">
                            <div class="panel-heading" align="center">
                                <asp:Label ID="lblTitel" runat="server" Text="بازگردانی کلمه عبور"></asp:Label>
                            </div>
						    <div class="panel-body" align="center">
                                


                            </div>
                        </div>
</asp:Content>


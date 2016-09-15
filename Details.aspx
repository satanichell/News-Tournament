<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                        <div class="panel <% Response.Write(Session["Theam"]); %>" style="margin-left:-15px; margin-right:-20px;">
                            <div class="panel-heading" align="center">جزئیات خبر</div>
						    <div class="panel-body" align="center" dir="rtl">
                                
                                <br />

                                <asp:Label ID="lblTiter" runat="server" Font-Bold="True" Font-Size="Large" ></asp:Label>

                                <br />
                                <br />

                                <div align="right">
                                    
                                    <asp:Image ID="imgPic" runat="server" style="margin:0px 0px 0px 20px;" ImageAlign="Right" Width="120" Height="120" />
                                    
                                    <asp:Label ID="lblKholase" runat="server" Font-Size="Small"></asp:Label>

                                </div>

                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />

                                <div id="divText" runat="server"></div>

                                <br />
                                <br />
                                <br />

                                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>

                                <br />
                                <br />
                                <br />

                                <p>
                                    <asp:Button ID="btnBack" runat="server" Text="بازگشت" Width="75px" onclick="btnBack_Click"/>
                                </p>

                            </div>
                        </div>
</asp:Content>
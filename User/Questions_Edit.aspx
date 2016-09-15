<%@ Page Title="" Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Questions_Edit.aspx.cs" Inherits="User_Questions_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ویرایش مسابقه</div>
						    <div class="panel-body" align="center" dir="rtl">
                                
                                <br />

                                <div align="right">

                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
                                        
                                        
                                    </asp:PlaceHolder>

                                </div>

                                <br />

                                <asp:Button ID="btnAdd" runat="server" Text="ثبت" Width="150px" OnClick="btnAdd_Click" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnCancel" runat="server" Text="انصراف" Width="150px" OnClick="btnCancel_Click"/>

                            </div>
</asp:Content>


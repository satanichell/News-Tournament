<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="News_Add.aspx.cs" Inherits="Admin_News_Add" %>

<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ثبت خبر</div>
						    <div class="panel-body" align="center" dir="rtl">
                                
                                <br />
                                <br />

                                <p>
                                    <asp:Label ID="lblOnwanKhabar" runat="server" Text="عنوان خبر:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtOnwanKhabar" runat="server" Height="90px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblKholase" runat="server" Text="خلاصه خبر:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtKholase" runat="server" Height="90px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblMatnKhabar" runat="server" Text="متن خبر:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                    <CKEditor:CKEditorControl ID="ckeMatnKhabar" runat="server" Width="70%"></CKEditor:CKEditorControl>
                                </p>


                                <p>
                                    <asp:Label ID="lblTasvir" runat="server" Text="عکس خبر:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                    <asp:FileUpload ID="fupPhoto" runat="server" />
                                </p>

                                <p>
                                    <asp:Label ID="lblFile" runat="server" Text="پیوست فایل:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                    <asp:FileUpload ID="fupFile" runat="server" />
                                </p>

                                <br />
                                <asp:Label ID="lblWarning1" runat="server" ForeColor="#FF3300"></asp:Label>
                                <br />
                                <asp:Label ID="lblWarning2" runat="server" ForeColor="#FF3300"></asp:Label>
                                <br />
                                <br />

                                <p>
                                    <asp:Button ID="btnAdd" runat="server" Text="ثبت" Width="75px" 
                                        onclick="btnAdd_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" runat="server" Text="انصراف" Width="75px" 
                                        onclick="btnCancel_Click"/>
                                </p>

                            </div>
</asp:Content>
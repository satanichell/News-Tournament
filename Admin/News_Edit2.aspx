<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="News_Edit2.aspx.cs" Inherits="Admin_News_Edit2" %>

<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ثبت خبر</div>
						    <div class="panel-body" align="center" dir="rtl">
                                
                                <br />
                                <br />

                                <p>
                                    <asp:Label ID="lblOnwanKhabar" runat="server" Text="عنوان خبر:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtOnwanKhabar" runat="server" Height="90px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblKholase" runat="server" Text="خلاصه خبر:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtKholase" runat="server" Height="90px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblMatnKhabar" runat="server" Text="متن خبر:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                    <CKEditor:CKEditorControl ID="ckeMatnKhabar" runat="server" Width="70%"></CKEditor:CKEditorControl>
                                </p>

                                <p>
                                    <asp:Label ID="lblPhoto" runat="server" Text="عکس آپلود شده:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Image ID="imgPhoto" runat="server" Width="60" Height="60" />
                                </p>

                                <p>
                                    <asp:Label ID="lblNamePhoto" runat="server" Text="نام عکس آپلود شده:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblNamePhotoShow" runat="server"></asp:Label>
                                </p>

                                <p>
                                    <asp:Label ID="lblTasvir" runat="server" Text="آپلود عکس جدید برای خبر:" Font-Bold="True" Font-Size="Large"></asp:Label>
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
                                    <asp:Button ID="btnEdit" runat="server" Text="ویرایش" Width="75px" 
                                        onclick="btnEdit_Click"  />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" runat="server" Text="انصراف" Width="75px" 
                                        onclick="btnCancel_Click" />
                                </p>

                            </div>
</asp:Content>
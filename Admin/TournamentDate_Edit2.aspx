<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="TournamentDate_Edit2.aspx.cs" Inherits="Admin_TournamentDate_Edit2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ویرایش اطلاعات زمان مسابقه</div>
						    <div class="panel-body" align="center" dir="rtl">
                                
                                <br />
                                <br />

                                <p>
                                    <asp:Label ID="lblID" runat="server" Text="کد مسابقه:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtID" runat="server" Width="300px" Enabled="False"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblName" runat="server" Text="نام مسابقه:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtName" runat="server" Width="300px"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblStartDate" runat="server" Text="تاریخ شروع:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtStartDate" runat="server" Width="300px"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblEndDate" runat="server" Text="تاریخ پایان:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtEndDate" runat="server" Width="300px"></asp:TextBox>
                                </p>

                                <br />
                                <asp:Label ID="lblWarning" runat="server" ForeColor="#FF3300"></asp:Label>
                                <br />
                                <br />
                                <br />

                                <p>
                                    <asp:Button ID="btnEdit" runat="server" Text="ویرایش" Width="75px" 
                                        onclick="btnEdit_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" runat="server" Text="انصراف" Width="75px" 
                                        onclick="btnCancel_Click" />
                                </p>

                            </div>
</asp:Content>


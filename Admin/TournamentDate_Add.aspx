<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="TournamentDate_Add.aspx.cs" Inherits="Admin_TournamentDate_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ثبت زمان مسابقه</div>
						    <div class="panel-body" align="center" dir="rtl">
                                
                                <br />
                                <br />

                                <p>
                                    <asp:Label ID="lblName" runat="server" Text="نام مسابقه:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtName" runat="server" Width="300px"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </p>

                                <p>
                                    <asp:Label ID="lblStartDate" runat="server" Text="تاریخ شروع:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtStartDate" runat="server" Width="300px"></asp:TextBox>
                                    <asp:Label ID="Label1" runat="server" Text="(مانند: 1390/12/30)"></asp:Label>
                                </p>

                                <p>
                                    <asp:Label ID="lblEndDate" runat="server" Text="تاریخ پایان:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtEndDate" runat="server" Width="300px"></asp:TextBox>
                                    <asp:Label ID="Label2" runat="server" Text="(مانند: 1390/12/30)"></asp:Label>

                                </p>

                                <br />
                                <asp:Label ID="lblWarning" runat="server" ForeColor="#FF3300"></asp:Label>
                                <br />
                                <br />
                                <br />

                                <p>
                                    <asp:Button ID="btnAdd" runat="server" Text="ثبت" Width="75px" 
                                        onclick="btnAdd_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" runat="server" Text="انصراف" Width="75px" 
                                        onclick="btnCancel_Click" />
                                </p>

                            </div>
</asp:Content>


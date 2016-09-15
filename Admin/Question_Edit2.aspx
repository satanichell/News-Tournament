<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Question_Edit2.aspx.cs" Inherits="Admin_Question_Edit2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ویرایش اطلاعات سوال</div>
						    <div class="panel-body" align="center" dir="rtl">
                                
                                <br />
                                <br />

                                <p>
                                    <asp:Label ID="lblID" runat="server" Text="کد سوال:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtID" runat="server" Width="300px" Enabled="False"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblDateMos" runat="server" Text="نام مسابقه:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="ddlDateMos" runat="server" Width="300px">
                                    </asp:DropDownList>
                                </p>

                                <p>
                                    <asp:Label ID="lblQuestionNo" runat="server" Text="شماره سوال:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtQuestionNo" runat="server" Width="300px"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblQuestion" runat="server" Text="سوال مسابقه:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtQuestion" runat="server" Height="90px" Width="300px"></asp:TextBox>
                                </p>

                                <br />
                                <br />
                                <br />

                                <p>
                                    <asp:Label ID="lblAnswer1" runat="server" Text="پاسخ اول:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtAnswer1" runat="server" Height="50px" Width="300px"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblAnswer2" runat="server" Text="پاسخ دوم:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtAnswer2" runat="server" Height="50px" Width="300px"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblAnswer3" runat="server" Text="پاسخ سوم:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtAnswer3" runat="server" Height="50px" Width="300px"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblAnswer4" runat="server" Text="پاسخ چهارم:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtAnswer4" runat="server" Height="50px" Width="300px"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblScore" runat="server" Text="امتیاز سوال:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtScore" runat="server" Width="300px"></asp:TextBox>
                                </p>

                                <br />
                                <asp:Label ID="lblWarning" runat="server" ForeColor="#FF3300"></asp:Label>
                                <br />
                                <br />
                                <br />

                                <p>
                                    <asp:Button ID="btnEdit" runat="server" Text="ویرایش" Width="75px" 
                                        onclick="btnEdit_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" runat="server" Text="انصراف" Width="75px" 
                                        onclick="btnCancel_Click"  />
                                </p>

                            </div>
</asp:Content>


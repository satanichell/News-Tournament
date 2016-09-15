<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Question_Add.aspx.cs" Inherits="Admin_Question_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ثبت سوال</div>
						    <div class="panel-body" align="center" dir="rtl">
                                
                                <br />
                                <br />

                                <p>
                                    <asp:Label ID="lblDateMos" runat="server" Text="نام مسابقه:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="ddlDateMos" runat="server" Width="300px">
                                    </asp:DropDownList>
                                </p>

                                <p>
                                    <asp:Label ID="lblQuestionNo" runat="server" Text="کد سوال:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtQuestionNo" runat="server" Width="300px"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblQuestion" runat="server" Text="سوال مسابقه:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtQuestion" runat="server" Height="90px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                                </p>

                                <br />
                                <br />
                                <br />

                                <p>
                                    <asp:Label ID="lblAnswer1" runat="server" Text="پاسخ اول:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtAnswer1" runat="server" Height="50px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblAnswer2" runat="server" Text="پاسخ دوم:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtAnswer2" runat="server" Height="50px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblAnswer3" runat="server" Text="پاسخ سوم:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtAnswer3" runat="server" Height="50px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblAnswer4" runat="server" Text="پاسخ چهارم:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtAnswer4" runat="server" Height="50px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                                </p>

                                <p>
                                    <asp:Label ID="lblAnswerTrue" runat="server" Text="پاسخ صحیح:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="ddlAnswerTrue" runat="server" Width="300px">
                                        <asp:ListItem Value="0">انتخاب کنید</asp:ListItem>
                                        <asp:ListItem Value="1">جواب اول</asp:ListItem>
                                        <asp:ListItem Value="2">جواب دوم</asp:ListItem>
                                        <asp:ListItem Value="3">جواب سوم</asp:ListItem>
                                        <asp:ListItem Value="4">جواب چهارم</asp:ListItem>
                                    </asp:DropDownList>
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
                                    <asp:Button ID="btnAdd" runat="server" Text="ثبت" Width="75px" 
                                        onclick="btnAdd_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" runat="server" Text="انصراف" Width="75px" 
                                        onclick="btnCancel_Click" />
                                </p>

                            </div>
</asp:Content>


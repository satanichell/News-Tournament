<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Question_Add_True_Answers.aspx.cs" Inherits="Admin_Question_Add_True_Answers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ثبت پاسخ های صحیح مسابقات</div>
						    <div class="panel-body" align="center" dir="rtl">

                                <br />

                                <p>
                                    <asp:Label ID="lblMosabeghe" runat="server" Text="مسابقه :"></asp:Label>&nbsp;
                                    <asp:DropDownList ID="ddlDateMos" runat="server" Width="150px"></asp:DropDownList>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnShow" runat="server" Text="نمایش" Width="75px" onclick="btnShow_Click" />
                                </p>

                                <br />

                                <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                    <Columns>

                                        <asp:TemplateField HeaderText="کد سوال" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("QMOS_ID") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center"></HeaderStyle>
                                            <ItemStyle CssClass="text-center"></ItemStyle>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="شماره سوال" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                            <ItemTemplate>
                                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("QMOS_QuestionNo") %>'></asp:Label>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center"></HeaderStyle>
                                            <ItemStyle CssClass="text-center"></ItemStyle>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="پاسخ صحیح" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                            <ItemTemplate>
                                                <asp:RadioButtonList ID="rblTrueAnswer" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem Text="&nbsp;یک&nbsp;"    Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="&nbsp;دو&nbsp;"    Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="&nbsp;سه&nbsp;"    Value="3"></asp:ListItem>
                                                    <asp:ListItem Text="&nbsp;چهار&nbsp;"  Value="4"></asp:ListItem>
                                                </asp:RadioButtonList>
                                            </ItemTemplate>
                                            <HeaderStyle CssClass="text-center"></HeaderStyle>
                                            <ItemStyle CssClass="text-center"></ItemStyle>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>

                                <br />

                                <p>
                                    <asp:Label ID="lblWarning" runat="server"></asp:Label>
                                </p>

                                <p>
                                    <asp:Button ID="btnAdd" runat="server" Text="ثبت پاسخ های صحیح" Width="125px" onclick="btnAdd_Click" />
                                </p>


                            </div>
</asp:Content>


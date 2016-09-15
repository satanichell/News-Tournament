<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Question_Edit.aspx.cs" Inherits="Admin_Question_Edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                            <div class="panel-heading" align="center">ویرایش سوال</div>
						    <div class="panel-body" align="center" dir="rtl">

                                <br />

                                <asp:DropDownList ID="ddlMosabeghe" runat="server" ></asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnShow" runat="server" Text="نمایش" onclick="btnShow_Click" />

                                <br />
                                <br />

                                <asp:GridView ID="GridView1" CssClass="table table-hover table-bordered" runat="server" AutoGenerateColumns="False">
                                <Columns>

                                    <asp:TemplateField HeaderText="ویرایش" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/Admin/Question_Edit2.aspx?ID="+Eval("QMOS_ID") %>'  runat="server">ویرایش</asp:HyperLink>
                                        </ItemTemplate>

                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>

                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="حذف" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "~/Admin/Question_Edit.aspx?DeleteID="+Eval("QMOS_ID") %>'  runat="server">حذف</asp:HyperLink>
                                        </ItemTemplate>

                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>

                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="شماره سوال" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblID" runat="server" Text='<%# Eval("QMOS_QuestionNo") %>'></asp:Label>
                                        </ItemTemplate>

                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>

                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="سوال" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblQuestion" runat="server" Text='<%# Eval("QMOS_Question") %>'></asp:Label>
                                        </ItemTemplate>

                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>

                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="پاسخ اول" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAnswer1" runat="server" Text='<%# Eval("QMOS_Answer1") %>'></asp:Label>
                                        </ItemTemplate>

                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>

                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="پاسخ دوم" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAnswer2" runat="server" Text='<%# Eval("QMOS_Answer2") %>'></asp:Label>
                                        </ItemTemplate>

                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>

                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="پاسخ سوم" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAnswer3" runat="server" Text='<%# Eval("QMOS_Answer3") %>'></asp:Label>
                                        </ItemTemplate>

                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>

                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="پاسخ چهارم" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAnswer2" runat="server" Text='<%# Eval("QMOS_Answer4") %>'></asp:Label>
                                        </ItemTemplate>

                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>

                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="پاسخ صحیح" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                                        <ItemTemplate>
                                            <asp:Label ID="lblAnswerTrue" runat="server" Text='<%# ProcessAnswerTrue(Eval("QMOS_AnswerTrue")) %>'></asp:Label>
                                        </ItemTemplate>

                                        <HeaderStyle CssClass="text-center"></HeaderStyle>
                                        <ItemStyle CssClass="text-center"></ItemStyle>

                                    </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                                <br />
                                <p>
                                    <asp:Label ID="lblWarning" runat="server" Text=""></asp:Label>
                                </p>
                            </div>
</asp:Content>


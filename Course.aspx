<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<div style="background-image: url('Images/background1.jpg'); width: 1200px; height: 477px">
    <table align="center" style="width: 367px; height: 237px;">
        <tr>
            <td colspan="2" align="center">
                <h2>
                    Add Course</h2>
                <br />
            </td>
            
        </tr>
        <tr>
            <td>
                <b>Course: &nbsp;&nbsp;&nbsp;</b>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="230px" 
                    CausesValidation="True" placeholder="Course Name"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" 
                    ForeColor="Red" ErrorMessage="Enter Course Name"></asp:RequiredFieldValidator></td>
            
        </tr>
        <tr>
            <td colspan="2" align="center" class="style1">
                <asp:Button ID="Button1" runat="server" Text="Add" Height="44px" 
                    onclick="Button1_Click" Width="80px" Font-Bold="True" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
        <br />
    <div align="center">
 
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            DataKeyNames="CID" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"
            OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" 
            PageSize="4" Height="135px" Width="257px" 
            onpageindexchanging="GridView1_PageIndexChanging" AllowCustomPaging="True">
            <Columns>
                        <asp:TemplateField HeaderText="Course">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("CourseName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("CourseName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                             <asp:CommandField CausesValidation="false" ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" HeaderText="Operation"/>
                                
                   </Columns>
        </asp:GridView>
    </div>
    <br />
    <br />
    <br />
    </div>

</center>
</asp:Content>


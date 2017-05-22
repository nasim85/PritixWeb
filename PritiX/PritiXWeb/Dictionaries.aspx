<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Dictionaries.aspx.cs" Inherits="PritiXWeb.Dictoraries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="StyleSection" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentSection" runat="server">
    <div class="jumbotron">
    <form id="form1" runat="server">
        <h3>Your dictionaries</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="DictionaryId" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="DictionaryName" HeaderText="Dictionary Name" SortExpression="DictionaryName" />
                <asp:BoundField DataField="PrimaryLanguage" HeaderText="Primary Language" SortExpression="PrimaryLanguage" />
                <asp:BoundField DataField="TranslatedLanguare" HeaderText="Translated Languare" SortExpression="TranslatedLanguare" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <HeaderStyle CssClass="thead" BackColor="#666666" ForeColor="White" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\ProjectsV13;Initial Catalog=PritiXDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="usp_getDictionaryWords" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="DictionaryId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" CssClass="table" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" HeaderStyle-CssClass="thead">
            <Columns>
                <asp:BoundField DataField="PrimaryWord" HeaderText="PrimaryWord" SortExpression="PrimaryWord" />
                <asp:BoundField DataField="TransaledWord" HeaderText="TransaledWord" SortExpression="TransaledWord" />
            </Columns>

<HeaderStyle CssClass="thead" BackColor="Silver"></HeaderStyle>
        </asp:GridView>

    </form>

      </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptSection" runat="server">
</asp:Content>

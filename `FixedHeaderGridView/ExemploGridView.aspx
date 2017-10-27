<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExemploGridView.aspx.cs" Inherits="_FixedHeaderGridView.ExemploGridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <h3>Exemplo de GridView Com Cabeçalho Fixo</h3>
   
    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" Width="100%" AutoGenerateColumns="False">

        <Columns>
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome"></asp:BoundField>
            <asp:BoundField DataField="SobreNome" HeaderText="SobreNome" SortExpression="SobreNome"></asp:BoundField>
            <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco"></asp:BoundField>
            <asp:BoundField DataField="Cidade" HeaderText="Cidade" SortExpression="Cidade"></asp:BoundField>
            <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF"></asp:BoundField>
        </Columns>
        <HeaderStyle CssClass="GridviewScrollHeader" /> 
        <RowStyle CssClass="GridviewScrollItem" /> 
        <PagerStyle CssClass="GridviewScrollPager" /> 
    </asp:GridView>

    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" SelectMethod="CarregarGrid" TypeName="_FixedHeaderGridView.ExemploGridView" OldValuesParameterFormatString="original_{0}">
    </asp:ObjectDataSource>
    <a href="http://gridviewscroll.aspcity.idv.tw/">Fonte</a>

    <script type="text/javascript">
	    $(document).ready(function () {
            $('#MainContent_GridView1').gridviewScroll({
                width: 800,
                height: 500,
             });
	    });
	

	</script>
</asp:Content>

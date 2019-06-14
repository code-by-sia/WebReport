<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" />
<xsl:template match="Report">
    <style>
		 th{
			padding: .3em 0 !important;
		}
    </style>
   <xsl:for-each select="Page">
	   <page>
	   	 <div class="ReprotHeader">
             <img src="/static/img/osi_symbol_0.png" class="logo"/>
		   	 <h1>CompanyName</h1>
	 	   	 <span style="float:left;" >Order Report</span>
		   	 <span style="float:right;" >
                 Page
                 <xsl:value-of select="position()" />
                 Of
                 <xsl:value-of select="count(../Page)" /></span>
	   	 </div>
         <table cellspacing="0" cellpadding="0" class="rep-table" >
             <tbody>
                 <tr>
                    <td>Order Id</td>
                    <td><xsl:value-of select="../Header/Id"/></td>
                    <td>Supplier</td>
                    <td><xsl:value-of select="../Header/SupplierName"/></td>
                    <td>User</td>
                    <td><xsl:value-of select="../Header/UserName"/></td>
                 </tr>
                 <tr>
                    <td>Date</td>
                    <td><xsl:value-of select="../Header/Date"/></td>
                    <td>Time</td>
                    <td><xsl:value-of select="../Header/Time"/></td>
                    <td>Storage</td>
                    <td><xsl:value-of select="../Header/Storage" /></td>

                 </tr>
             </tbody>
         </table>
	   	 <table cellspacing="0" cellpadding="0" class="rep-table alt" >
	   	 	<thead>
	   	 		<tr>
	   	 			<th>Row Index</th>
	   	 			<th>Product Id</th>
	   	 			<th>Product Group</th>
	   	 			<th>Product Name</th>
	   	 			<th>Quantity</th>
	   	 			<th>Purchase Price</th>
                    <th>Full Purchase Price</th>
	   	 		</tr>
	   	 	</thead>
	   	 	<tbody>
	   	 		<xsl:for-each select="Row" >
		   	 		<tr>
		              <td><xsl:value-of select="position()" /></td>
		              <td><xsl:value-of select="ProductId" /></td>
		              <td class="price" ><xsl:value-of select="Category" /></td>
		              <td class="price" ><xsl:value-of select="ProductName" /></td>
		              <td class="price" ><xsl:value-of select="format-number(Quantity,'###,###')" /></td>
		              <td class="price" ><xsl:value-of select="format-number(UnitPrice,'###,###')" /></td>
		               <td class="price" ><xsl:value-of select="format-number(FullPrice,'###,###')" /></td>
					</tr>
				</xsl:for-each>
	   	 	</tbody>
	   	 	<tfoot>
	   	 		<xsl:variable name="SumCredit" select="sum(../Page/Row/Credit)" />
	   	 		<tr>
					<td colspan="4" style="border:none !important;text-align:right;border-left:none;">
                    Total
                    </td>
					<td class="footsum" ><xsl:value-of select="format-number(sum(../Page/Row/Quantity),'###,###')" /></td>
					<td style="background:#ccc" />
					<td class="footsum" ><xsl:value-of select="format-number(sum(../Page/Row/FullPrice),'###,###')" /></td>
	          </tr>
	   	 	</tfoot>
	   	 </table>
	   	 <span style="font-weight:bold;background:#e6e6e6;margin:0 auto;display:block;text-align:center;width:10em;padding:.2em .5em">
          <xsl:value-of select="../Header/DateTime" />
       </span>
	   </page>
   </xsl:for-each>
</xsl:template>

<xsl:include href="/viewer.xsl" />
    
</xsl:stylesheet>
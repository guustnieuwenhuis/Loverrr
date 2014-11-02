<cfoutput>
<div class="container">

	<h1>Reports</h1>
	<table id="loveLetters" class="display" cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>Name</th>
				<th>To</th>
				<th>From</th>
				<th>Language</th>
			</tr>
		</thead>
 
		<tfoot>
			<tr>
				<th>Name</th>
				<th>To</th>
				<th>From</th>
				<th>Language</th>
			</tr>
		</tfoot>
 
		<tbody>
			<cfloop from="1" to="#arrayLen(rc.loveLetters)#" index="i">
			<tr>
				<td>#rc.loveLetters[i].getName()#</td>
				<td>#rc.loveLetters[i].getTo()#</td>
				<td>#rc.loveLetters[i].getFrom()#</td>
				<td>#rc.loveLetters[i].getLanguage()#</td>
			</tr>
			</cfloop>
		</tbody>
	</table>

	<a href="#buildUrl("reports.create")#" class="btn btn-primary pull-right">Generete PDF</a>
</div>
</cfoutput>
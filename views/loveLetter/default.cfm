<cfoutput>
<div class="container">

	<h1>Generate Love Letter</h1>

	<form action="#buildUrl('loveLetter.create')#" method="POST" class="form-horizontal" role="form">
		<fieldset>
			<legend>General</legend>
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">Name</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="name" name="LLName" placeholder="Love Letter name">
				</div>
			</div>
			<div class="form-group">
				<label for="language" class="col-sm-2 control-label">Language</label>
				<div class="col-sm-10">
					<select id="language" name="LLLanguage" class="form-control">
						<option value="nl_NL">Dutch</option>
						<option value="de_DE">German</option>
						<option value="en_UK">English</option>
					</select>
				</div>
			</div>
		</fieldset>
		<fieldset>
			<legend>About him/her</legend>
			<div class="form-group">
				<label for="toName" class="col-sm-2 control-label">Name</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="toName" name="LLToName" placeholder="Name">
				</div>
			</div>
		</fieldset>
		<fieldset>
			<legend>About you</legend>
			<div class="form-group">
				<label for="fromName" class="col-sm-2 control-label">Name</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="fromName" name="LLFromName" placeholder="Name">
				</div>
			</div>
		</fieldset>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Generate</button>
			</div>
		</div>
	</form>

</div>
</cfoutput>
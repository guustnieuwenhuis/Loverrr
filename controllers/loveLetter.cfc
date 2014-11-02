component accessors="true" extends="controller"
{
	public any function init(fw) {
		variables.fw = fw;
		return this;
	}
	
	public void function default(rc) {

	}
	
	public void function create(rc) {
		
		local.loveLetter = getLoveletterService().createLoveLetter(
			rc.LLName
			, rc.LLToName
			, rc.LLFromName
			, rc.LLLanguage
		);

		rc.loveLetterFileName = getReportGeneratorUtil().generateLoveLetter(local.loveLetter);

	}
	
}

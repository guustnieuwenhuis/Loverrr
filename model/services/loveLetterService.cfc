component extends="service" accessors="true"
{
	public model.beans.LoveLetter function createLoveLetter(
		required string name
		, required string fromName
		, required string toName
		, required string language
	)
	{
		local.loveLetter = beanFactory.getBean("LoveLetterBean");
		local.loveLetter.setName(arguments.name);
		local.loveLetter.setFrom(arguments.fromName);
		local.loveLetter.setTo(arguments.toName);
		local.loveLetter.setLanguage(arguments.language);
		entitySave(local.loveLetter);

		return local.loveLetter;
	}

	public array function getLoveLetters()
	{
		return getLoveLetterGateway().getAllLoveLetters();
	}
}
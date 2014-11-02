component extends="gateway" accessors="true"
{
	public query function getAllLoveLettersQuery()
	{
		local.queryService = new query();

		local.queryService.setsql("
			SELECT	*
			FROM	LoveLetter
		");
		
		local.loveLettersQuery = local.queryService.execute();
		local.loveLetters = local.loveLettersQuery.getResult();

		return local.loveLetters;
	}

	public array function getAllLoveLetters()
	{
		local.loveLetters = getAllLoveLettersQuery();

		local.loveLettersArray = [];

		for(ll in local.loveLetters)
		{
			local.loveLetter = beanFactory.getBean("LoveLetterBean");
			local.loveLetter.setName(ll.name);
			local.loveLetter.setFrom(ll.from);
			local.loveLetter.setTo(ll.to);
			local.loveLetter.setLanguage(ll.language);

			arrayAppend(local.loveLettersArray, local.loveLetter);
		}

		return local.loveLettersArray;
	}
}
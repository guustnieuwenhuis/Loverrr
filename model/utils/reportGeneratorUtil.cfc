<cfcomponent extends="util" accessors="true">
	<cffunction name="generateLoveLetter" access="public" return="string">
		<cfargument name="loveLetter" type="model.beans.LoveLetter" />

		<cfset local.loveLetterFileName = "loveLetter_" & arguments.loveLetter.getId() & ".pdf" />
		<cfset local.loveLetterOutput = expandPath("/repository/loveLetters/") & local.loveLetterFileName />

		<cfset local.jrxml = expandPath("/assets/templates/") & "loveLetter.jrxml" />

		<cfset local.resourcebundle = expandPath("/assets/templates/resourceBundles/") & arguments.loveLetter.getLanguage() & ".properties" />
		<cfset local.dsname = "empty" />
		<cfset local.datafile = "" />

		<cfset local.params = {} />
		<cfset local.params["to"] = arguments.loveLetter.getTo() />
		<cfset local.params["from"] = arguments.loveLetter.getFrom() />

		<cf_jasperreport
			jrxml="#local.jrxml#"
			resourcebundle="#local.resourcebundle#"
			reportparams="#local.params#"
			dsn="#local.dsname#"
			datafile="#local.datafile#"
			exportfile="#local.loveLetterOutput#"
			exporttype="pdf"/>

		<cfreturn local.loveLetterFileName />
	</cffunction>

	<cffunction name="generateReport" access="public" return="string">

		<cfset local.loveLetters = getLoveLetterGateway().getAllLoveLettersQuery() />

		<cfset local.reportFileName = "report_" & lsDateTimeFormat(now()) & ".pdf" />
		<cfset local.reportOutput = expandPath("/repository/reports/") & local.reportFileName />

		<cfset local.jrxml = expandPath("/assets/templates/") & "loveLetter.jrxml" />

		<cfset local.resourcebundle = expandPath("/assets/templates/resourceBundles/") & "en_UK.properties" />
		<cfset local.dsname = "empty" />
		<cfset local.datafile = "" />

		<cfset local.params = {} />

		<cf_jasperreport
			jrxml="#local.jrxml#"
			query="#local.loveLetters#"
			resourcebundle="#local.resourcebundle#"
			exportfile="#local.reportOutput#"
			exporttype="pdf"/>

		<cfreturn local.reportFileName />
	</cffunction>
</cfcomponent>

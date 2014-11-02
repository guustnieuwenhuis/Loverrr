component persistent="true" entityname="LoveLetter" accessors="true"
{
	property name="id" ormtype="id" generator="native";
	property name="name" length="100";

	property name="from" length="100";
	property name="to" length="100";
	property name="language" length="5";
	
}
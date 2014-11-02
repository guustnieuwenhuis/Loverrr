component accessors="true" extends="controller"
{
	property beanFactory;
	
	public any function init( fw ) {
		variables.fw = fw;
		return this;
	}
	
	public void function default( rc ) {
		
	}
	
}

package com.xenture.configuration;

import java.util.HashMap;
import java.util.Map;

import org.apache.tiles.Attribute;
import org.apache.tiles.Definition;
import org.apache.tiles.definition.DefinitionsFactory;

import com.xenture.utils.ConstantURL;



public final class TilesDefinitionsConfig implements DefinitionsFactory {

	private static final Map<String, Definition> tilesDefinitions = new HashMap<String, Definition>();

	public Definition getDefinition(String name, org.apache.tiles.request.Request tilesContext) {

		return tilesDefinitions.get(name);
	}

	private static void addDefaultLayoutDef(String name, String body, String header, String footer) {

		Map<String, Attribute> attributes = new HashMap<String, Attribute>();

		attributes.put("header", new Attribute(header));
		attributes.put("body", new Attribute(ConstantURL.JSP_PACKAGE + "" + body + "" + ConstantURL.JSP_EXTANTION));
		attributes.put("footer", new Attribute(footer));
		tilesDefinitions.put(name, new Definition(name, ConstantURL.BASE_TEMPLATE, attributes));

	}

	public static void addDefinitions() {

		// Admin pages
		addDefaultLayoutDef(ConstantURL.REGISTRATION_URL, ConstantURL.REGISTRATION_URL, ConstantURL.HEADER,
				ConstantURL.FOOTER);

		addDefaultLayoutDef(ConstantURL.LOGIN_FORM_URL, ConstantURL.LOGIN_FORM_URL, ConstantURL.HEADER,
				ConstantURL.FOOTER);

		addDefaultLayoutDef(ConstantURL.USER_HOME_FORM_URL, ConstantURL.USER_HOME_FORM_URL, ConstantURL.HEADER,
				ConstantURL.FOOTER);
		addDefaultLayoutDef(ConstantURL.HOME_URL, ConstantURL.HOME_URL, ConstantURL.HEADER, ConstantURL.FOOTER);

		addDefaultLayoutDef(ConstantURL.UPLOAD_EXCEL, ConstantURL.UPLOAD_EXCEL, ConstantURL.HEADER, ConstantURL.FOOTER);
		addDefaultLayoutDef(ConstantURL.USER_FORGET_PASSORD_URL, ConstantURL.USER_FORGET_PASSORD_URL, ConstantURL.HEADER, ConstantURL.FOOTER);
		addDefaultLayoutDef(ConstantURL.USER_HOME1_URL, ConstantURL.USER_HOME1_URL, ConstantURL.HEADER, ConstantURL.FOOTER);
		
		
		addDefaultLayoutDef(ConstantURL.WELCOME_USER_HOME_URL, ConstantURL.WELCOME_USER_HOME_URL, ConstantURL.HEADER, ConstantURL.FOOTER);
		addDefaultLayoutDef(ConstantURL.CHANGE_PASSWORD_URL, ConstantURL.CHANGE_PASSWORD_URL, ConstantURL.HEADER, ConstantURL.FOOTER);

	}
	

	public static void addUserLayoutDef(String name, String body, String header, String footer) {
		addDefaultLayoutDef(name, body, header, footer);

	}

}
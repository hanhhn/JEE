package com.jee.exercise;

import java.util.Locale;
import java.util.ResourceBundle;

public class Utility {
	private static ResourceBundle resourceBundle;
	private final static String ResourceLangEn = "resourceLang_en";
	private final static String ResourceLangKo = "resourceLang_ko";
	private final static String ResourceLangVi = "resourceLang_vi";
	
	public static ResourceBundle getResourceBundle(String lang) {
		if(lang.equals("ko")) {
			resourceBundle = ResourceBundle.getBundle(ResourceLangKo);
		}
		else if(lang.equals("vi")) {
			resourceBundle = ResourceBundle.getBundle(ResourceLangVi);
		}
		else {
			resourceBundle = ResourceBundle.getBundle(ResourceLangEn);
		}
		return resourceBundle;
	}
}

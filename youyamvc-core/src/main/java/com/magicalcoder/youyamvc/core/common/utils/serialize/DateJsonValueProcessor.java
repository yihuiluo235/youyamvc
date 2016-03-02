package com.magicalcoder.youyamvc.core.common.utils.serialize;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

/**
 * qq:799374340
 * @author hdy
 * 2013-7-23上午10:09:35
 */
public class DateJsonValueProcessor implements JsonValueProcessor {  
	 public static final String Default_DATE_PATTERN ="yyyy-MM-dd HH:mm:ss";  
	 private DateFormat dateFormat ;  
	 public DateJsonValueProcessor(String datePattern){  
	  try{  
	   dateFormat  = new SimpleDateFormat(datePattern);  
	     
	  }catch(Exception e ){  
	   dateFormat = new SimpleDateFormat(Default_DATE_PATTERN);  
	     
	  }  
	    
	 }  
	 public Object processArrayValue(Object value, JsonConfig jsonConfig) {  
	  return process(value);  
	 }  
	  
	 public Object processObjectValue(String key, Object value,  
	   JsonConfig jsonConfig) {  
	  return process(value);  
	 }  
	 private Object process(Object value){  
	  return dateFormat.format((Date)value);  
	    
	 }
	}  
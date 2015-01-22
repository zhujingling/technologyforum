package techf.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.dom4j.Document;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;


public class XmlUtils {
	private static String filepath;
	static{
		filepath=XmlUtils.class.getClassLoader().getResource("users.xml").getPath();
	}
	public static Document getDocument() throws Exception{
		SAXReader reader=new SAXReader();
		Document document=reader.read(new File(filepath));
		return document;	
	}
	
	public static void writeToXml(Document document) throws IOException{
		OutputFormat outputFormat=new OutputFormat();
		XMLWriter writer=new XMLWriter(new FileOutputStream(filepath),outputFormat);
		writer.write(document);
		
		writer.close();
	}
}

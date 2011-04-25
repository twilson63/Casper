import java.io.*;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.data.JRXmlDataSource;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperExportManager;


public class XmlDataReportProducer {

  public static byte[] compile(String jrxml, String xmldata, String select) {
    try {
      //JasperCompileManager.compileReportToFile("../spec/data/testreport.jrxml");
      //JasperReport jr = JasperCompileManager.compileReport(jrxml);
      ByteArrayInputStream bs_jrxml = new ByteArrayInputStream(jrxml.getBytes());
      ByteArrayInputStream bs_xml = new ByteArrayInputStream(xmldata.getBytes());

      JasperReport jr = JasperCompileManager.compileReport(bs_jrxml);
      JRXmlDataSource ds = new JRXmlDataSource(bs_xml, select);
      JasperPrint jp = JasperFillManager.fillReport(jr, null, ds);
      return JasperExportManager.exportReportToPdf(jp);
    }
    catch (JRException e) {
      e.printStackTrace();
      return null;
    }
  }
}


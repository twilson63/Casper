require 'java'
require 'jasperreports'
# Load Jar and Java Classes
$CLASSPATH << File.join(File.dirname(__FILE__), '..', 'include', 'lib', 'poi-3.6.jar')
$CLASSPATH << File.join(File.dirname(__FILE__), '..', 'include', 'lib', 'commons-digester-1.7.jar')
$CLASSPATH << File.join(File.dirname(__FILE__), '..', 'include', 'lib', 'commons-logging-1.1.1.jar')
$CLASSPATH << File.join(File.dirname(__FILE__), '..', 'include', 'lib', 'commons-collections-2.1.1.jar')
$CLASSPATH << File.join(File.dirname(__FILE__), '..', 'include', 'lib', 'commons-beanutils-1.8.0.jar')
$CLASSPATH << File.join(File.dirname(__FILE__), '..', 'include', 'lib', 'groovy-all-1.7.5.jar')
$CLASSPATH << File.join(File.dirname(__FILE__), '..', 'include', 'lib', 'xalan-2.7.1.jar')
$CLASSPATH << File.join(File.dirname(__FILE__), '..', 'include', 'lib', 'iText-2.1.7.jar')
$CLASSPATH << File.join(File.dirname(__FILE__), '..', 'include', 'dist', 'jasperreports-4.0.1.jar')
$CLASSPATH << File.join(File.dirname(__FILE__), '..', 'include')

# Provide a simple class interface to running a jasper report
class CasperReports

  def compile(jrxml, data, xpath, type)
    String.from_java_bytes(Java::XmlDataReportProducer.compile(jrxml, data, xpath, type))
  end

end
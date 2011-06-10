require 'java'

puts "Compiling Report"
#open('test.pdf', 'wb').write(String.from_java_bytes(Java::XmlDataReportProducer.compile(open("testreport.jrxml").read, open("patients.xml").read), 'pdf'))


require '../lib/casper_reports'
CasperReports.new.compile(open("testreport.jrxml").read, open("patients.xml").read, '/root', 'pdf')

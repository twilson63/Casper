require 'java'

puts "Compiling Report"


open('test.pdf', 'wb').write(String.from_java_bytes(Java::XmlDataReportProducer.compile(open("testreport.jrxml").read, open("patients.xml").read)))

# open('test.pdf', 'wb').write(
#
#
# )

require 'spec_helper'

describe CasperReports do

  it 'compiles jasper report as pdf export type' do
    jrxml = open(File.join(File.dirname(__FILE__), 'data','testreport.jrxml')).read
    xmldata = open(File.join(File.dirname(__FILE__), 'data','patients.xml')).read
    #open('test.pdf', 'wb').write subject.compile(jrxml, xmldata, '//patient')
    subject.compile(jrxml, xmldata, '//patient', 'pdf').length.should == 1613
  end
  
  it 'compiles jasper report as xls export type' do
    jrxml = open(File.join(File.dirname(__FILE__), 'data','testreport.jrxml')).read
    xmldata = open(File.join(File.dirname(__FILE__), 'data','patients.xml')).read
    #open('test.pdf', 'wb').write subject.compile(jrxml, xmldata, '//patient')
    subject.compile(jrxml, xmldata, '//patient', 'xls').length.should == 6144
  end
  
end
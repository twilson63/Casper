# Casper

Is a jruby library that takes a jrxml document, a xmldocument, and a xpath selection string, to create a pdf report.

# Input

* JasperReport Template or jrxml file
* Xml Data
* XPath Selection

# Process

Casper will use the JasperReports library to compile and return a pdf.

# Output

A pdf document in string of bytes

# Example

movie_jrxml = open('moviereport.jrxml').read
movies = open('movies.xml').read

pdf_string = Casper.new.compile(movie_jrxml, movies, '//movie')
open('movie.pdf', 'wb').write(pdf_string)


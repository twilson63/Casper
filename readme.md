# Casper

(Still in Development Mode...)

Is a jruby library that takes a jrxml document, a xmldocument, a xpath selection string and a export type to create a pdf/xls report.

# Requirements

This gem requires jruby > 1.6.0

# Install

``` ruby
gem install casperreports
```

# Input

* JasperReport Template or jrxml file
* Xml Data
* XPath Selection
* Export type

# Process

Casper will use the JasperReports library to compile and return a pdf.

# Output

A pdf/xls document in string of bytes (streaming)

# Usage Examples

``` ruby
movie_jrxml = open('moviereport.jrxml').read
movies = open('movies.xml').read

pdf_string = Casper.new.compile(movie_jrxml, movies, '//movie', 'pdf')
open('movie.pdf', 'wb').write(pdf_string)

xls_string = Casper.new.compile(movie_jrxml, movies, '//movie', 'xls')
open('movie.pdf', 'wb').write(xla_string)
```
# import the XML file
[xml]$xdata = Get-Content 'C:\LTI training\PS\d5\books.xml'
$xdata.GetType()


$xdata
$xdata.catalog
$xdata.catalog.book

# Fetching information from the books.xml.
$xdata.catalog.book | Format-Table
$xdata.catalog.book | Format-Table -AutoSize -Wrap
$xdata.catalog.book | Select-Object id
$xdata.catalog.book | Select-Object id, title
$xdata.catalog.book | Select-Object id, title, price
$xdata.catalog.book | Select-Object id, title, price, author
$xdata.catalog.book | Select-Object id, title, price, author, description
$xdata.catalog.book | Select-Object id, title, price, author, description | Format-Table
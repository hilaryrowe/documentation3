The PDF documentation that Oxygen/DITA generates has a clean but unbranded styling.

The code in this folder allows for the site to be styled as a website is, using HTML and CSS.
A Print PDF can then be generated from this HTML.
If Acrobat or PrinceXML is used to generate the PDf from HTML, then the TOC links will work internally in the PDF.

# To use:

## 1. Generate XHTML output
This repo (the parent folder above this one) contains DITA XML files.  Using Oxygen XML or another DITA capable generator, run a transform on these docs into XHTML.

## 2. Drop in files
The XHTML transform in step 1 will generate a folder full of web files, one of which is index.html.  The three files inside this /code folder need to go into that folder as siblings of that index.html file.  Drop these files into that folder:
 - bandita.js
 - sm.css
 - smlogo.svg

## 3. Add script to index.html
Open the index.html file referenced in step 2 above, and make this the last thing inside the <body></body> tag:

```html
<script src="bandita.js"></script>
```
## 4. Host the files with a webserver; go to index.html in a browser.
It will only work when hosted in a webserver.

# What is it?

Minimal plumbing to convert markdown to [reveal.js] and/or PDF slides.


## Dependencies

Depends on [pandoc] and make. pandoc 1.11.1 or later is recommended. To
generate PDFs, pdflatex is required - Get a [LaTex] distribution, such as
[TeXLive], [proTeXt], or [MacTeX]. (BasicTeX is sufficient.)

[reveal.js]: http://lab.hakim.se/reveal-js/
[pandoc]: http://johnmacfarlane.net/pandoc/
[LaTeX]: http://www.latex-project.org/
[TeXLive]: http://www.tug.org/texlive/
[proTeXt]: http://www.tug.org/protext/
[MacTeX]: http://tug.org/mactex/morepackages.html


## Usage

To install an empty presentation, run `./markdown_to_reveal DEST_DIR`.
This will copy reveal.js, a Makefile, and a short example presentation
to the destination.

To generate a presentation, edit `slides.md` (content) and/or
`template.revealjs` (theme and some settings), then run `make html` or
`make pdf` inside the presentation directory.


## Customization

The reveal.js presentations are defined via CSS themes in
`reveal_js/css/theme/`, and the beamer PDF presentations are customized
via LaTeX beamer style files.

No attempt is made to connect the reveal.js-based slides' style to the
LaTeX PDF slides' style, though if you want PDF slides that look like
the reveal.js ones, it is possible to [export reveal.js to PDF][rjpdf].

[rjpdf]: https://github.com/hakimel/reveal.js#pdf-export


## Credits

Creative-Commons garlic scapes image by [Jeanette Irwin][JI].

[JI]: http://www.flickr.com/photos/jeanetteirwin/526541580/

reveal.js is copyright 2013 [Hakim El Hattab](http://hakim.se).


## License

While having a licenese for what is essentially a short Makefile is
a bit silly, it is released under the ISC license.

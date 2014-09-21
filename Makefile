# Copyright (c) 2014 Scott Vokes <vokes.s@gmail.com>
# 
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
# 
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

TEMPLATE=		template.revealjs

# LaTeX beamer theme (for PDF)
BEAMER_THEME=		Warsaw

# Options for reveal.js presentations
PANDOC_OPTIONS_HTML=	--section-divs -t html5 -s --template ${TEMPLATE}

# Options for PDFs
PANDOC_OPTIONS_PDF=	-t beamer -V theme:${BEAMER_THEME}

# Base filename for slides.{md,html,pdf}
SLIDES=	slides

PANDOC_OPTIONS=		--section-divs -t html5 -s --template ${TEMPLATE}

all: html

html: ${SLIDES}.html
pdf: ${SLIDES}.pdf

${SLIDES}.html: ${SLIDES}.md ${TEMPLATE} Makefile
	pandoc ${PANDOC_OPTIONS_HTML} -o $@ ${SLIDES}.md

# Requires pdflatex
${SLIDES}.pdf: ${SLIDES}.md ${TEMPLATE} Makefile
	pandoc ${PANDOC_OPTIONS_PDF} -o $@ ${SLIDES}.md

clean:
	rm -f ${SLIDES}.html ${SLIDES}.pdf

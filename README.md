# Soton Beamer Style

A modern Beamer theme with simple customisation and simple dependencies.

## Usage

Simply copy `beamerthemeSoton.sty` into your project directory and then use `\usetheme{Soton}` to select the theme.

## Customisation

### Supervisor

An additional `supervisors` field can be added below the `author` on the title page.

```latex
\supervisors[Pre-Text]{Supervisor 1, Supervisor 2, etc.}
```

This then produces a label with the pre-text followed by the supervisor(s). E.g. `\supervisors[Supervised by]{Dr A Beta, Dr G Delta, \& Dr E Zeta}` would produce "Supervised by Dr A Beta, Dr G Delta, & Dr E Zeta".

### Colours

The colour theme defaults to that of the [University of Southampton](https://southampton.ac.uk).

The primary colour can be selected using the command

```latex
\setColourScheme{R val}{G val}{B val}
```

This will replace the primary colour and automatically recalculate other colours (aside from the background colour).

### Logos

Logos can be inserted into the title area of each slide, and three logos can be placed on the main title page.

To add a small logo to the top right of the title bar for each slide

```latex
\setLogo{img.pdf}
```

To add larger images to the title slide

```latex
\setTitleLogoRight{img1.pdf}
\setTitleLogoCentre{img2.pdf}
\setTitleLogoLeft{img3.pdf}
```

### Footer

The progress bar and the page numbers can be easily disabled in your presentation

```latex
\setProgressBarOff
\setFrameNumbersOff
```

## Minimum Working Example

An example can be seen in the `beamer-example` directory

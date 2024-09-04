# run the global .Rprofile if it exists (you may configure blogdown options
# there, too, so they apply to any blogdown projects)
if (file.exists("~/.Rprofile")) {
  base::sys.source("~/.Rprofile", envir = environment())
}

# a few sample options to customize the behavior of blogdown; for more options,
# see https://bookdown.org/yihui/blogdown/global-options.html
options(
  # to automatically serve the site on RStudio startup, set this option to TRUE
  blogdown.serve_site.startup = FALSE,
  # to disable knitting Rmd files on save, set this option to FALSE
  blogdown.knit.on_save = FALSE,
  # full markdown mode
  blogdown.method = "markdown", 
  blogdown.author = "José Luis Texcalac Sangrador",
  blogdown.ext = ".Rmarkdown",
  # la siguiente línea era del blog 2023
  # blogdown.subdir = "sesiones"
  # La siguiente línea sustituye a la previa del 2023
  blogdown.subdir = "clases"
)

# pin Hugo version
options(blogdown.hugo.version = "0.86.0")

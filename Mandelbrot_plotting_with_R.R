install.packages("mandelbrot")
library(mandelbrot)


view <- mandelbrot(xlim = c(-2, 2),
                   ylim = c(-2, 2), iter = 500) #parameters in ylim and xlim can be any number,
                                                # recommended range to pick numbers is c(-2, 2)

spectral <- RColorBrewer::brewer.pal(11, "Spectral")
cols <- mandelbrot_palette(spectral, fold = FALSE)
plot(view, col = cols, transform = "inv")

# simple palettes might need folds / reps to look good
blues <- RColorBrewer::brewer.pal(9, "Blues")
cols <- mandelbrot_palette(blues, in_set = "white",
                           fold = TRUE, reps = 2)
plot(view, col = cols, transform = "log") 


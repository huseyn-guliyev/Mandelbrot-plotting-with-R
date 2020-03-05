view <- mandelbrot(xlim = c(-0.8438146, -0.8226294),
                   ylim = c(0.1963144, 0.2174996), iter = 500)

spectral <- RColorBrewer::brewer.pal(11, "Spectral")
cols <- mandelbrot_palette(spectral, fold = FALSE)
plot(view, col = cols, transform = "inv")

# simple palettes might need folds / reps to look good
blues <- RColorBrewer::brewer.pal(9, "Blues")
cols <- mandelbrot_palette(blues, in_set = "white",
                           fold = TRUE, reps = 2)
plot(view, col = cols, transform = "log") 

#' A dummy function to test import from inst/python
#' No argument necessary
#' @importFrom reticulate import_from_path
#' @export
gan_dummy <- function() {
    python_path <- system.file("python", package = "gan.rtorch")
    gan <- import_from_path("gan", path = python_path)
    gan$gan_functions$dummy()
}

#' The fivenum function from R
#' It works the same as in R. Applies to vectors and matrices.
#' @param arr this could an array, matrix or vector
#' @importFrom reticulate import_from_path
#' @export
py_fivenum <- function(arr) {
    # import fivenum from
    python_path <- system.file("python", package = "gan.rtorch")
    gan <- import_from_path("gan", path = python_path)
    gan$py_functions$fivenum(arr)
}

#' Test the train funcion in the GAN
#' No parameters necessary
#' @param epochs number of epochs
#' @importFrom reticulate import_from_path
#' @export
gan_train <- function(epochs = 500) {
    python_path <- system.file("python", package = "gan.rtorch")
    gan <- import_from_path("gan", path = python_path)
    gan$gan_noplot$train(as.integer(epochs))
}

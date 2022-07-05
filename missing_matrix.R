library(explor)

data <- data.frame(
  SBP = c(-3, -1, -1, 1, 1, 3),
  DBP = c(-4, -2, 0, 0, 2, 4)
)

data_pca <- prcomp(data)
data_loadings <- pca$rotation
data_scores <- pca$x

missing_data <- data.frame(
  SBP = c(-3, NA, -1, 1, 1, NA),
  DBP = c(NA, -2, 0, NA, 2, 4)
)

# Let M=1

initialisation_data <- data.frame(
  SBP = c(-3, -0.5, -1, 1, 1, -0.5),
  DBP = c(1, -2, 0, 1, 2, 4)
)

initialisation_data_pca <- prcomp(initialisation_data)
initialisation_data_loadings <- initialisation_data_pca$rotation
initialisation_data_loadings_inverse <- solve(initialisation_data_loadings)["PC1",,drop = FALSE]
initialisation_data_scores <- initialisation_data_pca$x[,"PC1",drop = FALSE]

estimated_data <- initialisation_data_scores %*% initialisation_data_loadings_inverse

objective_1 <- sum((missing_data - estimated_data_1)^2, na.rm = TRUE)

iteration_2_data <- data.frame(
  SBP = c(-3, -0.61, -1, 1, 1, 0.61),
  DBP = c(-0.51, -2, 0, 0.3, 2, 4)
)

iteration_2_pca <- prcomp(iteration_2_data)
iteration_2_loadings <- iteration_2_pca$rotation
iteration_2_loadings_inverse <- solve(iteration_2_loadings)["PC1",,drop = FALSE]
iteration_2_scores <- iteration_2_pca$x[,"PC1",drop = FALSE]

estimated_data_2 <- iteration_2_scores %*% iteration_2_loadings_inverse

objective_2 <- sum((missing_data - estimated_data_2)^2, na.rm = TRUE)

iteration_3_data <- data.frame(
  SBP = c(-3, -1.22, -1, 1, 1, 1.71),
  DBP = c(-2.01, -2, 0, 0.33, 2, 4)
)

iteration_3_pca <- prcomp(iteration_3_data)
iteration_3_loadings <- iteration_3_pca$rotation
iteration_3_loadings_inverse <- solve(iteration_3_loadings)["PC1",,drop = FALSE]
iteration_3_scores <- iteration_3_pca$x[,"PC1",drop = FALSE]

estimated_data_3 <- iteration_3_scores %*% iteration_3_loadings_inverse
objective_3 <- sum((missing_data - estimated_data_3)^2, na.rm = TRUE)

iteration_4_data <- data.frame(
  SBP = c(-3, -1.48, -1, 1, 1, 2.41),
  DBP = c(-2.86, -2, 0, 0.56, 2, 4)
)

iteration_4_pca <- prcomp(iteration_4_data)
iteration_4_loadings <- iteration_4_pca$rotation
iteration_4_loadings_inverse <- solve(iteration_4_loadings)["PC1",,drop = FALSE]
iteration_4_scores <- iteration_4_pca$x[,"PC1",drop = FALSE]

estimated_data_4 <- iteration_4_scores %*% iteration_4_loadings_inverse
objective_4 <- sum((missing_data - estimated_data_4)^2, na.rm = TRUE)

iteration_5_data <- data.frame(
  SBP = c(-3, -1.6, -1, 1, 1, 2.77),
  DBP = c(-3.32, -2, 0, 0.74, 2, 4)
)

iteration_5_pca <- prcomp(iteration_5_data)
iteration_5_loadings <- iteration_5_pca$rotation
iteration_5_loadings_inverse <- solve(iteration_5_loadings)["PC1",,drop = FALSE]
iteration_5_scores <- iteration_5_pca$x[,"PC1",drop = FALSE]

estimated_data_5 <- iteration_5_scores %*% iteration_5_loadings_inverse
objective_5 <- sum((missing_data - estimated_data_5)^2, na.rm = TRUE)

iteration_6_data <- data.frame(
  SBP = c(-3, -1.65, -1, 1, 1, 2.94),
  DBP = c(-3.58, -2, 0, 0.86, 2, 4)
)

iteration_6_pca <- prcomp(iteration_6_data)
iteration_6_loadings <- iteration_6_pca$rotation
iteration_6_loadings_inverse <- solve(iteration_6_loadings)["PC1",,drop = FALSE]
iteration_6_scores <- iteration_6_pca$x[,"PC1",drop = FALSE]

estimated_data_6 <- iteration_6_scores %*% iteration_6_loadings_inverse
objective_6 <- sum((missing_data - estimated_data_6)^2, na.rm = TRUE)

iteration_7_data <- data.frame(
  SBP = c(-3, -1.66, -1, 1, 1, 3.01),
  DBP = c(-3.74, -2, 0, 0.94, 2, 4)
)

iteration_7_pca <- prcomp(iteration_7_data)
iteration_7_loadings <- iteration_7_pca$rotation
iteration_7_loadings_inverse <- solve(iteration_7_loadings)["PC1",,drop = FALSE]
iteration_7_scores <- iteration_7_pca$x[,"PC1",drop = FALSE]

estimated_data_7 <- iteration_7_scores %*% iteration_7_loadings_inverse
objective_7 <- sum((missing_data - estimated_data_7)^2, na.rm = TRUE)

iteration_8_data <- data.frame(
  SBP = c(-3, -1.65, -1, 1, 1, 3.87),
  DBP = c(-3.85, -2, 0, 1, 2, 4)
)

iteration_8_pca <- prcomp(iteration_8_data)
iteration_8_loadings <- iteration_8_pca$rotation
iteration_8_loadings_inverse <- solve(iteration_8_loadings)["PC1",,drop = FALSE]
iteration_8_scores <- iteration_8_pca$x[,"PC1",drop = FALSE]

estimated_data_8 <- iteration_8_scores %*% iteration_8_loadings_inverse
objective_8 <- sum((missing_data - estimated_data_8)^2, na.rm = TRUE)


iteration_8_data <- data.frame(
  SBP = c(-3, -1.65, -1, 1, 1, 3.87),
  DBP = c(-3.85, -2, 0, 1, 2, 4)
)

data <- data.frame(
  SBP = c(-3, -1, -1, 1, 1, 3),
  DBP = c(-4, -2, 0, 0, 2, 4)
)





## ----sl-ex1-setup, eval=FALSE-------------------------------------------------
## library(data.table)
## library(readr)
## library(origami)
## library(sl3)
## 
## db_data <- url(
##   "https://raw.githubusercontent.com/benkeser/sllecture/master/chspred.csv"
## )
## chspred <- read_csv(file = db_data, col_names = TRUE)
## 


## ----sl-ex1-1, eval=FALSE-----------------------------------------------------
## chspred_task <- make_sl3_Task(
##   data = chspred, covariates = head(colnames(chspred), -1), outcome = "mi"
## )


## ----sl-ex1-2, eval=FALSE-----------------------------------------------------
## lasso_learner <- Lrnr_glmnet$new(alpha = 1)
## ridge_learner <- Lrnr_glmnet$new(alpha = 0)
## enet_learner <- Lrnr_glmnet$new(alpha = 0.5)
## glm_fast_learner <- Lrnr_glm_fast$new()
## ranger_learner <- Lrnr_ranger$new()
## svm_learner <- Lrnr_svm$new()
## xgb_learner <- Lrnr_xgboost$new()
## # curated_glm_learner uses formula = "mi ~ smoke + beta + waist"
## curated_glm_learner <- Lrnr_glm_fast$new(covariates = c("smoke, beta, waist"))
## mean_learner <- Lrnr_mean$new() # That is one mean learner!


## ----sl-ex1-3, eval=FALSE-----------------------------------------------------
## screen_cor <- make_learner(Lrnr_screener_correlation)
## glm_pipeline <- make_learner(Pipeline, screen_cor, glm_fast_learner)


## ----sl-ex1-4, eval=FALSE-----------------------------------------------------
## # stack learners together
## stack <- make_learner(
##   Stack,
##   glm_pipeline, lasso_learner, ridge_learner, enet_learner,
##   curated_glm_learner, mean_learner, glm_fast_learner,
##   ranger_learner, svm_learner, xgb_learner
## )
## 
## # make SL with default metalearner
## sl <- Lrnr_sl$new(stack)
## 
## # train SL
## sl_fit <- sl$train(chspred_task)


## ----sl-ex1-5, eval=FALSE-----------------------------------------------------
## sl_fit$print()


## ----sl-ex1-6, eval=FALSE-----------------------------------------------------
## CVsl <- CV_lrnr_sl(sl_fit, chspred_task, loss_loglik_binomial)
## CVsl


## ----sl-ex1-7, eval=FALSE-----------------------------------------------------
## varimp <- importance(sl_fit, type = "permute")
## varimp %>%
##   importance_plot(
##     main = "sl3 Variable Importance for Myocardial Infarction Prediction"
##   )


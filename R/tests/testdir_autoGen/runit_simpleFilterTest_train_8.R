            ##
            # Author: Autogenerated on 2013-12-18 17:01:19
            # gitHash: 2581a0dfa12a51892283830529a5126ea49f0cb9
            # SEED: 2481425483200553751
            ##
            setwd(normalizePath(dirname(R.utils::commandArgs(asValues=TRUE)$"f")))
            source('../findNSourceUtils.R') 
            simpleFilterTest_train_8 <- function(conn) {
                Log.info("A munge-task R unit test on data <train> testing the functional unit <<> ")
                Log.info("Uploading train")
                hex <- h2o.uploadFile(conn, locate("../../smalldata/chess/chess_2x2x500/R/train.csv"), "rtrain.hex")
                Log.info("Filtering out rows by < from dataset train and column \"x\" using value 0.723176076452")
                     filterHex <- hex[hex[,c("x")] < 0.723176076452,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"x" < 0.723176076452,]
                    Log.info("Filtering out rows by < from dataset train and column \"y\" using value 1.56438648036, and also subsetting columns.")
                     filterHex <- hex[hex[,c("y")] < 1.56438648036, c("y")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("y")] < 1.56438648036, c("color","x","y")]
            testEnd()
            }
            doTest("simpleFilterTest_ on data train unit= <", simpleFilterTest_train_8)

.libPaths(c("/fast/home/y/ykazci/R/x86_64-unknown-linux-gnu-library/4.3",
            "/gnu/store/bzh30ly24yd2h3n3y4idd7kd485hc7sa-profile/site-library"  , 
            .libPaths()))

.libPaths()

path_dir <- 
  "/fast/AG_Bunina/Yusuf/Project_Endothelial_and_Stroke/Datasets/Chromatin_and_Gene_Exp/2023_Zhu_et_al/Zhu_et_al_2023/Downloaded_files/GSE204684/ATAC"
  
count_matrix <- 
  readRDS(file.path(path_dir, "GSE204682_count_matrix_unzipped.RDS"))

library(tidyverse)

count_matrix %>% head()

count_matrix %>% class()

writeMM(obj = count_matrix, 
        file = file.path(path_dir, "GSE204682_ATAC_Peak_count_matrix.MM"))

count_matrix <- 
  readMM(file = file.path(path_dir, "GSE204682_ATAC_Peak_count_matrix.MM"))

count_matrix

row_names <- 
  rownames(count_matrix)

col_names <- 
  colnames(count_matrix)

row_names %>% head()

col_names %>% head()

row_names %>% length()

col_names %>% length()

count_matrix %>% dim()

row_names %>% class()

col_names %>% class()

write.table(row_names, 
            file = file.path(path_dir, 
                             "my_row_names.txt"), 
            row.names = FALSE, 
            col.names = FALSE, 
            quote = FALSE)

write.table(col_names, 
            file = file.path(path_dir, 
                             "my_col_names.txt"), 
            row.names = FALSE, 
            col.names = FALSE, 
            quote = FALSE)

sessionInfo()

# R version 4.3.2 (2023-10-31)
# Platform: x86_64-unknown-linux-gnu (64-bit)
# 
# Matrix products: default
# BLAS/LAPACK: /gnu/store/in3yw5xrghzmxn29i0mmz5zhpd748mas-openblas-0.3.20/lib/libopenblasp-r0.3.20.so;  LAPACK version 3.9.0
# 
# locale:
#   [1] LC_CTYPE=en_US.utf-8       LC_NUMERIC=C               LC_TIME=en_US.utf-8       
# [4] LC_COLLATE=en_US.utf-8     LC_MONETARY=en_US.utf-8    LC_MESSAGES=en_US.utf-8   
# [7] LC_PAPER=en_US.utf-8       LC_NAME=C                  LC_ADDRESS=C              
# [10] LC_TELEPHONE=C             LC_MEASUREMENT=en_US.utf-8 LC_IDENTIFICATION=C       
# 
# time zone: NA
# tzcode source: system (glibc)
# 
# attached base packages:
#   [1] stats     graphics  grDevices utils     datasets  methods   base     
# 
# other attached packages:
#   [1] lubridate_1.9.3 forcats_1.0.0   stringr_1.5.1   dplyr_1.1.4     purrr_1.0.2    
# [6] readr_2.1.5     tidyr_1.3.1     tibble_3.2.1    ggplot2_3.4.4   tidyverse_2.0.0
# [11] Matrix_1.6-4   
# 
# loaded via a namespace (and not attached):
#   [1] vctrs_0.6.5       cli_3.6.2         rlang_1.1.3       stringi_1.8.3    
# [5] generics_0.1.3    glue_1.7.0        colorspace_2.1-0  hms_1.1.3        
# [9] scales_1.3.0      fansi_1.0.6       grid_4.3.2        munsell_0.5.0    
# [13] tzdb_0.4.0        lifecycle_1.0.4   compiler_4.3.2    timechange_0.3.0 
# [17] pkgconfig_2.0.3   rstudioapi_0.15.0 lattice_0.22-5    R6_2.5.1         
# [21] tidyselect_1.2.0  utf8_1.2.4        pillar_1.9.0      magrittr_2.0.3   
# [25] tools_4.3.2       withr_3.0.0       gtable_0.3.4

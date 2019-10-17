# create a copy of the drrones vectors that can be imported into the vector viewer at
# http://projector.tensorflow.org/
# follows Risch and Krestel Learning Patent Speak data example in data/fasttext

drones_vec <- read_table2("data/fasttext/drones_vec.tsv", col_names = FALSE)


drones_vec_vecs <- drones_vec %>% 
  select(-X1, -X102)

write.table(drones_vec_vecs, file='drones_vec.tsv', quote=FALSE, sep='\t', col.names = FALSE)

drones_vec %>% 
  rename(word = X1) %>% 
  select(word) %>% 
  write_delim("data/fasttext/drones_vec_meta.tsv", delim = "/t", col_names = FALSE)

# the above is adding a line somehwo and adding an NA column at the end on import

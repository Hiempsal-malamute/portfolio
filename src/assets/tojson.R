
init <- rio::import("creations.csv") 

jsonlite::write_json(init,"creations.json",pretty=T)


## ---------------------------------------------------------

pacman::p_load(magick)

files <- list.files("img/")

for(f in files) {
  print(paste0("ouverture : ",f))
  img <- image_read(paste0("img/",f))  
  print(paste0("redimensionnement : ",f))
  img_resized <- image_resize(img,geometry_size_percent(30))
  print(paste0("écriture : ",f))
  image_write(img_resized,
              paste0("thumbnail/thumb_",f))
}


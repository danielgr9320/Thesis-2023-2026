
run("Flip Vertically", "stack");
run("Size...", "width=621 constrain average interpolation=Bilinear");
run("Canvas Size...", "width=621 height=1147 position=Top-Center");
Stack.setXUnit("microns");
run("Properties...", "channels=2 frames=1 pixel_width=.798 pixel_height=.798 voxel_depth=2");
run("Split Channels");
run("Tile");
selectImage(1)
run("Stack Sorter");
run("Reverse");
selectImage(2)
run("Stack Sorter");
run("Reverse");

selectImage(1);
rename(substring(getTitle(),3,14));
run("Nrrd ... ", "nrrd=[" + "/Volumes/CSDG/Daniel_Gray/MAPmap/MAPmap_analysis/forCMTK/" + getTitle() + "_02.nrrd]");

selectImage(2);
rename(substring(getTitle(),3,14));
run("Nrrd ... ", "nrrd=[" + "/Volumes/CSDG/Daniel_Gray/MAPmap/MAPmap_analysis/forCMTK/" + getTitle() + "_01.nrrd]");
run("Close All");
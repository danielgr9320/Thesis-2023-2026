selectImage(1);
run("Stack to RGB", "slices keep");
selectImage(2);
run("Reslice [/]...", "output=1.000 start=Right rotate avoid");
selectImage(2);
run("Z Project...", "projection=[Sum Slices]");
selectImage(3);
run("Z Project...", "projection=[Sum Slices]");
selectImage(5);
run("Size...", "width=168 height=679 depth=3 average interpolation=Bilinear");
selectImage(4)
im1 = getTitle();
selectImage(5)
im2 = getTitle();
run("Combine...", "stack1=["+im1+"] stack2=["+im2+"]");
run("Invert");
run("HSB Stack");
run("Macro...", "code=v=(v+128)%256 slice");
run("RGB Color");
outputDir = getDirectory("Select Output Directory");
saveAs("TIFF", outputDir + im1+"combination_output.tif");
run("Close All");


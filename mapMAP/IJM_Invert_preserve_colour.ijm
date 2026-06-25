im1 = getTitle();
run("Invert");
run("HSB Stack");
run("Macro...", "code=v=(v+128)%256 slice");
run("RGB Color");
outputDir = getDirectory("Select Output Directory");
saveAs("TIFF", outputDir + im1+"combination_output.tif");
run("Close All");
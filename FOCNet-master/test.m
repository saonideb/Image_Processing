folder = '/Users/saonideb/Downloads/DB1_A';
folder2 = dir('/Users/saonideb/Downloads/DB1_A');
for i=1:(length(folder2)-1)
    Directory = dir(fullfile(folder, '/*.jpg'));
    fullFileName = fullfile(Directory(i).folder, Directory(i).name);
    picture = imread(fullFileName);
    imshow(picture);
end
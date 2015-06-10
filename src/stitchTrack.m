function stitchTrack()

list = dir('.');
ls = size(list);

trackArr = zeros(0,2);

for i=1:ls(1)
    if numel(regexp(list(i).name,'track.*\.mat')) > 0
	disp(list(i).name);

	load(list(i).name);
	trackArr = cat(1,trackArr,track);
	clear track;
    end
end

save('finalTrack.mat','trackArr');
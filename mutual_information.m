function [maximum,index,mutual_info] = mutual_information(A,B,gap)

% Mutual Information
tar = target_im(A,B,0.0625);
tar = (tar-min(tar(:)))/(max(tar(:))-min(tar(:)));
mutual_info = [];
for i=-0.5:gap:0.5
    disp(i)
    test = target_im(1,0,i);
    test = (test-min(test(:)))/(max(test(:))-min(test(:)));
    info_temp = mi(test,tar);
    mutual_info = [mutual_info,info_temp];
end
[maximum,index] = max(mutual_info);

end




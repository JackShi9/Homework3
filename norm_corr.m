function [maximum,index,ncorr] =  norm_corr(A,B,gap)

% Normalized Correlation 
tar = target_im(A,B,0.0625);
tar = (tar-min(tar(:)))/(max(tar(:))-min(tar(:)));
ncorr = [];
for i=-0.5:gap:0.5
    disp(i)
    test = target_im(1,0,i);
    test = (test-min(test(:)))/(max(test(:))-min(test(:)));
    ncorr_temp = max(max(normxcorr2(test,tar)));
    ncorr = [ncorr,ncorr_temp];
end
[maximum,index] = max(ncorr);
end


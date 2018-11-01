function [minimum,index,quan_dist] = deri_test(A,B,gap)

tar = target_im(A,B,0.0625);
tar = (tar-min(tar(:)))/(max(tar(:))-min(tar(:)));
[mag_tar_mat,~,~] = derivative(tar);
mag_tar = [];
for i=54:74
    mag_tar = [mag_tar,mag_tar_mat(54,i)];
    mag_tar = [mag_tar,mag_tar_mat(i,54)];
    mag_tar = [mag_tar,mag_tar_mat(74,i)];
    mag_tar = [mag_tar,mag_tar_mat(i,74)];
end
mag_tar = sort(mag_tar);
quan_tar = quantile(mag_tar,0:0.1:1);

quan_dist = [];
for i=-0.5:gap:0.5
    disp(i)
    test = target_im(1,0,i);
    test = (test-min(test(:)))/(max(test(:))-min(test(:)));
    [test_mat,~,~] = derivative(test); 
    mag_test = [];
    for j=54:74
        mag_test = [mag_test,test_mat(54,j)];
        mag_test = [mag_test,test_mat(j,54)];
        mag_test = [mag_test,test_mat(74,j)];
        mag_test = [mag_test,test_mat(j,74)];
    end
    mag_test = sort(mag_test);
    quan_test = quantile(mag_test,0:0.1:1);
    quan_dist = [quan_dist,sum((quan_tar-quan_test).^2)];
end
[minimum,index] = min(quan_dist);
end


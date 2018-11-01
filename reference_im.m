% Create reference image
function [ref_image] = reference_im(sigma,std)
ref_image = zeros(128,128);
for i = 1:128
    for j = 1:128
        vec = [j,128-i];
        theta = acos(dot(vec-[64.5,64.5],std)/(norm(vec-[64.5,64.5])*norm(std)));
        ref_image(i,j) = (1/(1+abs(theta)^2))*cos(8*pi*theta);
    end
end
ref_image = imgaussfilt(ref_image,sigma);
end





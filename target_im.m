function [tar_im] = target_im(A,B,radian)
std = [cos(radian),sin(radian)];
tar_im  = reference_im(2,std);
tar_im = tar_im*A + B;
end


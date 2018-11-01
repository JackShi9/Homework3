
%[a,b,ncorr1] = mutual_information(1,0,0.001);
%[c,d,ncorr2] = mutual_information(1000,0,0.001);
%[e,f,ncorr3] = mutual_information(1000,1000,0.001);
%[g,h,ncorr4] = mutual_information(-500,1000,0.001);

tar = target_im(-500,1000,0.0625);
imagesc(tar)


%[min,index,ncorr_deri]=deri_test(1,0,0.001);








%[a,b] = mutual_information(1000,0,0.001);
function [dis,indeies] = ind(v,vectors,words,n)
lv = sqrt(v' * v);
vector_length = sqrt(sum(vectors.*vectors,2));
dis = vectors*v ./ vector_length / lv;
[dis, indeies] = sort(dis, 'descend');
indeiesmin = indeies(1:n);
outcome = char(words{indeiesmin});
display(outcome);

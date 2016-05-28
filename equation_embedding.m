load('G:/UCHI/37790/homework/project/data&freq.mat')
%%
[v1,v2,v3] = optim(mb,mm,mh,1e-4);
%%
[dis,indeies] = ind(v1,vectors,words,20);
r = [];
r = [r;ev('formula',words,vocab_size,dis,indeies)];
r = [r;ev('bayes',words,vocab_size,dis,indeies)];
r = [r;ev('equation',words,vocab_size,dis,indeies)];
r = [r;ev('event',words,vocab_size,dis,indeies)];
r = [r;ev('theorem',words,vocab_size,dis,indeies)];
r = [r;ev('mathematic',words,vocab_size,dis,indeies)];
r = [r;ev('a',words,vocab_size,dis,indeies)];
r = [r;ev('b',words,vocab_size,dis,indeies)];
r = [r;ev('probability',words,vocab_size,dis,indeies)];
r = [r;ev('statistic',words,vocab_size,dis,indeies)];
r = [r;ev('given',words,vocab_size,dis,indeies)];
r = [r;ev('condition',words,vocab_size,dis,indeies)];
r = [r;ev('prior',words,vocab_size,dis,indeies)];
r = [r;ev('posterior',words,vocab_size,dis,indeies)];
r = [r;ev('sample',words,vocab_size,dis,indeies)];
r = [r;ev('estimate',words,vocab_size,dis,indeies)];
r(r==400000)=[];
mean(r)
min(r)
%
[dis,indeies] = ind(v1,freq_v,freq,20);
r = [];
r = [r;ev('formula',freq,20000,dis,indeies)];
r = [r;ev('equation',freq,20000,dis,indeies)];
r = [r;ev('event',freq,20000,dis,indeies)];
r = [r;ev('theorem',freq,20000,dis,indeies)];
r = [r;ev('math',freq,20000,dis,indeies)];
r = [r;ev('a',freq,20000,dis,indeies)];
r = [r;ev('b',freq,20000,dis,indeies)];
r = [r;ev('probability',freq,20000,dis,indeies)];
r = [r;ev('statistics',freq,20000,dis,indeies)];
r = [r;ev('given',freq,20000,dis,indeies)];
r = [r;ev('condition',freq,20000,dis,indeies)];
r = [r;ev('prior',freq,20000,dis,indeies)];
r = [r;ev('post',freq,20000,dis,indeies)];
r = [r;ev('sample',freq,20000,dis,indeies)];
r = [r;ev('estimate',freq,20000,dis,indeies)]; 
r(r==20000)=[];
mean(r)
min(r)
%%
[dis,indeies] = ind(v2,vectors,words,20);
r = [];
r = [r;ev('formula',words,vocab_size,dis,indeies)];
r = [r;ev('law',words,vocab_size,dis,indeies)];
r = [r;ev('equation',words,vocab_size,dis,indeies)];
r = [r;ev('equivalence',words,vocab_size,dis,indeies)];
r = [r;ev('energy',words,vocab_size,dis,indeies)];
r = [r;ev('mass',words,vocab_size,dis,indeies)];
r = [r;ev('c',words,vocab_size,dis,indeies)];
r = [r;ev('e',words,vocab_size,dis,indeies)];
r = [r;ev('m',words,vocab_size,dis,indeies)];
r = [r;ev('physics',words,vocab_size,dis,indeies)];
r = [r;ev('relativity',words,vocab_size,dis,indeies)]; 
r = [r;ev('object',words,vocab_size,dis,indeies)];
r = [r;ev('atom',words,vocab_size,dis,indeies)];
r = [r;ev('particle',words,vocab_size,dis,indeies)];
r = [r;ev('einstein',words,vocab_size,dis,indeies)];
r = [r;ev('amount',words,vocab_size,dis,indeies)];
r = [r;ev('fission',words,vocab_size,dis,indeies)];
r = [r;ev('nuclear',words,vocab_size,dis,indeies)];
r = [r;ev('theory',words,vocab_size,dis,indeies)];
r = [r;ev('light',words,vocab_size,dis,indeies)];
r = [r;ev('velocity',words,vocab_size,dis,indeies)];
r = [r;ev('modern',words,vocab_size,dis,indeies)];
r = [r;ev('science',words,vocab_size,dis,indeies)];
r = [r;ev('relation',words,vocab_size,dis,indeies)];
r(r==400000)=[];
mean(r)
min(r)
%
[dis,indeies] = ind(v2,freq_v,freq,20);
r = [];
r = [r;ev('formula',freq,20000,dis,indeies)];
r = [r;ev('law',freq,20000,dis,indeies)];
r = [r;ev('equation',freq,20000,dis,indeies)];
r = [r;ev('equal',freq,20000,dis,indeies)];
r = [r;ev('energy',freq,20000,dis,indeies)];
r = [r;ev('mass',freq,20000,dis,indeies)];
r = [r;ev('c',freq,20000,dis,indeies)];
r = [r;ev('e',freq,20000,dis,indeies)];
r = [r;ev('m',freq,20000,dis,indeies)];
r = [r;ev('physics',freq,20000,dis,indeies)];
r = [r;ev('relativity',freq,20000,dis,indeies)];
r = [r;ev('object',freq,20000,dis,indeies)];
r = [r;ev('atom',freq,20000,dis,indeies)];
r = [r;ev('particle',freq,20000,dis,indeies)];
r = [r;ev('einstein',freq,20000,dis,indeies)];
r = [r;ev('amount',freq,20000,dis,indeies)]; 
r = [r;ev('fission',freq,20000,dis,indeies)];
r = [r;ev('nuclear',freq,20000,dis,indeies)];
r = [r;ev('theory',freq,20000,dis,indeies)];
r = [r;ev('light',freq,20000,dis,indeies)];
r = [r;ev('velocity',freq,20000,dis,indeies)];
r = [r;ev('modern',freq,20000,dis,indeies)];
r = [r;ev('science',freq,20000,dis,indeies)];
r = [r;ev('relation',freq,20000,dis,indeies)];
r(r==20000)=[];
mean(r)
min(r)
%%
[dis,indeies] = ind(v3,vectors,words,20);
r = [];
r = [r;ev('formula',words,vocab_size,dis,indeies)];
r = [r;ev('water',words,vocab_size,dis,indeies)];
r = [r;ev('equation',words,vocab_size,dis,indeies)];
r = [r;ev('chemical',words,vocab_size,dis,indeies)];
r = [r;ev('chemistry',words,vocab_size,dis,indeies)];
r = [r;ev('reaction',words,vocab_size,dis,indeies)];
r = [r;ev('h2o',words,vocab_size,dis,indeies)];
r = [r;ev('h2',words,vocab_size,dis,indeies)];
r = [r;ev('o2',words,vocab_size,dis,indeies)];
r = [r;ev('combustion',words,vocab_size,dis,indeies)];
r = [r;ev('burn',words,vocab_size,dis,indeies)];
r = [r;ev('hydrogen',words,vocab_size,dis,indeies)];
r = [r;ev('oxygen',words,vocab_size,dis,indeies)];
r = [r;ev('molecule',words,vocab_size,dis,indeies)];
r = [r;ev('gas',words,vocab_size,dis,indeies)];
r = [r;ev('formation',words,vocab_size,dis,indeies)];
r(r==400000)=[];
mean(r)
min(r)
%
[dis,indeies] = ind(v3,freq_v,freq,20);
r = [];
r = [r;ev('formula',freq,20000,dis,indeies)];
r = [r;ev('water',freq,20000,dis,indeies)];
r = [r;ev('equation',freq,20000,dis,indeies)];
r = [r;ev('chemical',freq,20000,dis,indeies)];
r = [r;ev('chemistry',freq,20000,dis,indeies)];
r = [r;ev('reaction',freq,20000,dis,indeies)];
r = [r;ev('combustion',freq,20000,dis,indeies)];
r = [r;ev('burn',freq,20000,dis,indeies)];
r = [r;ev('hydrogen',freq,20000,dis,indeies)];
r = [r;ev('oxygen',freq,20000,dis,indeies)];
r = [r;ev('molecule',freq,20000,dis,indeies)];
r = [r;ev('gas',freq,20000,dis,indeies)];
r = [r;ev('formation',freq,20000,dis,indeies)];
r(r==20000)=[];
mean(r)
min(r)
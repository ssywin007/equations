function [vb,vm,vh] = optim(mb,mm,mh,noise)
%%
k = 10;
%%
vb = 0.1*randn(50,1); 
i = 0;
sample = zeros(50,10);
while true
    i = i+1;
    if i>30
        sample(:,i-30) = vb/sqrt(vb'*vb);
    end
    wi = noise*randn(k,50);
    obj = @(vb) -(sum(log(1./(exp(-mb*vb)+1))))-size(mb,1)*sum(log(1./(exp(wi*vb)+1)));
    y = obj(hessianinit(vb));
    f=y.x;g=(y.dx)';H=y.hx;
    % the criterion for stopping
    f
    norm(g)
    if  norm(g) < 1e-4 || i==40
        break
    end
    [u,s,vv] = svds(H,50);
    p = -vv*diag(1./diag(s))*u'*g;
    alpha = 1;
    while obj(vb + alpha * p) > f + 0.0001 * alpha * (g' * p)
        alpha = 0.95 * alpha;
    end
    vb = vb + alpha * p;
end
vb = mean(sample,2);
%%
vm = 0.1*randn(50,1); 
i = 0;
sample = zeros(50,10);
while true
    i = i+1;
    if i>30
        sample(:,i-30) = vm/sqrt(vm'*vm);
    end
    wi = noise*randn(k,50);
    obj = @(vm) -(sum(log(1./(exp(-mm*vm)+1))))-size(mm,1)*sum(log(1./(exp(wi*vm)+1)));
    y = obj(hessianinit(vm));
    f=y.x;g=(y.dx)';H=y.hx;
    % the criterion for stopping
    f
    norm(g)
    if  norm(g) < 1e-4 || i==40
        break
    end
    [u,s,vv] = svds(H,50);
    p = -vv*diag(1./diag(s))*u'*g;
    alpha = 1;
    while obj(vm + alpha * p) > f + 0.0001 * alpha * (g' * p)
        alpha = 0.95 * alpha;
    end
    vm = vm + alpha * p;
end
vm = mean(sample,2);
%%
vh = 0.1*randn(50,1);
i = 0;
sample = zeros(50,10);
while true
    i = i+1;
    if i>30
        sample(:,i-30) = vh/sqrt(vh'*vh);
    end
    wi = noise*randn(k,50);
    obj = @(vh) -(sum(log(1./(exp(-mh*vh)+1))))-size(mh,1)*sum(log(1./(exp(wi*vh)+1)));
    y = obj(hessianinit(vh));
    f=y.x;g=(y.dx)';H=y.hx;
    % the criterion for stopping
    f
    norm(g)
    if  norm(g) < 1e-4 || i==40
        break
    end
    [u,s,vv] = svds(H,50);
    p = -vv*diag(1./diag(s))*u'*g;
    alpha = 1;
    while obj(vh + alpha * p) > f + 0.0001 * alpha * (g' * p)
        alpha = 0.95 * alpha;
    end
    vh = vh + alpha * p;
end
vh = mean(sample,2);
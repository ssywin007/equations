% data cleaning
%%
mb = [];
for i=1:size(bayes,1)
    for j=1:size(bayes,2)
        aim = char(bayes{i,j});
        if strcmp(aim, '')
            continue
        end
        bo = 0;
        for k = 1:vocab_size
            if strcmp(aim, char(words{k}))
                mb = [mb;vectors(k,:)];
                bo = 1;
                break
            end
        end
        if bo == 0
            fprintf('cannot find word %s%d%d\n', aim,i,j);
        end
    end
end
%%
mh = [];
for i=1:size(hydrogen,1)
    for j=1:size(hydrogen,2)
        aim = char(hydrogen{i,j});
        if strcmp(aim, '')
            continue
        end
        bo = 0;
        for k = 1:vocab_size
            if strcmp(aim, char(words{k}))
                mh = [mh;vectors(k,:)];
                bo = 1;
                break
            end
        end
        if bo == 0
            fprintf('cannot find word %s%d%d\n', aim,i,j);
        end
    end
end
%%
mm = [];
for i=1:size(mee,1)
    for j=1:size(mee,2)
        aim = char(mee{i,j});
        if strcmp(aim, '')
            continue
        end
        bo = 0;
        for k = 1:vocab_size
            if strcmp(aim, char(words{k}))
                mm = [mm;vectors(k,:)];
                bo = 1;
                break
            end
        end
        if bo == 0
            fprintf('cannot find word %s%d%d\n', aim,i,j);
        end
    end
end

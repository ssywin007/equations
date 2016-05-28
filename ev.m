function k = ev(aim,words,vocab_size,dis,indeies)
for k = 1:vocab_size
    if strcmp(aim, char(words{indeies(k)}))
        break
    end
end

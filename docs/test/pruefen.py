import re, sys, glob, os, statistics
D=None
PHRASES=['es ist wichtig','zusammenfassend','in der heutigen','darüber hinaus','im kern','spannend','ganzheitlich','nahtlos',
 'am ende des tages','macht sinn','eintauchen','landschaft','navigieren','nächste level','experten','studien zeigen','möglicherweise',
 'stell dir vor','dient als','fungiert als','stellt dar','game-changer','meilenstein','entscheidende rolle','grenzenlos','verändert alles',
 'seien wir ehrlich','die wahrheit ist','eigentliche frage','wirklich','echt ','tatsächlich','genau deshalb','keine sorge','jederzeit',
 'schön, dass','herzlich willkommen','gerne','gute frage','ich hoffe','lass mich','unterstreicht','trägt','tragen']
NEG=[r'\bnicht nur\b', r'\bsondern\b', r'\bkein\w* \w+\. kein', r'das ist kein']
EMOJI=re.compile('[\U0001F300-\U0001FAFF☀-➿]')
def sections(p):
    s=open(p).read(); parts=re.split(r'^## ([A-F]\d+)\s*$', s, flags=re.M)
    return {parts[i]:parts[i+1].strip() for i in range(1,len(parts),2)}
def prose(t):  # Codeblöcke entfernen
    return re.sub(r'```.*?```','',t,flags=re.S)
def check(t):
    p=prose(t); low=p.lower(); f=[]
    f+= ['Komma vor und/oder']*len(re.findall(r', (und|oder) ',p))
    f+= ['Satzanfang Und/Oder']*len(re.findall(r'(?:^|[.!?]\s)(Und|Oder) ',p))
    f+= ['Gedankenstrich']*len(re.findall(r' [–—] |—',p))
    f+= ['Ausrufezeichen']*p.count('!')
    f+= ['Emoji']*len(EMOJI.findall(p))
    for ph in PHRASES:
        if ph in low: f.append('Phrase: '+ph.strip())
    for n in NEG:
        if re.search(n,low): f.append('Verneinung: '+n)
    sents=[x for x in re.split(r'(?<=[.!?])\s+',re.sub(r'\s+',' ',p)) if len(x.split())>2]
    return f, sents
rows={}
for path in sorted(glob.glob(os.path.join(sys.argv[1], '*.md'))):
    name=os.path.basename(path)[:-3]; cond='ohne' if 'ohne' in name else 'mit'
    for k,v in sections(path).items():
        f,s=check(v); rows.setdefault(cond,[]).append((name,k,f,s,v))
for cond,items in rows.items():
    allf=[x for it in items for x in it[2]]
    lens=[len(s.split()) for it in items for s in it[3]]
    print(f'== {cond}: {len(items)} Texte, {len(allf)} Befunde, Satzlänge Median {statistics.median(lens) if lens else 0} Wörter')
    from collections import Counter
    for k,c in Counter(allf).most_common(): print(f'   {c:3d}  {k}')
print()
for cond,items in rows.items():
    for name,k,f,s,v in items:
        if f: print(cond, name, k, '->', '; '.join(sorted(set(f))))

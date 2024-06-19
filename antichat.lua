loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua", true))()

local DeltaTime = tick()

local Words = {
   {"child porn", "ch⁥⁥⁥⁥⁥⁥⁥⁥⁥iӏdpо⁥⁥⁥⁥⁥⁥⁥⁥⁥rn"},
   {"you fucking retard", "yo⁥⁥⁥⁥⁥⁥uf⁥⁥⁥⁥⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥⁥⁥⁥⁥c⁥⁥⁥⁥⁥⁥⁥⁥⁥k⁥⁥i⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥n⁥gr⁥⁥⁥⁥⁥⁥e⁥⁥t⁥⁥⁥⁥⁥⁥ar⁥⁥⁥⁥⁥⁥d"},
   {"up", "u⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥p"},
   {"shut", "s⁥⁥⁥⁥⁥⁥⁥⁥һu⁥⁥⁥⁥⁥⁥⁥⁥t"},
   {"pornhub", "⁥⁥⁥⁥⁥ро⁥⁥⁥⁥⁥r⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥һ⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥b⁥⁥⁥⁥⁥"},
   {"a big", "⁥а b⁥і⁥⁥⁥⁥⁥g"},
   {"porn", "⁥ро⁥⁥⁥⁥⁥r⁥⁥⁥⁥⁥n"},
   {"cock", "cо⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥сk"},
   {"pussy", "⁥⁥⁥⁥⁥р⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥у⁥⁥⁥⁥⁥"},
   {"naked", "⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥k⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥d⁥⁥⁥⁥⁥"},
   {"titties", "⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥"},
   {"titty", "⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥y⁥⁥⁥⁥⁥"},
   {"whore", "w⁥⁥⁥⁥⁥һ⁥⁥⁥⁥⁥o⁥⁥⁥⁥⁥r⁥⁥⁥⁥⁥e⁥⁥⁥⁥⁥"},
   {"tits", "⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥s⁥⁥⁥⁥⁥"},
   {"kill", "kіll"},
   {"yourself", "уоurѕеlf"},
   {"cum", "⁥⁥⁥⁥⁥с⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥m⁥⁥⁥⁥⁥"},
   {"rizz", "r⁥⁥⁥⁥⁥i⁥⁥⁥⁥⁥z⁥⁥⁥⁥⁥z"},
   {"ass", "⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥"},
   {"nudes", "⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥d⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥"},
   {"hoe", "⁥⁥⁥⁥⁥һ⁥⁥⁥⁥⁥о⁥⁥⁥⁥е⁥⁥⁥⁥⁥⁥"},
   {"arse", "⁥аrs⁥е⁥⁥⁥⁥⁥"},
   {"hole", "hоl⁥е⁥⁥⁥⁥"},
   {"bastard", "b⁥аst⁥аrd"},
   {"bullshit", "bulls⁥⁥⁥⁥⁥⁥⁥⁥һit"},
   {"sucker", "suck⁥еr"},
   {"cocksucker", "cо⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥сksuck⁥еr"},
   {"twat", "twаt"},
   {"wanker", "wаnk⁥еr"},
   {"anus", "аnu⁥ѕ⁥⁥⁥⁥"},
   {"beaner", "⁥⁥⁥b⁥е⁥⁥⁥⁥⁥⁥аn⁥еr⁥⁥⁥⁥⁥⁥"},
   {"coon", "cо⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥n"},
   {"cumslut", "⁥⁥⁥⁥⁥с⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥m⁥⁥⁥⁥⁥⁥ѕӏut⁥"},
   {"dildo", "dіld⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"hump", "h⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥mp"},
   {"ing", "ing"},
   {"ho", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥h⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"jizz", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥j⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥izz⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"kunt", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥kun⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"queef", "qu⁥е⁥⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥f"},
   {"tard", "tаrd"},
   {"love", "⁥⁥⁥⁥⁥ӏ⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥v⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥"},
   {"kiss", "⁥⁥⁥⁥⁥k⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥"},
   {"porn", "⁥⁥⁥⁥⁥ро⁥⁥⁥⁥⁥r⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥"},
   {"damn", "dаmn"},
   {"anal", "аnаl"},
   {"zoophile", "zоорһіӏе"},
   {"sexual", "⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥х⁥⁥⁥⁥⁥ual"},
   {"tiktok", "tіktоk"},
   {"twerk", "twеrk"},
   {"gay", "⁥⁥⁥⁥⁥g⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥у⁥⁥⁥⁥⁥"},
   {"commit", "соmmіt"},
   {"black", "bӏасk"},
   {"suck", "ѕuсk"},
   {"heil", "һеіӏ"},
   {"lmao", "LМАО"},
   {"shit", "s⁥⁥⁥⁥⁥⁥⁥⁥һit"},
   {"cunt", "с⁥⁥⁥⁥⁥unt"},
   {"kink", "kіnk"},
   {"fetish", "fеtіѕh"},
   {"moan", "mоаn"},
   {"lmfao", "LМFАО"},
   {"nazi", "⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥a⁥⁥⁥⁥⁥z⁥⁥⁥⁥i"},
   {"sperm", "ѕре⁥⁥⁥⁥⁥⁥⁥⁥rm"},
   {"die in a hole", "dіе іn a holе"},
   {"horny", "h⁥⁥⁥⁥⁥⁥⁥⁥оrnу"},
   {"panties", "раntіеѕ"},
   {"booty", "bооtу"},
   {"penis", "⁥⁥⁥⁥⁥р⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥n⁥⁥⁥⁥іѕ"},
   {"butt", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥b⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"snapchat", "ѕnарсһаt"},
   {"instagram", "іnѕtаgrаm"},
   {"boob", "bооb"},
   {"boobies", "bооb⁥іеѕ"},
   {"hate", "һаtе"},
   {"people", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥pе⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥p⁥⁥⁥⁥⁥lе⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"sex", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ѕе⁥⁥⁥⁥⁥⁥⁥⁥х"},
   {"rape", "⁥⁥⁥⁥⁥⁥⁥⁥rа⁥⁥⁥⁥⁥⁥⁥⁥pе⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"rapist", "⁥⁥⁥⁥⁥⁥⁥⁥rа⁥⁥⁥⁥⁥⁥⁥⁥p⁥іѕt"},
   {"cocaine", "c⁥о⁥⁥⁥⁥⁥⁥⁥⁥⁥ca⁥іnе"},
   {"weed", "wееd"},
   {"meth", "mеtһ"},
   {"cannabis", "саnnаb⁥іѕ"},
   {"crack", "сrасk"},
   {"heroin", "hеrоin"},
   {"dick", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥d⁥⁥⁥⁥⁥і⁥⁥⁥⁥с⁥⁥⁥⁥⁥⁥⁥⁥k⁥⁥⁥⁥⁥"},
   {"pp", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥p⁥⁥⁥⁥⁥p"},
   {"femboy", "fеmbоу"},
   {"sexy", "⁥⁥⁥⁥⁥⁥⁥⁥⁥sехy⁥"},
   {"cunt", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥сu⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥nt⁥⁥⁥⁥⁥"},
   {"dumb", "d⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥um⁥⁥⁥⁥⁥b⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"fap", "fаp"},
   {"masturbate", "mаsturbаte"},
   {"bitch", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥b⁥і⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥сh⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"stupid", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ѕt⁥⁥⁥⁥⁥up⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥іd⁥⁥⁥⁥⁥"},
   {"slut", "⁥ѕӏut"},
   {"slutty", "⁥ѕӏuttу"},
   {"hentai", "һentаі"},
   {"rule34", "ruӏe34"},
   {"r34", "⁥⁥⁥⁥⁥r⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥3⁥⁥⁥⁥⁥4"},
   {".com", "⁥⁥⁥⁥⁥.c⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥оm⁥⁥⁥⁥⁥"},
   {".org", "⁥⁥⁥⁥⁥.⁥о⁥⁥⁥⁥⁥rg⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"suicide", "⁥ѕuі⁥сіdе"},
   {"dumbass", "d⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥um⁥⁥⁥⁥⁥b⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥а⁥ѕ⁥ѕ"},
   {"moron", "m⁥оr⁥оn"},
   {"xxx", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥xx⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥x⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"fat", "fаt"},
   {"die", "⁥⁥⁥⁥⁥dі⁥⁥⁥⁥⁥е"},
   {"suck", "⁥ѕu⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥сk"},
   {"fat bitch", "fаt ⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥b⁥і⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥сh⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"die fat bitch", "⁥⁥⁥⁥⁥dі⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥ ⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥fа⁥⁥⁥⁥⁥t ⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥b⁥і⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥сh⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥"},
   {"pornhub.com", "⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥р⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥r⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥һ⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥b⁥⁥⁥⁥⁥⁥.c⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥оm⁥⁥⁥⁥⁥"},
   {"you fucking retard", "yo⁥⁥⁥⁥⁥⁥uf⁥⁥⁥⁥⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥⁥⁥⁥⁥c⁥⁥⁥⁥⁥⁥⁥⁥⁥k⁥⁥i⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥n⁥gr⁥⁥⁥⁥⁥⁥e⁥⁥t⁥⁥⁥⁥⁥⁥ar⁥⁥⁥⁥⁥⁥d"},
   {"shut up faggot and die", "s⁥⁥⁥⁥⁥⁥⁥⁥һu⁥⁥⁥⁥⁥⁥⁥⁥tu⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥pf⁥⁥⁥⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ɡɡ⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥o⁥⁥⁥⁥⁥⁥⁥⁥tan⁥⁥⁥⁥⁥⁥⁥⁥ddi⁥⁥⁥⁥⁥⁥⁥⁥е"},
   {"you fucking nigger", "yоufu⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥сk⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥іn⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥gn⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ggе⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥r"},
   {"fucking nigger", "fu⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥сk⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥іn⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥gn⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ggе⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥r"},
   {"shut up nigger and die", "s⁥⁥⁥⁥⁥⁥⁥⁥һu⁥⁥⁥⁥⁥⁥⁥⁥tu⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥pn⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ggе⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ran⁥⁥⁥⁥⁥⁥⁥⁥ddi⁥⁥⁥⁥⁥⁥⁥⁥е"},
   {"lil nigga", "li⁥⁥⁥⁥⁥⁥⁥⁥⁥ӏn⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ggа"},
   {"fucking", "fu⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥сk⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥іn⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥g"},
   {"nigger", "n⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ggе⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥r"},
   {"faggot", "f⁥⁥⁥⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ɡɡ⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥o⁥⁥⁥⁥⁥⁥⁥⁥t"},
   {"nigga", "n⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥ggа"},
   {"fuck", "fu⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥сk"},
   {"retard", "r⁥⁥⁥⁥⁥⁥e⁥⁥t⁥⁥⁥⁥⁥⁥ar⁥⁥⁥⁥⁥⁥d"},
   {"up", "u⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥p"},
   {"shut", "s⁥⁥⁥⁥⁥⁥⁥⁥һu⁥⁥⁥⁥⁥⁥⁥⁥t"},
   {"child porn", "ch⁥⁥⁥⁥⁥⁥⁥⁥⁥iӏdpо⁥⁥⁥⁥⁥⁥⁥⁥⁥rn"},
   {"butt", "butt"},
   {"snapchat", "ѕnарсһаt"},
   {"snap", "ѕnар"},
   {"instagram", "іnѕtаgrаm"},
   {"insta", "іnѕtа"},
   {"dirty", "dіrtу"},
   {"rape", "⁥⁥⁥⁥⁥r⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥р⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥"},
   {"sex", "⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥х⁥⁥⁥⁥⁥"},
   {"whore", "⁥⁥⁥⁥⁥w⁥⁥⁥⁥⁥һ⁥⁥⁥⁥⁥o⁥⁥⁥⁥⁥r⁥⁥⁥⁥⁥e⁥⁥⁥⁥⁥"},
   {"slut", "⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥ӏ⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥"},
   {"pornhub", "⁥⁥⁥⁥⁥ро⁥⁥⁥⁥⁥r⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥һ⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥b⁥⁥⁥⁥⁥"},
   {"cock", "cо⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥сk"},
   {"pussy", "⁥⁥⁥⁥⁥р⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥у⁥⁥⁥⁥⁥"},
   {"naked", "⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥k⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥d⁥⁥⁥⁥⁥"},
   {"titties", "⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥"},
   {"titty", "⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥y⁥⁥⁥⁥⁥"},
   {"tits", "⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥t⁥⁥⁥⁥⁥s⁥⁥⁥⁥⁥"},
   {"cum", "⁥⁥⁥⁥⁥с⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥m⁥⁥⁥⁥⁥"},
   {"kkk", "⁥⁥⁥⁥⁥К⁥⁥⁥⁥⁥К⁥⁥⁥⁥⁥К⁥⁥⁥⁥⁥"},
   {"rizz", "r⁥⁥⁥⁥⁥i⁥⁥⁥⁥⁥z⁥⁥⁥⁥⁥z"},
   {"ass", "⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥"},
   {"vagina", "⁥⁥⁥⁥⁥v⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥g⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥"},
   {"nudes", "⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥u⁥⁥⁥⁥⁥d⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥"},
   {"ho", "⁥⁥⁥⁥⁥һ⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥"},
   {"blowjob", "⁥⁥⁥⁥b⁥⁥⁥⁥ӏ⁥⁥⁥⁥о⁥⁥⁥⁥w⁥⁥⁥⁥ј⁥⁥⁥⁥o⁥⁥⁥⁥b⁥⁥⁥⁥"},
   {"femboy", "fеmbоу"},
   {"love", "⁥⁥⁥⁥⁥ӏ⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥v⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥"},
   {"kiss", "⁥⁥⁥⁥⁥k⁥⁥⁥⁥⁥і⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥"},
   {"discord", "dіѕсоrd"},
   {"porn", "⁥⁥⁥⁥⁥ро⁥⁥⁥⁥⁥r⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥"},
   {"damn", "dаmn"},
   {"anal", "аnаl"},
   {"zoophile", "zоорһіӏе"},
   {"lmao", "LМАО"},
   {"lmfao", "LМFАО"},
   {"george", "gеоrgе"},
   {"floyd", "flоуd"},
   {"sexual", "⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥х⁥⁥⁥⁥⁥ual"},
   {"tiktok", "tіktоk"},
   {"twerk", "twеrk"},
   {"gay", "⁥⁥⁥⁥⁥g⁥⁥⁥⁥⁥а⁥⁥⁥⁥⁥у⁥⁥⁥⁥⁥"},
   {"black", "bӏасk"},
   {"suck", "ѕuсk"},
   {"heil", "һеіӏ"},
   {"nazi", "⁥⁥⁥⁥⁥n⁥⁥⁥⁥⁥a⁥⁥⁥⁥⁥z⁥⁥⁥⁥⁥ⅰ⁥⁥⁥⁥⁥"},
   {"penis", "⁥⁥⁥⁥⁥р⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥п⁥⁥⁥⁥⁥ⅰ⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥"},
   {"sperm", "⁥⁥⁥⁥⁥ѕ⁥⁥⁥⁥⁥р⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥г⁥⁥⁥⁥⁥m⁥⁥⁥⁥⁥"},
   {"pedo", "⁥⁥⁥⁥⁥р⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥ɗ⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥"},
   {"hate", "һаtе"},
   {"balls", "bаӏӏѕ"},
   {" ", ""}
}

local TextChatService = game:GetService("TextChatService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local LocalPlayer = Players.LocalPlayer

local PlayerGui = LocalPlayer.PlayerGui or LocalPlayer:WaitForChild("PlayerGui")

local ChatBar = CoreGui:FindFirstChild("TextBoxContainer", true) or PlayerGui:FindFirstChild("Chat"):FindFirstChild("ChatBar", true)

ChatBar = ChatBar:FindFirstChild("TextBox") or ChatBar

local function ReplaceCharacters(Text: string)
   for Index, Data in Words do
      local Real = Data[1]
      local Bypassed = Data[2]

      Text = Text:gsub(Real, Bypassed)
   end

   return Text
end

local function Message(Text: string)
   ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Text, "All")
end

local function FakeChat(Text: string)
   Players:Chat(Text)
end

local Characters = { }
for Index = 97, 122 do
   Characters[#Characters+1] = string.char(Index)
end do
   for Index = 65, 90 do
      Characters[#Characters+1] = string.char(Index)
   end
end

local function RNG(Length: number)
   local String = ""

   for Index = 1, Length do
      String = String .. Characters[math.random(#Characters)]
   end

   return String
end

local ResetFilter = function()
   for Index = 1, 10 do
      local GUID = RNG(Index)
      local Filler = "potato salad and fries"
      local Reset = ("%s %s"):format(GUID, Filler)

      task.spawn(function()
         FakeChat(Reset)
      end)
   end
end

local Bindable = Instance.new("BindableFunction")

for Index, Connection in getconnections(ChatBar.FocusLost) do
   Connection:Disconnect()
end

ChatBar.FocusLost:Connect(function(Returned)
   if Returned then
      Bindable:Invoke(ChatBar.Text)
      ChatBar.Text = ""
   end
end)

Bindable.OnInvoke = function(Text: string)
   Text = ReplaceCharacters(Text)

   print("Sending Message: " .. Text)

   Message(Text) do
      ResetFilter()
   end
end

game:GetService("LinkingService"):OpenUrl("https://discord.gg/GfE7BKHGb3") -- Shhh
Message(("Launched in %.2fs"):format(tick() - DeltaTime))

PrintWriter output;
int counter = 0;
  
void setup() {
  output = createWriter("haiku.txt"); 
  
}
void draw() { 
  
}

void keyPressed() {
  text(key, 20, 20);
  if(key=='q')
  {
    // Get a random element from an array
    String[] verbs = { "accept","care","could","enjoy","happen","lead","open","reduce","settle","teach","account","carry","count","examine","hate","learn","order","refer","shake","tell","achieve","catch","cover","exist","have","leave","ought","reflect","shall","tend","act","cause","create","expect","head","lend","own","refuse","share","test","add","change","cross","experience","hear","let","pass","regard","shoot","thank","admit","charge","cry","explain","help","lie","pay","relate","should","think","affect","check","cut","express","hide","like","perform","release","shout","throw","afford","choose","damage","extend","hit","limit","pick","remain","show","touch","agree","claim","dance","face","hold","link","place","remember","shut","train","aim","clean","deal","fail","hope","listen","plan","remove","sing","travel","allow","clear","decide","fall","hurt","live","play","repeat","sit","treat","answer","climb","deliver","fasten","identify","look","point","replace","sleep","try","appear","close","demand","feed","imagine","lose","prefer","reply","smile","turn","apply","collect","deny","feel","improve","love","prepare","report","sort","understand","argue","come","depend","fight","include","make","present","represent","sound","use","arrange","commit","describe","fill","increase","manage","press","require","speak","used to","arrive","compare","design","find","indicate","mark","prevent","rest","stand","visit","ask","complain","destroy","finish","influence","matter","produce","result","start","vote","attack","complete","develop","fit","inform","may","promise","return","state","wait","avoid","concern","die","fly","intend","mean","protect","reveal","stay","walk","base","confirm","disappear","fold","introduce","measure","prove","ring","stick","want","be","connect","discover","follow","invite","meet","provide","rise","stop","warn","beat","consider","discuss","force","involve","mention","publish","roll","study","wash","become","consist","divide","forget","join","might","pull","run","succeed","watch","begin","contact","do","forgive","jump","mind","push","save","suffer","wear","believe","contain","draw","form","keep","miss","put","say","suggest","will","belong","continue","dress","found","kick","move","raise","see","suit","win","break","contribute","drink","gain","kill","must","reach","seem","supply","wish","build","control","drive","get","knock","need","read","sell","support","wonder","burn","cook","drop","give","know","notice","realize","send","suppose","work","buy","copy","eat","go","last","obtain","receive","separate","survive","worry","call","correct","enable","grow","laugh","occur","recognize","serve","take","would","can","cost","encourage","handle","lay","offer","record","set","talk","write ","end"};
    int index = int(random(verbs.length));  // Same as int(random(4))
    output.print(verbs[index] + " ");
    print(verbs[index] + " ");  // Prints one of the four words
    counter++;
    println(counter);
  }
  if(key=='w')
  {
    // Get a random element from an array
    String[] prepositions = { "aboard","about","above","across","after","against","along","amid","among","anti","around","as","at","before","behind","below","beneath","beside","besides","between","beyond","but","by","concerning","considering","despite","down","during","except","excepting","excluding","following","for","from","in","inside","into","like","minus","near","of","off","on","onto","opposite","outside","over","past","per","plus","regarding","round","save","since","than","through","to","toward","towards","under","underneath","unlike","until","up","upon","versus","via","with","within","without"};
    int index = int(random(prepositions.length));  // Same as int(random(4))
    output.print(prepositions[index] + " ");
    print(prepositions[index] + " ");  // Prints one of the four words
    counter++;
  }
  if(key=='s')
  {
    // Get a random element from an array
    String[] nouns = { "time","issue","year","side","people","kind","way","head","day","house","man","service","thing","friend","woman","father","life","power","child","hour","world","game","school","line","state","end","family","member","student","law","group","car","country","city","problem","community","hand","name","part","president","place","team","case","minute","week","idea","company","kid","system","body","program","information","question","back","work","parent","government","face","number","others","night","level","Mr","office","point","door","home","health","water","person","room","art","mother","war","area","history","money","party","storey","result","fact","change","month","morning","lot","reason","right","research","study","girl","book","guy","eye","food","job","moment","word","air","business","teacher"};
    int index = int(random(nouns.length));  // Same as int(random(4))
    output.print(nouns[index] + " ");
    print(nouns[index] + " ");  // Prints one of the four words
    counter++;
  }
  if(key=='a')
  {
    // Get a random element from an array
    String[] adverbs = { "up","so","out","just","now","how","then","more","also","here","well","only","very","even","back","there","down","still","in","as","to","when","never","really","most","on","why","about","over","again","where","right","off","always","today","all","far","long","away","yet","often","ever","however","almost","later","much","once","least","ago","together","around","already","enough","both","maybe","actually","probably","home","of course","perhaps","little","else","sometimes","finally","less","better","early","especially","either","quite","simply","nearly","soon","certainly","quickly","no","recently","before","usually","thus","exactly","hard","particularly","pretty","forward","ok","clearly","indeed","rather","that","tonight","close","suddenly","best","instead","ahead","fast","alone","eventually","directly"};
    int index = int(random(adverbs.length));  // Same as int(random(4))
    output.print(adverbs[index] + " ");
    print(adverbs[index] + " ");  // Prints one of the four words
    counter++;
  }
  if(key=='i' || key==' ')
  {
    // Get a random element from an array
    String[] adjectives = {"other","new","good","high","old","great","big","American","small","large","national","young","different","black","long","little","important","political","bad","white","real","best","right","social","only","public","sure","low","early","able","human","local","late","hard","major","better","economic","strong","possible","whole","free","military","true","federal","international","full","special","easy","clear","recent","certain","personal","open","red","difficult","available","likely","short","single","medical","current","wrong","private","past","foreign","fine","common","poor","natural","significant","similar","hot","dead","central","happy","serious","ready","simple","left","physical","general","environmental","financial","blue","democratic","dark","various","entire","close","legal","religious","cold","final","main","green","nice","huge","popular","traditional","cultural"};
    int index = int(random(adjectives.length));  // Same as int(random(4))
    output.print(adjectives[index] + " ");
    print(adjectives[index] + " ");  // Prints one of the four words
    counter++;
  }
  if (counter == 5)
  {
    output.print(".");
    output.println();
    println("***Line 1***");
  }
  if (counter == 12)
  {
    output.print(".");
    output.println();
    println("***Line 2***");
  }
  if (counter == 17)
  {
    output.print(".");
    output.println();
    output.flush(); // Writes the remaining data to the file
    output.close(); // Finishes the file
    println("***End of haiku***");
  }
  if(key=='x')
  {
    exit(); // Stops the program
  }
}
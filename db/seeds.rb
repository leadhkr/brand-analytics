values = [
  [1, 1],
  [2, 2],
  [3, 3],
  [4, 4],
  [5, 5],
  [0, 6],
  [-1, 7],
  [-2, 8],
  [-3, 9],
  [-4, 10],
  [-5, 11]
]

values.each {|value, id| Value.create(rating: value, id: id) }

keywords = [
[ "bastard" , [11]],
[ "bastards"  , [11]],
[ "bitch" , [11]],
[ "bitches" , [11]],
[ "cock"  , [11]],
[ "cocksucker"  , [11]],
[ "cocksuckers" , [11]],
[ "cunt"  , [11]],
[ "motherfucker"  , [11]],
[ "motherfucking" , [11]],
[ "niggas"  , [11]],
[ "nigger"  , [11]],
[ "prick" , [11]],
[ "slut"  , [11]],
[ "son-of-a-bitch"  , [11]],
[ "twat"  , [11]],
[ "ass" , [10]],
[ "assfucking"  , [10]],
[ "asshole" , [10]],
[ "bullshit"  , [10]],
[ "catastrophic"  , [10]],
[ "damn"  , [10]],
[ "damned"  , [10]],
[ "damnit"  , [10]],
[ "dick"  , [10]],
[ "dickhead"  , [10]],
[ "fraud" , [10]],
[ "frauds"  , [10]],
[ "fraudster" , [10]],
[ "fraudsters"  , [10]],
[ "fraudulence" , [10]],
[ "fraudulent"  , [10]],
[ "fuck"  , [10]],
[ "fucked"  , [10]],
[ "fucker"  , [10]],
[ "fuckers" , [10]],
[ "fuckface"  , [10]],
[ "fuckhead"  , [10]],
[ "fucking" , [10]],
[ "fucktard"  , [10]],
[ "fuked" , [10]],
[ "fuking"  , [10]],
[ "hell"  , [10]],
[ "jackass" , [10]],
[ "jackasses" , [10]],
[ "piss"  , [10]],
[ "pissed"  , [10]],
[ "rape"  , [10]],
[ "rapist"  , [10]],
[ "scumbag" , [10]],
[ "shit"  , [10]],
[ "shithead"  , [10]],
[ "shrew" , [10]],
[ "torture" , [10]],
[ "tortured"  , [10]],
[ "tortures"  , [10]],
[ "torturing" , [10]],
[ "whore" , [10]],
[ "wtf" , [10]],
[ "abhor" , [9]],
[ "abhorred"  , [9]],
[ "abhorrent" , [9]],
[ "abhors"  , [9]],
[ "abuse" , [9]],
[ "abused"  , [9]],
[ "abuses"  , [9]],
[ "abusive" , [9]],
[ "acrimonious" , [9]],
[ "agonise" , [9]],
[ "agonised"  , [9]],
[ "agonises"  , [9]],
[ "agonising" , [9]],
[ "agonize" , [9]],
[ "agonized"  , [9]],
[ "agonizes"  , [9]],
[ "agonizing" , [9]],
[ "anger" , [9]],
[ "angers"  , [9]],
[ "angry" , [9]],
[ "anguish" , [9]],
[ "anguished" , [9]],
[ "apathetic" , [9]],
[ "apathy"  , [9]],
[ "apeshit" , [9]],
[ "arrested"  , [9]],
[ "assassination" , [9]],
[ "assassinations"  , [9]],
[ "awful" , [9]],
[ "bad" , [9]],
[ "badass"  , [9]],
[ "badly" , [9]],
[ "bankrupt"  , [9]],
[ "bankster"  , [9]],
[ "betray"  , [9]],
[ "betrayal"  , [9]],
[ "betrayed"  , [9]],
[ "betraying" , [9]],
[ "betrays" , [9]],
[ "bloody"  , [9]],
[ "boring"  , [9]],
[ "brainwashing"  , [9]],
[ "bribe" , [9]],
[ "can't stand" , [9]],
[ "catastrophe" , [9]],
[ "charged" , [9]],
[ "charmless" , [9]],
[ "chastise"  , [9]],
[ "chastised" , [9]],
[ "chastises" , [9]],
[ "chastising"  , [9]],
[ "cheat" , [9]],
[ "cheated" , [9]],
[ "cheater" , [9]],
[ "cheaters"  , [9]],
[ "cheats"  , [9]],
[ "colluding" , [9]],
[ "conspiracy"  , [9]],
[ "cover-up"  , [9]],
[ "crap"  , [9]],
[ "crime" , [9]],
[ "criminal"  , [9]],
[ "criminals" , [9]],
[ "crisis"  , [9]],
[ "cruel" , [9]],
[ "cruelty" , [9]],
[ "damage"  , [9]],
[ "damages" , [9]],
[ "dead"  , [9]],
[ "deceit"  , [9]],
[ "deceitful" , [9]],
[ "deceive" , [9]],
[ "deceived"  , [9]],
[ "deceives"  , [9]],
[ "deceiving" , [9]],
[ "deception" , [9]],
[ "defect"  , [9]],
[ "defects" , [9]],
[ "despair" , [9]],
[ "despairing"  , [9]],
[ "despairs"  , [9]],
[ "desperate" , [9]],
[ "desperately" , [9]],
[ "despondent"  , [9]],
[ "destroy" , [9]],
[ "destroyed" , [9]],
[ "destroying"  , [9]],
[ "destroys"  , [9]],
[ "destruction" , [9]],
[ "destructive" , [9]],
[ "die" , [9]],
[ "died"  , [9]],
[ "dipshit" , [9]],
[ "dire"  , [9]],
[ "direful" , [9]],
[ "disastrous"  , [9]],
[ "disgust" , [9]],
[ "disgusted" , [9]],
[ "disgusting"  , [9]],
[ "distrust"  , [9]],
[ "distrustful" , [9]],
[ "does not work" , [9]],
[ "douche"  , [9]],
[ "douchebag" , [9]],
[ "dreadful"  , [9]],
[ "dumb"  , [9]],
[ "dumbass" , [9]],
[ "evil"  , [9]],
[ "fag" , [9]],
[ "faggot"  , [9]],
[ "faggots" , [9]],
[ "fake"  , [9]],
[ "fakes" , [9]],
[ "faking"  , [9]],
[ "falsified" , [9]],
[ "falsify" , [9]],
[ "fatalities"  , [9]],
[ "fatality"  , [9]],
[ "fed up"  , [9]],
[ "felonies"  , [9]],
[ "felony"  , [9]],
[ "fiasco"  , [9]],
[ "frenzy"  , [9]],
[ "frightening" , [9]],
[ "fud" , [9]],
[ "furious" , [9]],
[ "goddamn" , [9]],
[ "greed" , [9]],
[ "green wash"  , [9]],
[ "green washing" , [9]],
[ "greenwash" , [9]],
[ "greenwasher" , [9]],
[ "greenwashers"  , [9]],
[ "greenwashing"  , [9]],
[ "guilt" , [9]],
[ "guilty"  , [9]],
[ "hate"  , [9]],
[ "hated" , [9]],
[ "haters"  , [9]],
[ "hates" , [9]],
[ "hating"  , [9]],
[ "heartbreaking" , [9]],
[ "heartbroken" , [9]],
[ "horrendous"  , [9]],
[ "horrible"  , [9]],
[ "horrific"  , [9]],
[ "horrified" , [9]],
[ "humiliated"  , [9]],
[ "humiliation" , [9]],
[ "hysteria"  , [9]],
[ "hysterical"  , [9]],
[ "hysterics" , [9]],
[ "idiot" , [9]],
[ "idiotic" , [9]],
[ "illegal" , [9]],
[ "imbecile"  , [9]],
[ "irate" , [9]],
[ "irritate"  , [9]],
[ "irritated" , [9]],
[ "irritating"  , [9]],
[ "jerk"  , [9]],
[ "kill"  , [9]],
[ "killed"  , [9]],
[ "killing" , [9]],
[ "kills" , [9]],
[ "liar"  , [9]],
[ "liars" , [9]],
[ "loathe"  , [9]],
[ "loathed" , [9]],
[ "loathes" , [9]],
[ "loathing"  , [9]],
[ "loose" , [9]],
[ "looses"  , [9]],
[ "loser" , [9]],
[ "losing"  , [9]],
[ "loss"  , [9]],
[ "lost"  , [9]],
[ "lunatic" , [9]],
[ "lunatics"  , [9]],
[ "mad" , [9]],
[ "maddening" , [9]],
[ "madly" , [9]],
[ "madness" , [9]],
[ "mediocrity"  , [9]],
[ "miserable" , [9]],
[ "misleading"  , [9]],
[ "moron" , [9]],
[ "murdering" , [9]],
[ "murderous" , [9]],
[ "nasty" , [9]],
[ "no fun"  , [9]],
[ "not working" , [9]],
[ "nuts"  , [9]],
[ "obnoxious" , [9]],
[ "outrage" , [9]],
[ "outraged"  , [9]],
[ "panic" , [9]],
[ "panicked"  , [9]],
[ "panics"  , [9]],
[ "perjury" , [9]],
[ "pissing" , [9]],
[ "pseudoscience" , [9]],
[ "racism"  , [9]],
[ "racist"  , [9]],
[ "racists" , [9]],
[ "rant"  , [9]],
[ "ranter"  , [9]],
[ "ranters" , [9]],
[ "rants" , [9]],
[ "ridiculous"  , [9]],
[ "scandal" , [9]],
[ "scandalous"  , [9]],
[ "scandals"  , [9]],
[ "screwed up"  , [9]],
[ "selfish" , [9]],
[ "selfishness" , [9]],
[ "shitty"  , [9]],
[ "sinful"  , [9]],
[ "slavery" , [9]],
[ "spammer" , [9]],
[ "spammers"  , [9]],
[ "suck"  , [9]],
[ "sucks" , [9]],
[ "swindle" , [9]],
[ "swindles"  , [9]],
[ "swindling" , [9]],
[ "terrible"  , [9]],
[ "terribly"  , [9]],
[ "terrified" , [9]],
[ "terror"  , [9]],
[ "terrorize" , [9]],
[ "terrorized"  , [9]],
[ "terrorizes"  , [9]],
[ "trauma"  , [9]],
[ "traumatic" , [9]],
[ "treason" , [9]],
[ "treasonous"  , [9]],
[ "ugly"  , [9]],
[ "victim"  , [9]],
[ "victimize" , [9]],
[ "victimized"  , [9]],
[ "victimizes"  , [9]],
[ "victimizing" , [9]],
[ "victims" , [9]],
[ "vile"  , [9]],
[ "violence"  , [9]],
[ "violent" , [9]],
[ "vitriolic" , [9]],
[ "wanker"  , [9]],
[ "warning" , [9]],
[ "warnings"  , [9]],
[ "whitewash" , [9]],
[ "withdrawal"  , [9]],
[ "woeful"  , [9]],
[ "worried" , [9]],
[ "worry" , [9]],
[ "worrying"  , [9]],
[ "worse" , [9]],
[ "worsen"  , [9]],
[ "worsened"  , [9]],
[ "worsening" , [9]],
[ "worsens" , [9]],
[ "worst" , [9]],
[ "wrathful"  , [9]],
[ "abandon" , [8]],
[ "abandoned" , [8]],
[ "abandons"  , [8]],
[ "abducted"  , [8]],
[ "abduction" , [8]],
[ "abductions"  , [8]],
[ "accident"  , [8]],
[ "accidental"  , [8]],
[ "accidentally"  , [8]],
[ "accidents" , [8]],
[ "accusation"  , [8]],
[ "accusations" , [8]],
[ "accuse"  , [8]],
[ "accused" , [8]],
[ "accuses" , [8]],
[ "accusing"  , [8]],
[ "ache"  , [8]],
[ "aching"  , [8]],
[ "admonish"  , [8]],
[ "admonished"  , [8]],
[ "afraid"  , [8]],
[ "aggravate" , [8]],
[ "aggravated"  , [8]],
[ "aggravates"  , [8]],
[ "aggravating" , [8]],
[ "aggression"  , [8]],
[ "aggressions" , [8]],
[ "aggressive"  , [8]],
[ "aghast"  , [8]],
[ "alarm" , [8]],
[ "alarmed" , [8]],
[ "alarmist"  , [8]],
[ "alarmists" , [8]],
[ "alienation"  , [8]],
[ "allergic"  , [8]],
[ "alone" , [8]],
[ "animosity" , [8]],
[ "annoy" , [8]],
[ "annoyance" , [8]],
[ "annoyed" , [8]],
[ "annoying"  , [8]],
[ "annoys"  , [8]],
[ "antagonistic"  , [8]],
[ "anxiety" , [8]],
[ "anxious" , [8]],
[ "apocalyptic" , [8]],
[ "appalled"  , [8]],
[ "appalling" , [8]],
[ "apprehensive"  , [8]],
[ "arrest"  , [8]],
[ "arrests" , [8]],
[ "arrogant"  , [8]],
[ "ashame"  , [8]],
[ "ashamed" , [8]],
[ "awkward" , [8]],
[ "bailout" , [8]],
[ "bamboozle" , [8]],
[ "bamboozled"  , [8]],
[ "bamboozles"  , [8]],
[ "ban" , [8]],
[ "banned"  , [8]],
[ "barrier" , [8]],
[ "beaten"  , [8]],
[ "belittle"  , [8]],
[ "belittled" , [8]],
[ "bereave" , [8]],
[ "bereaved"  , [8]],
[ "bereaves"  , [8]],
[ "bereaving" , [8]],
[ "biased"  , [8]],
[ "bitter"  , [8]],
[ "bitterly"  , [8]],
[ "bizarre" , [8]],
[ "blah"  , [8]],
[ "blame" , [8]],
[ "blamed"  , [8]],
[ "blames"  , [8]],
[ "blaming" , [8]],
[ "blurry"  , [8]],
[ "boastful"  , [8]],
[ "bore"  , [8]],
[ "bored" , [8]],
[ "bother"  , [8]],
[ "bothered"  , [8]],
[ "bothers" , [8]],
[ "bothersome"  , [8]],
[ "boycott" , [8]],
[ "boycotted" , [8]],
[ "boycotting"  , [8]],
[ "boycotts"  , [8]],
[ "brooding"  , [8]],
[ "bullied" , [8]],
[ "bully" , [8]],
[ "bullying"  , [8]],
[ "bummer"  , [8]],
[ "burden"  , [8]],
[ "burdened"  , [8]],
[ "burdening" , [8]],
[ "burdens" , [8]],
[ "careless"  , [8]],
[ "cashing in"  , [8]],
[ "casualty"  , [8]],
[ "censor"  , [8]],
[ "censored"  , [8]],
[ "censors" , [8]],
[ "chagrin" , [8]],
[ "chagrined" , [8]],
[ "chaos" , [8]],
[ "chaotic" , [8]],
[ "charges" , [8]],
[ "cheerless" , [8]],
[ "childish"  , [8]],
[ "choke" , [8]],
[ "choked"  , [8]],
[ "chokes"  , [8]],
[ "choking" , [8]],
[ "clash" , [8]],
[ "clueless"  , [8]],
[ "cocky" , [8]],
[ "coerced" , [8]],
[ "collapse"  , [8]],
[ "collapsed" , [8]],
[ "collapses" , [8]],
[ "collapsing"  , [8]],
[ "collision" , [8]],
[ "collisions"  , [8]],
[ "complacent"  , [8]],
[ "complain"  , [8]],
[ "complained"  , [8]],
[ "complains" , [8]],
[ "condemn" , [8]],
[ "condemnation"  , [8]],
[ "condemned" , [8]],
[ "condemns"  , [8]],
[ "conflict"  , [8]],
[ "conflicting" , [8]],
[ "conflictive" , [8]],
[ "conflicts" , [8]],
[ "confuse" , [8]],
[ "confused"  , [8]],
[ "confusing" , [8]],
[ "constrained" , [8]],
[ "contagion" , [8]],
[ "contagions"  , [8]],
[ "contempt"  , [8]],
[ "contemptuous"  , [8]],
[ "contemptuously"  , [8]],
[ "contentious" , [8]],
[ "contestable" , [8]],
[ "controversial" , [8]],
[ "controversially" , [8]],
[ "cornered"  , [8]],
[ "costly"  , [8]],
[ "coward"  , [8]],
[ "cowardly"  , [8]],
[ "crash" , [8]],
[ "crazier" , [8]],
[ "craziest"  , [8]],
[ "crazy" , [8]],
[ "crestfallen" , [8]],
[ "cried" , [8]],
[ "cries" , [8]],
[ "critic"  , [8]],
[ "criticism" , [8]],
[ "criticize" , [8]],
[ "criticized"  , [8]],
[ "criticizes"  , [8]],
[ "criticizing" , [8]],
[ "critics" , [8]],
[ "crushed" , [8]],
[ "crying"  , [8]],
[ "cynic" , [8]],
[ "cynical" , [8]],
[ "cynicism"  , [8]],
[ "danger"  , [8]],
[ "darkest" , [8]],
[ "deadlock"  , [8]],
[ "death" , [8]],
[ "debt"  , [8]],
[ "defeated"  , [8]],
[ "defenseless" , [8]],
[ "deficit" , [8]],
[ "degrade" , [8]],
[ "degraded"  , [8]],
[ "degrades"  , [8]],
[ "dehumanize"  , [8]],
[ "dehumanized" , [8]],
[ "dehumanizes" , [8]],
[ "dehumanizing"  , [8]],
[ "deject"  , [8]],
[ "dejected"  , [8]],
[ "dejecting" , [8]],
[ "dejects" , [8]],
[ "demoralized" , [8]],
[ "denied"  , [8]],
[ "denier"  , [8]],
[ "deniers" , [8]],
[ "denies"  , [8]],
[ "denounce"  , [8]],
[ "denounces" , [8]],
[ "deny"  , [8]],
[ "denying" , [8]],
[ "depressed" , [8]],
[ "depressing"  , [8]],
[ "derail"  , [8]],
[ "derailed"  , [8]],
[ "derails" , [8]],
[ "deride"  , [8]],
[ "derided" , [8]],
[ "derides" , [8]],
[ "deriding"  , [8]],
[ "derision"  , [8]],
[ "detain"  , [8]],
[ "detained"  , [8]],
[ "detention" , [8]],
[ "devastate" , [8]],
[ "devastated"  , [8]],
[ "devastating" , [8]],
[ "diffident" , [8]],
[ "dirt"  , [8]],
[ "dirtier" , [8]],
[ "dirtiest"  , [8]],
[ "dirty" , [8]],
[ "disadvantage"  , [8]],
[ "disadvantaged" , [8]],
[ "disappoint"  , [8]],
[ "disappointed"  , [8]],
[ "disappointing" , [8]],
[ "disappointment"  , [8]],
[ "disappointments" , [8]],
[ "disappoints" , [8]],
[ "disaster"  , [8]],
[ "disasters" , [8]],
[ "disbelieve"  , [8]],
[ "disconsolate"  , [8]],
[ "disconsolation"  , [8]],
[ "discontented"  , [8]],
[ "discord" , [8]],
[ "discouraged" , [8]],
[ "discredited" , [8]],
[ "disdain" , [8]],
[ "disgrace"  , [8]],
[ "disgraced" , [8]],
[ "disheartened"  , [8]],
[ "dishonest" , [8]],
[ "disillusioned" , [8]],
[ "disinclined" , [8]],
[ "disjointed"  , [8]],
[ "dislike" , [8]],
[ "dismal"  , [8]],
[ "dismayed"  , [8]],
[ "disorder"  , [8]],
[ "disorganized"  , [8]],
[ "disoriented" , [8]],
[ "disparage" , [8]],
[ "disparaged"  , [8]],
[ "disparages"  , [8]],
[ "disparaging" , [8]],
[ "displeased"  , [8]],
[ "dispute" , [8]],
[ "disputed"  , [8]],
[ "disputes"  , [8]],
[ "disputing" , [8]],
[ "disqualified"  , [8]],
[ "disquiet"  , [8]],
[ "disregard" , [8]],
[ "disregarded" , [8]],
[ "disregarding"  , [8]],
[ "disregards"  , [8]],
[ "disrespect"  , [8]],
[ "disrespected"  , [8]],
[ "disruption"  , [8]],
[ "disruptions" , [8]],
[ "disruptive"  , [8]],
[ "dissatisfied"  , [8]],
[ "distort" , [8]],
[ "distorted" , [8]],
[ "distorting"  , [8]],
[ "distorts"  , [8]],
[ "distract"  , [8]],
[ "distracted"  , [8]],
[ "distraction" , [8]],
[ "distracts" , [8]],
[ "distress"  , [8]],
[ "distressed"  , [8]],
[ "distresses"  , [8]],
[ "distressing" , [8]],
[ "disturb" , [8]],
[ "disturbed" , [8]],
[ "disturbing"  , [8]],
[ "disturbs"  , [8]],
[ "dithering" , [8]],
[ "dodging" , [8]],
[ "dodgy" , [8]],
[ "dolorous"  , [8]],
[ "dont like" , [8]],
[ "doom"  , [8]],
[ "doomed"  , [8]],
[ "downcast"  , [8]],
[ "downhearted" , [8]],
[ "downside"  , [8]],
[ "drained" , [8]],
[ "dread" , [8]],
[ "dreaded" , [8]],
[ "dreading"  , [8]],
[ "dreary"  , [8]],
[ "droopy"  , [8]],
[ "drown" , [8]],
[ "drowned" , [8]],
[ "drowns"  , [8]],
[ "drunk" , [8]],
[ "dubious" , [8]],
[ "dud" , [8]],
[ "dull"  , [8]],
[ "dumped"  , [8]],
[ "dupe"  , [8]],
[ "duped" , [8]],
[ "dysfunction" , [8]],
[ "eerie" , [8]],
[ "eery"  , [8]],
[ "embarrass" , [8]],
[ "embarrassed" , [8]],
[ "embarrasses" , [8]],
[ "embarrassing"  , [8]],
[ "embarrassment" , [8]],
[ "embittered"  , [8]],
[ "emergency" , [8]],
[ "enemies" , [8]],
[ "enemy" , [8]],
[ "ennui" , [8]],
[ "enrage"  , [8]],
[ "enraged" , [8]],
[ "enrages" , [8]],
[ "enraging"  , [8]],
[ "enslave" , [8]],
[ "enslaved"  , [8]],
[ "enslaves"  , [8]],
[ "envious" , [8]],
[ "erroneous" , [8]],
[ "error" , [8]],
[ "errors"  , [8]],
[ "exaggerate"  , [8]],
[ "exaggerated" , [8]],
[ "exaggerates" , [8]],
[ "exaggerating"  , [8]],
[ "excluded"  , [8]],
[ "exhausted" , [8]],
[ "expel" , [8]],
[ "expelled"  , [8]],
[ "expelling" , [8]],
[ "expels"  , [8]],
[ "exploit" , [8]],
[ "exploited" , [8]],
[ "exploiting"  , [8]],
[ "exploits"  , [8]],
[ "fad" , [8]],
[ "fail"  , [8]],
[ "failed"  , [8]],
[ "failing" , [8]],
[ "fails" , [8]],
[ "failure" , [8]],
[ "failures"  , [8]],
[ "fainthearted"  , [8]],
[ "fallen"  , [8]],
[ "fascist" , [8]],
[ "fascists"  , [8]],
[ "fatigue" , [8]],
[ "fatigued"  , [8]],
[ "fatigues"  , [8]],
[ "fatiguing" , [8]],
[ "fear"  , [8]],
[ "fearful" , [8]],
[ "fearing" , [8]],
[ "fearsome"  , [8]],
[ "feeble"  , [8]],
[ "fidgety" , [8]],
[ "fire"  , [8]],
[ "fired" , [8]],
[ "firing"  , [8]],
[ "flop"  , [8]],
[ "flops" , [8]],
[ "flu" , [8]],
[ "flustered" , [8]],
[ "fool"  , [8]],
[ "foolish" , [8]],
[ "fools" , [8]],
[ "foreclosure" , [8]],
[ "foreclosures"  , [8]],
[ "forgetful" , [8]],
[ "fright"  , [8]],
[ "frightened"  , [8]],
[ "frikin"  , [8]],
[ "frustrate" , [8]],
[ "frustrated"  , [8]],
[ "frustrates"  , [8]],
[ "frustrating" , [8]],
[ "frustration" , [8]],
[ "fuming"  , [8]],
[ "gag" , [8]],
[ "gagged"  , [8]],
[ "giddy" , [8]],
[ "gloomy"  , [8]],
[ "glum"  , [8]],
[ "grave" , [8]],
[ "greedy"  , [8]],
[ "grief" , [8]],
[ "grieved" , [8]],
[ "gross" , [8]],
[ "gullibility" , [8]],
[ "gullible"  , [8]],
[ "hapless" , [8]],
[ "haplessness" , [8]],
[ "hardship"  , [8]],
[ "harm"  , [8]],
[ "harmed"  , [8]],
[ "harmful" , [8]],
[ "harming" , [8]],
[ "harms" , [8]],
[ "harried" , [8]],
[ "harsh" , [8]],
[ "harsher" , [8]],
[ "harshest"  , [8]],
[ "haunted" , [8]],
[ "havoc" , [8]],
[ "heavyhearted"  , [8]],
[ "helpless"  , [8]],
[ "hesitant"  , [8]],
[ "hesitate"  , [8]],
[ "hindrance" , [8]],
[ "hoax"  , [8]],
[ "homesick"  , [8]],
[ "hooligan"  , [8]],
[ "hooliganism" , [8]],
[ "hooligans" , [8]],
[ "hopeless"  , [8]],
[ "hopelessness"  , [8]],
[ "hostile" , [8]],
[ "huckster"  , [8]],
[ "hunger"  , [8]],
[ "hurt"  , [8]],
[ "hurting" , [8]],
[ "hurts" , [8]],
[ "hypocritical"  , [8]],
[ "ignorance" , [8]],
[ "ignorant"  , [8]],
[ "ignored" , [8]],
[ "ill" , [8]],
[ "illiteracy"  , [8]],
[ "illness" , [8]],
[ "illnesses" , [8]],
[ "impatient" , [8]],
[ "imperfect" , [8]],
[ "impotent"  , [8]],
[ "imprisoned"  , [8]],
[ "inability" , [8]],
[ "inaction"  , [8]],
[ "inadequate"  , [8]],
[ "incapable" , [8]],
[ "incapacitated" , [8]],
[ "incensed"  , [8]],
[ "incompetence"  , [8]],
[ "incompetent" , [8]],
[ "inconsiderate" , [8]],
[ "inconvenience" , [8]],
[ "inconvenient"  , [8]],
[ "indecisive"  , [8]],
[ "indifference"  , [8]],
[ "indifferent" , [8]],
[ "indignant" , [8]],
[ "indignation" , [8]],
[ "indoctrinate"  , [8]],
[ "indoctrinated" , [8]],
[ "indoctrinates" , [8]],
[ "indoctrinating"  , [8]],
[ "ineffective" , [8]],
[ "ineffectively" , [8]],
[ "infected"  , [8]],
[ "inferior"  , [8]],
[ "inflamed"  , [8]],
[ "infringement"  , [8]],
[ "infuriate" , [8]],
[ "infuriated"  , [8]],
[ "infuriates"  , [8]],
[ "infuriating" , [8]],
[ "injured" , [8]],
[ "injury"  , [8]],
[ "injustice" , [8]],
[ "inquisition" , [8]],
[ "insane"  , [8]],
[ "insanity"  , [8]],
[ "insecure"  , [8]],
[ "insensitive" , [8]],
[ "insensitivity" , [8]],
[ "insignificant" , [8]],
[ "insipid" , [8]],
[ "insult"  , [8]],
[ "insulted"  , [8]],
[ "insulting" , [8]],
[ "insults" , [8]],
[ "interrogated"  , [8]],
[ "interrupt" , [8]],
[ "interrupted" , [8]],
[ "interrupting"  , [8]],
[ "interruption"  , [8]],
[ "interrupts"  , [8]],
[ "intimidate"  , [8]],
[ "intimidated" , [8]],
[ "intimidates" , [8]],
[ "intimidating"  , [8]],
[ "intimidation"  , [8]],
[ "irresolute"  , [8]],
[ "itchy" , [8]],
[ "jailed"  , [8]],
[ "jealous" , [8]],
[ "jeopardy"  , [8]],
[ "joyless" , [8]],
[ "lack"  , [8]],
[ "lackadaisical" , [8]],
[ "lagged"  , [8]],
[ "lagging" , [8]],
[ "lags"  , [8]],
[ "lame"  , [8]],
[ "lawsuit" , [8]],
[ "lawsuits"  , [8]],
[ "lethargic" , [8]],
[ "lethargy"  , [8]],
[ "libelous"  , [8]],
[ "lied"  , [8]],
[ "litigious" , [8]],
[ "livid" , [8]],
[ "lobby" , [8]],
[ "lobbying"  , [8]],
[ "lonely"  , [8]],
[ "lonesome"  , [8]],
[ "lugubrious"  , [8]],
[ "meaningless" , [8]],
[ "melancholy"  , [8]],
[ "menace"  , [8]],
[ "menaced" , [8]],
[ "mess"  , [8]],
[ "messed"  , [8]],
[ "messing up"  , [8]],
[ "mindless"  , [8]],
[ "misbehave" , [8]],
[ "misbehaved"  , [8]],
[ "misbehaves"  , [8]],
[ "misbehaving" , [8]],
[ "misery"  , [8]],
[ "misgiving" , [8]],
[ "misinformation"  , [8]],
[ "misinformed" , [8]],
[ "misinterpreted"  , [8]],
[ "misreporting"  , [8]],
[ "misrepresentation" , [8]],
[ "miss"  , [8]],
[ "missed"  , [8]],
[ "missing" , [8]],
[ "mistake" , [8]],
[ "mistaken"  , [8]],
[ "mistakes"  , [8]],
[ "mistaking" , [8]],
[ "misunderstand" , [8]],
[ "misunderstanding"  , [8]],
[ "misunderstands"  , [8]],
[ "misunderstood" , [8]],
[ "moan"  , [8]],
[ "moaned"  , [8]],
[ "moaning" , [8]],
[ "moans" , [8]],
[ "mock"  , [8]],
[ "mocked"  , [8]],
[ "mocking" , [8]],
[ "mocks" , [8]],
[ "mongering" , [8]],
[ "monopolize"  , [8]],
[ "monopolized" , [8]],
[ "monopolizes" , [8]],
[ "monopolizing"  , [8]],
[ "mourn" , [8]],
[ "mourned" , [8]],
[ "mournful"  , [8]],
[ "mourning"  , [8]],
[ "mourns"  , [8]],
[ "mumpish" , [8]],
[ "murder"  , [8]],
[ "murderer"  , [8]],
[ "murders" , [8]],
[ "n00b"  , [8]],
[ "naive" , [8]],
[ "naïve" , [8]],
[ "needy" , [8]],
[ "negative"  , [8]],
[ "negativity"  , [8]],
[ "neglect" , [8]],
[ "neglected" , [8]],
[ "neglecting"  , [8]],
[ "neglects"  , [8]],
[ "nervous" , [8]],
[ "nervously" , [8]],
[ "nonsense"  , [8]],
[ "noob"  , [8]],
[ "nosey" , [8]],
[ "not good"  , [8]],
[ "notorious" , [8]],
[ "obliterate"  , [8]],
[ "obliterated" , [8]],
[ "obscene" , [8]],
[ "obsolete"  , [8]],
[ "obstacle"  , [8]],
[ "obstacles" , [8]],
[ "obstinate" , [8]],
[ "odd" , [8]],
[ "offend"  , [8]],
[ "offended"  , [8]],
[ "offender"  , [8]],
[ "offending" , [8]],
[ "offends" , [8]],
[ "oppressed" , [8]],
[ "oppressive"  , [8]],
[ "optionless"  , [8]],
[ "outcry"  , [8]],
[ "outmaneuvered" , [8]],
[ "overreact" , [8]],
[ "overreacted" , [8]],
[ "overreaction"  , [8]],
[ "overreacts"  , [8]],
[ "oversell"  , [8]],
[ "overselling" , [8]],
[ "oversells" , [8]],
[ "oversimplification"  , [8]],
[ "oversimplified"  , [8]],
[ "oversimplifies"  , [8]],
[ "oversimplify"  , [8]],
[ "overstatement" , [8]],
[ "overstatements"  , [8]],
[ "pain"  , [8]],
[ "pained"  , [8]],
[ "pathetic"  , [8]],
[ "penalty" , [8]],
[ "peril" , [8]],
[ "perpetrator" , [8]],
[ "perpetrators"  , [8]],
[ "perplexed" , [8]],
[ "persecute" , [8]],
[ "persecuted"  , [8]],
[ "persecutes"  , [8]],
[ "persecuting" , [8]],
[ "perturbed" , [8]],
[ "pesky" , [8]],
[ "pessimism" , [8]],
[ "pessimistic" , [8]],
[ "petrified" , [8]],
[ "phobic"  , [8]],
[ "pique" , [8]],
[ "piqued"  , [8]],
[ "piteous" , [8]],
[ "pity"  , [8]],
[ "poised"  , [8]],
[ "poison"  , [8]],
[ "poisoned"  , [8]],
[ "poisons" , [8]],
[ "pollute" , [8]],
[ "polluted"  , [8]],
[ "polluter"  , [8]],
[ "polluters" , [8]],
[ "pollutes"  , [8]],
[ "poor"  , [8]],
[ "poorer"  , [8]],
[ "poorest" , [8]],
[ "possessive"  , [8]],
[ "powerless" , [8]],
[ "prblm" , [8]],
[ "prblms"  , [8]],
[ "pressured" , [8]],
[ "prison"  , [8]],
[ "prisoner"  , [8]],
[ "prisoners" , [8]],
[ "problem" , [8]],
[ "problems"  , [8]],
[ "profiteer" , [8]],
[ "propaganda"  , [8]],
[ "prosecuted"  , [8]],
[ "protest" , [8]],
[ "protesters"  , [8]],
[ "protesting"  , [8]],
[ "protests"  , [8]],
[ "punish"  , [8]],
[ "punished"  , [8]],
[ "punishes"  , [8]],
[ "punitive"  , [8]],
[ "puzzled" , [8]],
[ "quaking" , [8]],
[ "questionable"  , [8]],
[ "rage"  , [8]],
[ "rageful" , [8]],
[ "rash"  , [8]],
[ "rebellion" , [8]],
[ "recession" , [8]],
[ "reckless"  , [8]],
[ "refuse"  , [8]],
[ "refused" , [8]],
[ "refusing"  , [8]],
[ "regret"  , [8]],
[ "regretful" , [8]],
[ "regrets" , [8]],
[ "regretted" , [8]],
[ "regretting"  , [8]],
[ "remorse" , [8]],
[ "repulsed"  , [8]],
[ "resentful" , [8]],
[ "restless"  , [8]],
[ "restrict"  , [8]],
[ "restricted"  , [8]],
[ "restricting" , [8]],
[ "restriction" , [8]],
[ "restricts" , [8]],
[ "retard"  , [8]],
[ "retarded"  , [8]],
[ "revenge" , [8]],
[ "revengeful"  , [8]],
[ "riot"  , [8]],
[ "riots" , [8]],
[ "risk"  , [8]],
[ "risks" , [8]],
[ "rob" , [8]],
[ "robber"  , [8]],
[ "robed" , [8]],
[ "robing"  , [8]],
[ "robs"  , [8]],
[ "ruin"  , [8]],
[ "ruined"  , [8]],
[ "ruining" , [8]],
[ "ruins" , [8]],
[ "sabotage"  , [8]],
[ "sad" , [8]],
[ "sadden"  , [8]],
[ "saddened"  , [8]],
[ "sadly" , [8]],
[ "sarcastic" , [8]],
[ "scam"  , [8]],
[ "scams" , [8]],
[ "scapegoat" , [8]],
[ "scapegoats"  , [8]],
[ "scare" , [8]],
[ "scared"  , [8]],
[ "scary" , [8]],
[ "sceptical" , [8]],
[ "scold" , [8]],
[ "scorn" , [8]],
[ "scornful"  , [8]],
[ "scream"  , [8]],
[ "screamed"  , [8]],
[ "screaming" , [8]],
[ "screams" , [8]],
[ "screwed" , [8]],
[ "sedition"  , [8]],
[ "seditious" , [8]],
[ "self-deluded"  , [8]],
[ "sentence"  , [8]],
[ "sentenced" , [8]],
[ "sentences" , [8]],
[ "sentencing"  , [8]],
[ "severe"  , [8]],
[ "shaky" , [8]],
[ "shame" , [8]],
[ "shamed"  , [8]],
[ "shameful"  , [8]],
[ "shattered" , [8]],
[ "shock" , [8]],
[ "shocked" , [8]],
[ "shocking"  , [8]],
[ "shocks"  , [8]],
[ "short-sighted" , [8]],
[ "short-sightedness" , [8]],
[ "shortage"  , [8]],
[ "shortages" , [8]],
[ "sick"  , [8]],
[ "sigh"  , [8]],
[ "singleminded"  , [8]],
[ "skeptic" , [8]],
[ "skeptical" , [8]],
[ "skepticism"  , [8]],
[ "skeptics"  , [8]],
[ "slam"  , [8]],
[ "slash" , [8]],
[ "slashed" , [8]],
[ "slashes" , [8]],
[ "slashing"  , [8]],
[ "sleeplessness" , [8]],
[ "sluggish"  , [8]],
[ "smear" , [8]],
[ "smog"  , [8]],
[ "snub"  , [8]],
[ "snubbed" , [8]],
[ "snubbing"  , [8]],
[ "snubs" , [8]],
[ "somber"  , [8]],
[ "sorrow"  , [8]],
[ "sorrowful" , [8]],
[ "spam"  , [8]],
[ "spamming"  , [8]],
[ "speculative" , [8]],
[ "spiritless"  , [8]],
[ "spiteful"  , [8]],
[ "stab"  , [8]],
[ "stabbed" , [8]],
[ "stabs" , [8]],
[ "stall" , [8]],
[ "stalled" , [8]],
[ "stalling"  , [8]],
[ "stampede"  , [8]],
[ "startled"  , [8]],
[ "starve"  , [8]],
[ "starved" , [8]],
[ "starves" , [8]],
[ "starving"  , [8]],
[ "steal" , [8]],
[ "steals"  , [8]],
[ "stereotype"  , [8]],
[ "stereotyped" , [8]],
[ "stingy"  , [8]],
[ "stolen"  , [8]],
[ "strangled" , [8]],
[ "stressed"  , [8]],
[ "stressor"  , [8]],
[ "stressors" , [8]],
[ "stricken"  , [8]],
[ "strikers"  , [8]],
[ "struggle"  , [8]],
[ "struggled" , [8]],
[ "struggles" , [8]],
[ "struggling"  , [8]],
[ "stubborn"  , [8]],
[ "stuck" , [8]],
[ "stunned" , [8]],
[ "stupid"  , [8]],
[ "stupidly"  , [8]],
[ "subversive"  , [8]],
[ "suffer"  , [8]],
[ "suffering" , [8]],
[ "suffers" , [8]],
[ "suicidal"  , [8]],
[ "suicide" , [8]],
[ "suing" , [8]],
[ "sulking" , [8]],
[ "sulky" , [8]],
[ "sullen"  , [8]],
[ "suspicious"  , [8]],
[ "swear" , [8]],
[ "swearing"  , [8]],
[ "swears"  , [8]],
[ "tard"  , [8]],
[ "tears" , [8]],
[ "tense" , [8]],
[ "thorny"  , [8]],
[ "thoughtless" , [8]],
[ "threat"  , [8]],
[ "threaten"  , [8]],
[ "threatened"  , [8]],
[ "threatening" , [8]],
[ "threatens" , [8]],
[ "threats" , [8]],
[ "thwart"  , [8]],
[ "thwarted"  , [8]],
[ "thwarting" , [8]],
[ "thwarts" , [8]],
[ "timid" , [8]],
[ "timorous"  , [8]],
[ "tired" , [8]],
[ "tits"  , [8]],
[ "toothless" , [8]],
[ "torn"  , [8]],
[ "totalitarian"  , [8]],
[ "totalitarianism" , [8]],
[ "tout"  , [8]],
[ "touted"  , [8]],
[ "touting" , [8]],
[ "touts" , [8]],
[ "tragedy" , [8]],
[ "tragic"  , [8]],
[ "trapped" , [8]],
[ "travesty"  , [8]],
[ "trembling" , [8]],
[ "tremulous" , [8]],
[ "tricked" , [8]],
[ "trickery"  , [8]],
[ "trouble" , [8]],
[ "troubled"  , [8]],
[ "troubles"  , [8]],
[ "tumor" , [8]],
[ "unacceptable"  , [8]],
[ "unappreciated" , [8]],
[ "unapproved"  , [8]],
[ "unaware" , [8]],
[ "uncomfortable" , [8]],
[ "unconcerned" , [8]],
[ "undermine" , [8]],
[ "undermined"  , [8]],
[ "undermines"  , [8]],
[ "undermining" , [8]],
[ "undeserving" , [8]],
[ "undesirable" , [8]],
[ "uneasy"  , [8]],
[ "unemployment"  , [8]],
[ "unethical" , [8]],
[ "unfair"  , [8]],
[ "unfocused" , [8]],
[ "unfulfilled" , [8]],
[ "unhappy" , [8]],
[ "unhealthy" , [8]],
[ "unimpressed" , [8]],
[ "unintelligent" , [8]],
[ "unjust"  , [8]],
[ "unlovable" , [8]],
[ "unloved" , [8]],
[ "unmotivated" , [8]],
[ "unprofessional"  , [8]],
[ "unresearched"  , [8]],
[ "unsatisfied" , [8]],
[ "unsecured" , [8]],
[ "unsophisticated" , [8]],
[ "unstable"  , [8]],
[ "unsupported" , [8]],
[ "unwanted"  , [8]],
[ "unworthy"  , [8]],
[ "upset" , [8]],
[ "upsets"  , [8]],
[ "upsetting" , [8]],
[ "uptight" , [8]],
[ "useless" , [8]],
[ "uselessness" , [8]],
[ "vague" , [8]],
[ "vexation"  , [8]],
[ "vexing"  , [8]],
[ "vicious" , [8]],
[ "violate" , [8]],
[ "violated"  , [8]],
[ "violates"  , [8]],
[ "violating" , [8]],
[ "virulent"  , [8]],
[ "vulnerability" , [8]],
[ "vulnerable"  , [8]],
[ "walkout" , [8]],
[ "walkouts"  , [8]],
[ "war" , [8]],
[ "warfare" , [8]],
[ "warn"  , [8]],
[ "warned"  , [8]],
[ "warns" , [8]],
[ "wasted"  , [8]],
[ "wasting" , [8]],
[ "weak"  , [8]],
[ "weakness"  , [8]],
[ "weary" , [8]],
[ "weep"  , [8]],
[ "weeping" , [8]],
[ "weird" , [8]],
[ "wicked"  , [8]],
[ "woebegone" , [8]],
[ "worthless" , [8]],
[ "wreck" , [8]],
[ "wrong" , [8]],
[ "wronged" , [8]],
[ "yucky" , [8]],
[ "zealot"  , [8]],
[ "zealots" , [8]],
[ "absentee"  , [7]],
[ "absentees" , [7]],
[ "admit" , [7]],
[ "admits"  , [7]],
[ "admitted"  , [7]],
[ "affected"  , [7]],
[ "afflicted" , [7]],
[ "affronted" , [7]],
[ "alas"  , [7]],
[ "alert" , [7]],
[ "ambivalent"  , [7]],
[ "anti"  , [7]],
[ "apologise" , [7]],
[ "apologised"  , [7]],
[ "apologises"  , [7]],
[ "apologising" , [7]],
[ "apologize" , [7]],
[ "apologized"  , [7]],
[ "apologizes"  , [7]],
[ "apologizing" , [7]],
[ "apology" , [7]],
[ "attack"  , [7]],
[ "attacked"  , [7]],
[ "attacking" , [7]],
[ "attacks" , [7]],
[ "avert" , [7]],
[ "averted" , [7]],
[ "averts"  , [7]],
[ "avoid" , [7]],
[ "avoided" , [7]],
[ "avoids"  , [7]],
[ "await" , [7]],
[ "awaited" , [7]],
[ "awaits"  , [7]],
[ "axe" , [7]],
[ "axed"  , [7]],
[ "banish"  , [7]],
[ "battle"  , [7]],
[ "battles" , [7]],
[ "beating" , [7]],
[ "bias"  , [7]],
[ "blind" , [7]],
[ "block" , [7]],
[ "blocked" , [7]],
[ "blocking"  , [7]],
[ "blocks"  , [7]],
[ "bomb"  , [7]],
[ "broke" , [7]],
[ "broken"  , [7]],
[ "cancel"  , [7]],
[ "cancelled" , [7]],
[ "cancelling"  , [7]],
[ "cancels" , [7]],
[ "cancer"  , [7]],
[ "cautious"  , [7]],
[ "challenge" , [7]],
[ "chilling"  , [7]],
[ "clouded" , [7]],
[ "collide" , [7]],
[ "collides"  , [7]],
[ "colliding" , [7]],
[ "combat"  , [7]],
[ "combats" , [7]],
[ "contagious"  , [7]],
[ "contend" , [7]],
[ "contender" , [7]],
[ "contending"  , [7]],
[ "corpse"  , [7]],
[ "cramp" , [7]],
[ "crush" , [7]],
[ "crushes" , [7]],
[ "crushing"  , [7]],
[ "cry" , [7]],
[ "curse" , [7]],
[ "cut" , [7]],
[ "cuts"  , [7]],
[ "cutting" , [7]],
[ "darkness"  , [7]],
[ "deafening" , [7]],
[ "defer" , [7]],
[ "deferring" , [7]],
[ "defiant" , [7]],
[ "delay" , [7]],
[ "delayed" , [7]],
[ "demand"  , [7]],
[ "demanded"  , [7]],
[ "demanding" , [7]],
[ "demands" , [7]],
[ "demonstration" , [7]],
[ "detached"  , [7]],
[ "difficult" , [7]],
[ "dilemma" , [7]],
[ "disabling" , [7]],
[ "disappear" , [7]],
[ "disappeared" , [7]],
[ "disappears"  , [7]],
[ "discard" , [7]],
[ "discarded" , [7]],
[ "discarding"  , [7]],
[ "discards"  , [7]],
[ "discounted"  , [7]],
[ "disguise"  , [7]],
[ "disguised" , [7]],
[ "disguises" , [7]],
[ "disguising"  , [7]],
[ "dizzy" , [7]],
[ "doubt" , [7]],
[ "doubted" , [7]],
[ "doubtful"  , [7]],
[ "doubting"  , [7]],
[ "doubts"  , [7]],
[ "drag"  , [7]],
[ "dragged" , [7]],
[ "drags" , [7]],
[ "drop"  , [7]],
[ "dump"  , [7]],
[ "dumps" , [7]],
[ "emptiness" , [7]],
[ "empty" , [7]],
[ "envies"  , [7]],
[ "envy"  , [7]],
[ "envying" , [7]],
[ "escape"  , [7]],
[ "escapes" , [7]],
[ "escaping"  , [7]],
[ "eviction"  , [7]],
[ "exclude" , [7]],
[ "exclusion" , [7]],
[ "excuse"  , [7]],
[ "exempt"  , [7]],
[ "expose"  , [7]],
[ "exposed" , [7]],
[ "exposes" , [7]],
[ "exposing"  , [7]],
[ "falling" , [7]],
[ "farce" , [7]],
[ "fight" , [7]],
[ "flees" , [7]],
[ "forced"  , [7]],
[ "forget"  , [7]],
[ "forgotten" , [7]],
[ "frantic" , [7]],
[ "frowning"  , [7]],
[ "funeral" , [7]],
[ "funerals"  , [7]],
[ "ghost" , [7]],
[ "gloom" , [7]],
[ "gray"  , [7]],
[ "grey"  , [7]],
[ "gun" , [7]],
[ "hacked"  , [7]],
[ "hard"  , [7]],
[ "haunt" , [7]],
[ "haunts"  , [7]],
[ "hid" , [7]],
[ "hide"  , [7]],
[ "hides" , [7]],
[ "hiding"  , [7]],
[ "ignore"  , [7]],
[ "ignores" , [7]],
[ "immobilized" , [7]],
[ "impose"  , [7]],
[ "imposed" , [7]],
[ "imposes" , [7]],
[ "imposing"  , [7]],
[ "inhibit" , [7]],
[ "ironic"  , [7]],
[ "irony" , [7]],
[ "irrational"  , [7]],
[ "irreversible"  , [7]],
[ "isolated"  , [7]],
[ "jumpy" , [7]],
[ "lag" , [7]],
[ "lazy"  , [7]],
[ "leak"  , [7]],
[ "leaked"  , [7]],
[ "leave" , [7]],
[ "limitation"  , [7]],
[ "limited" , [7]],
[ "limits"  , [7]],
[ "litigation"  , [7]],
[ "longing" , [7]],
[ "loom"  , [7]],
[ "loomed"  , [7]],
[ "looming" , [7]],
[ "looms" , [7]],
[ "lowest"  , [7]],
[ "lurk"  , [7]],
[ "lurking" , [7]],
[ "lurks" , [7]],
[ "made-up" , [7]],
[ "mandatory" , [7]],
[ "manipulated" , [7]],
[ "manipulating"  , [7]],
[ "manipulation"  , [7]],
[ "mischief"  , [7]],
[ "mischiefs" , [7]],
[ "misread" , [7]],
[ "moody" , [7]],
[ "mope"  , [7]],
[ "moping"  , [7]],
[ "myth"  , [7]],
[ "nerves"  , [7]],
[ "no"  , [7]],
[ "noisy" , [7]],
[ "numb"  , [7]],
[ "offline" , [7]],
[ "overload"  , [7]],
[ "overlooked"  , [7]],
[ "overweight"  , [7]],
[ "oxymoron"  , [7]],
[ "paradox" , [7]],
[ "parley"  , [7]],
[ "passive" , [7]],
[ "passively" , [7]],
[ "pay" , [7]],
[ "pensive" , [7]],
[ "pileup"  , [7]],
[ "pitied"  , [7]],
[ "postpone"  , [7]],
[ "postponed" , [7]],
[ "postpones" , [7]],
[ "postponing"  , [7]],
[ "poverty" , [7]],
[ "pressure"  , [7]],
[ "pretend" , [7]],
[ "pretending"  , [7]],
[ "pretends"  , [7]],
[ "prevent" , [7]],
[ "prevented" , [7]],
[ "preventing"  , [7]],
[ "prevents"  , [7]],
[ "prosecute" , [7]],
[ "prosecutes"  , [7]],
[ "prosecution" , [7]],
[ "provoke" , [7]],
[ "provoked"  , [7]],
[ "provokes"  , [7]],
[ "provoking" , [7]],
[ "pushy" , [7]],
[ "questioned"  , [7]],
[ "questioning" , [7]],
[ "rainy" , [7]],
[ "reject"  , [7]],
[ "rejected"  , [7]],
[ "rejecting" , [7]],
[ "rejects" , [7]],
[ "relentless"  , [7]],
[ "repulse" , [7]],
[ "resign"  , [7]],
[ "resigned"  , [7]],
[ "resigning" , [7]],
[ "resigns" , [7]],
[ "retained"  , [7]],
[ "retreat" , [7]],
[ "rig" , [7]],
[ "rigged"  , [7]],
[ "sappy" , [7]],
[ "seduced" , [7]],
[ "shoot" , [7]],
[ "shy" , [7]],
[ "silencing" , [7]],
[ "silly" , [7]],
[ "sneaky"  , [7]],
[ "solemn"  , [7]],
[ "sore"  , [7]],
[ "sorry" , [7]],
[ "squelched" , [7]],
[ "stifled" , [7]],
[ "stop"  , [7]],
[ "stopped" , [7]],
[ "stopping"  , [7]],
[ "stops" , [7]],
[ "strange" , [7]],
[ "strangely" , [7]],
[ "strike"  , [7]],
[ "strikes" , [7]],
[ "struck"  , [7]],
[ "suspect" , [7]],
[ "suspected" , [7]],
[ "suspecting"  , [7]],
[ "suspects"  , [7]],
[ "suspend" , [7]],
[ "suspended" , [7]],
[ "tension" , [7]],
[ "trap"  , [7]],
[ "unbelievable"  , [7]],
[ "unbelieving" , [7]],
[ "uncertain" , [7]],
[ "unclear" , [7]],
[ "unconfirmed" , [7]],
[ "unconvinced" , [7]],
[ "uncredited"  , [7]],
[ "undecided" , [7]],
[ "underestimate" , [7]],
[ "underestimated"  , [7]],
[ "underestimates"  , [7]],
[ "underestimating" , [7]],
[ "unequal" , [7]],
[ "unsettled" , [7]],
[ "unsure"  , [7]],
[ "urgent"  , [7]],
[ "verdict" , [7]],
[ "verdicts"  , [7]],
[ "vociferous"  , [7]],
[ "waste" , [7]],
[ "wavering"  , [7]],
[ "widowed" , [7]],
[ "worn"  , [7]],
[ "some kind" , [6]],
[ "aboard"  , [1]],
[ "absorbed"  , [1]],
[ "accept"  , [1]],
[ "accepted"  , [1]],
[ "accepting" , [1]],
[ "accepts" , [1]],
[ "achievable"  , [1]],
[ "active"  , [1]],
[ "adequate"  , [1]],
[ "adopt" , [1]],
[ "adopts"  , [1]],
[ "advanced"  , [1]],
[ "agree" , [1]],
[ "agreed"  , [1]],
[ "agreement" , [1]],
[ "agrees"  , [1]],
[ "alive" , [1]],
[ "allow" , [1]],
[ "anticipation"  , [1]],
[ "ardent"  , [1]],
[ "attract" , [1]],
[ "attracted" , [1]],
[ "attracts"  , [1]],
[ "authority" , [1]],
[ "backed"  , [1]],
[ "backs" , [1]],
[ "big" , [1]],
[ "boost" , [1]],
[ "boosted" , [1]],
[ "boosting"  , [1]],
[ "boosts"  , [1]],
[ "bright"  , [1]],
[ "brightness"  , [1]],
[ "capable" , [1]],
[ "carefree"  , [1]],
[ "certain" , [1]],
[ "clear" , [1]],
[ "cleared" , [1]],
[ "clearly" , [1]],
[ "clears"  , [1]],
[ "comedy"  , [1]],
[ "commit"  , [1]],
[ "commits" , [1]],
[ "committed" , [1]],
[ "committing"  , [1]],
[ "compelled" , [1]],
[ "convince"  , [1]],
[ "convinced" , [1]],
[ "convinces" , [1]],
[ "cool"  , [1]],
[ "curious" , [1]],
[ "decisive"  , [1]],
[ "desire"  , [1]],
[ "diamond" , [1]],
[ "dream" , [1]],
[ "dreams"  , [1]],
[ "easy"  , [1]],
[ "embrace" , [1]],
[ "engage"  , [1]],
[ "engages" , [1]],
[ "engrossed" , [1]],
[ "ensure"  , [1]],
[ "ensuring"  , [1]],
[ "enterprising"  , [1]],
[ "entitled"  , [1]],
[ "expand"  , [1]],
[ "expands" , [1]],
[ "exploration" , [1]],
[ "explorations"  , [1]],
[ "extend"  , [1]],
[ "extends" , [1]],
[ "faith" , [1]],
[ "fame"  , [1]],
[ "feeling" , [1]],
[ "fit" , [1]],
[ "fitness" , [1]],
[ "forgive" , [1]],
[ "forgiving" , [1]],
[ "free"  , [1]],
[ "fresh" , [1]],
[ "god" , [1]],
[ "grace" , [1]],
[ "grant" , [1]],
[ "granted" , [1]],
[ "granting"  , [1]],
[ "grants"  , [1]],
[ "greet" , [1]],
[ "greeted" , [1]],
[ "greeting"  , [1]],
[ "greets"  , [1]],
[ "growing" , [1]],
[ "guarantee" , [1]],
[ "haunting"  , [1]],
[ "huge"  , [1]],
[ "immune"  , [1]],
[ "increase"  , [1]],
[ "increased" , [1]],
[ "innovate"  , [1]],
[ "innovates" , [1]],
[ "innovation"  , [1]],
[ "intense" , [1]],
[ "interest"  , [1]],
[ "interests" , [1]],
[ "intrigues" , [1]],
[ "invite"  , [1]],
[ "inviting"  , [1]],
[ "jesus" , [1]],
[ "jewel" , [1]],
[ "jewels"  , [1]],
[ "join"  , [1]],
[ "keen"  , [1]],
[ "laugh" , [1]],
[ "laughed" , [1]],
[ "laughing"  , [1]],
[ "laughs"  , [1]],
[ "laughting" , [1]],
[ "launched"  , [1]],
[ "legal" , [1]],
[ "legally" , [1]],
[ "lenient" , [1]],
[ "lighthearted"  , [1]],
[ "matter"  , [1]],
[ "matters" , [1]],
[ "meditative"  , [1]],
[ "motivate"  , [1]],
[ "motivation"  , [1]],
[ "natural" , [1]],
[ "please"  , [1]],
[ "pray"  , [1]],
[ "praying" , [1]],
[ "prays" , [1]],
[ "prepared"  , [1]],
[ "pretty"  , [1]],
[ "promise" , [1]],
[ "promised"  , [1]],
[ "promises"  , [1]],
[ "promote" , [1]],
[ "promoted"  , [1]],
[ "promotes"  , [1]],
[ "promoting" , [1]],
[ "prospect"  , [1]],
[ "prospects" , [1]],
[ "protect" , [1]],
[ "protected" , [1]],
[ "protects"  , [1]],
[ "reach" , [1]],
[ "reached" , [1]],
[ "reaches" , [1]],
[ "reaching"  , [1]],
[ "reassure"  , [1]],
[ "reassured" , [1]],
[ "reassures" , [1]],
[ "relieve" , [1]],
[ "relieves"  , [1]],
[ "restore" , [1]],
[ "restored"  , [1]],
[ "restores"  , [1]],
[ "restoring" , [1]],
[ "safe"  , [1]],
[ "safely"  , [1]],
[ "safety"  , [1]],
[ "salient" , [1]],
[ "share" , [1]],
[ "shared"  , [1]],
[ "shares"  , [1]],
[ "significance"  , [1]],
[ "significant" , [1]],
[ "smart" , [1]],
[ "sobering"  , [1]],
[ "solution"  , [1]],
[ "solutions" , [1]],
[ "solve" , [1]],
[ "solved"  , [1]],
[ "solves"  , [1]],
[ "solving" , [1]],
[ "spark" , [1]],
[ "spirit"  , [1]],
[ "stimulate" , [1]],
[ "stimulated"  , [1]],
[ "stimulates"  , [1]],
[ "straight"  , [1]],
[ "substantial" , [1]],
[ "substantially" , [1]],
[ "supporter" , [1]],
[ "supporters"  , [1]],
[ "supporting"  , [1]],
[ "trust" , [1]],
[ "unified" , [1]],
[ "united"  , [1]],
[ "unmatched" , [1]],
[ "validate"  , [1]],
[ "validated" , [1]],
[ "validates" , [1]],
[ "validating"  , [1]],
[ "vested"  , [1]],
[ "vision"  , [1]],
[ "visioning" , [1]],
[ "visions" , [1]],
[ "vitamin" , [1]],
[ "want"  , [1]],
[ "warm"  , [1]],
[ "whimsical" , [1]],
[ "wish"  , [1]],
[ "wishes"  , [1]],
[ "wishing" , [1]],
[ "yeah"  , [1]],
[ "yearning"  , [1]],
[ "yes" , [1]],
[ "abilities" , [2]],
[ "ability" , [2]],
[ "absolve" , [2]],
[ "absolved"  , [2]],
[ "absolves"  , [2]],
[ "absolving" , [2]],
[ "accomplish"  , [2]],
[ "accomplished"  , [2]],
[ "accomplishes"  , [2]],
[ "acquit"  , [2]],
[ "acquits" , [2]],
[ "acquitted" , [2]],
[ "acquitting"  , [2]],
[ "advantage" , [2]],
[ "advantages"  , [2]],
[ "adventure" , [2]],
[ "adventures"  , [2]],
[ "adventurous" , [2]],
[ "agog"  , [2]],
[ "agreeable" , [2]],
[ "amaze" , [2]],
[ "amazed"  , [2]],
[ "amazes"  , [2]],
[ "ambitious" , [2]],
[ "appease" , [2]],
[ "appeased"  , [2]],
[ "appeases"  , [2]],
[ "appeasing" , [2]],
[ "applaud" , [2]],
[ "applauded" , [2]],
[ "applauding"  , [2]],
[ "applauds"  , [2]],
[ "applause"  , [2]],
[ "appreciate"  , [2]],
[ "appreciated" , [2]],
[ "appreciates" , [2]],
[ "appreciating"  , [2]],
[ "appreciation"  , [2]],
[ "approval"  , [2]],
[ "approved"  , [2]],
[ "approves"  , [2]],
[ "asset" , [2]],
[ "assets"  , [2]],
[ "astonished"  , [2]],
[ "attracting"  , [2]],
[ "attraction"  , [2]],
[ "attractions" , [2]],
[ "avid"  , [2]],
[ "backing" , [2]],
[ "bargain" , [2]],
[ "benefit" , [2]],
[ "benefits"  , [2]],
[ "benefitted"  , [2]],
[ "benefitting" , [2]],
[ "better"  , [2]],
[ "bless" , [2]],
[ "blesses" , [2]],
[ "blithe"  , [2]],
[ "bold"  , [2]],
[ "boldly"  , [2]],
[ "brave" , [2]],
[ "brightest" , [2]],
[ "brisk" , [2]],
[ "buoyant" , [2]],
[ "calm"  , [2]],
[ "calmed"  , [2]],
[ "calming" , [2]],
[ "calms" , [2]],
[ "care"  , [2]],
[ "careful" , [2]],
[ "carefully" , [2]],
[ "cares" , [2]],
[ "chance"  , [2]],
[ "chances" , [2]],
[ "cheer" , [2]],
[ "cheered" , [2]],
[ "cheerful"  , [2]],
[ "cheering"  , [2]],
[ "cheers"  , [2]],
[ "cherish" , [2]],
[ "cherished" , [2]],
[ "cherishes" , [2]],
[ "cherishing"  , [2]],
[ "chic"  , [2]],
[ "clarifies" , [2]],
[ "clarity" , [2]],
[ "clean" , [2]],
[ "cleaner" , [2]],
[ "clever"  , [2]],
[ "comfort" , [2]],
[ "comfortable" , [2]],
[ "comforting"  , [2]],
[ "comforts"  , [2]],
[ "commend" , [2]],
[ "commended" , [2]],
[ "commitment"  , [2]],
[ "compassionate" , [2]],
[ "competent" , [2]],
[ "competitive" , [2]],
[ "comprehensive" , [2]],
[ "conciliate"  , [2]],
[ "conciliated" , [2]],
[ "conciliates" , [2]],
[ "conciliating"  , [2]],
[ "confidence"  , [2]],
[ "confident" , [2]],
[ "congrats"  , [2]],
[ "congratulate"  , [2]],
[ "congratulation"  , [2]],
[ "congratulations" , [2]],
[ "consent" , [2]],
[ "consents"  , [2]],
[ "consolable"  , [2]],
[ "convivial" , [2]],
[ "courage" , [2]],
[ "courageous"  , [2]],
[ "courteous" , [2]],
[ "courtesy"  , [2]],
[ "coziness"  , [2]],
[ "creative"  , [2]],
[ "cute"  , [2]],
[ "daredevil" , [2]],
[ "daring"  , [2]],
[ "dauntless" , [2]],
[ "dear"  , [2]],
[ "debonair"  , [2]],
[ "dedicated" , [2]],
[ "defender"  , [2]],
[ "defenders" , [2]],
[ "desirable" , [2]],
[ "desired" , [2]],
[ "desirous"  , [2]],
[ "determined"  , [2]],
[ "eager" , [2]],
[ "earnest" , [2]],
[ "ease"  , [2]],
[ "effective" , [2]],
[ "effectively" , [2]],
[ "elegant" , [2]],
[ "elegantly" , [2]],
[ "empathetic"  , [2]],
[ "enchanted" , [2]],
[ "encourage" , [2]],
[ "encouraged"  , [2]],
[ "encouragement" , [2]],
[ "encourages"  , [2]],
[ "endorse" , [2]],
[ "endorsed"  , [2]],
[ "endorsement" , [2]],
[ "endorses"  , [2]],
[ "energetic" , [2]],
[ "enjoy" , [2]],
[ "enjoying"  , [2]],
[ "enjoys"  , [2]],
[ "enlighten" , [2]],
[ "enlightened" , [2]],
[ "enlightening"  , [2]],
[ "enlightens"  , [2]],
[ "entertaining"  , [2]],
[ "entrusted" , [2]],
[ "esteemed"  , [2]],
[ "ethical" , [2]],
[ "exasperated" , [2]],
[ "exclusive" , [2]],
[ "exonerate" , [2]],
[ "exonerated"  , [2]],
[ "exonerates"  , [2]],
[ "exonerating" , [2]],
[ "fair"  , [2]],
[ "favor" , [2]],
[ "favored" , [2]],
[ "favorite"  , [2]],
[ "favorited" , [2]],
[ "favorites" , [2]],
[ "favors"  , [2]],
[ "fearless"  , [2]],
[ "fervent" , [2]],
[ "fervid"  , [2]],
[ "festive" , [2]],
[ "fine"  , [2]],
[ "flagship"  , [2]],
[ "focused" , [2]],
[ "fond"  , [2]],
[ "fondness"  , [2]],
[ "fortunate" , [2]],
[ "freedom" , [2]],
[ "friendly"  , [2]],
[ "frisky"  , [2]],
[ "fulfill" , [2]],
[ "fulfilled" , [2]],
[ "fulfills"  , [2]],
[ "funky" , [2]],
[ "futile"  , [2]],
[ "gain"  , [2]],
[ "gained"  , [2]],
[ "gaining" , [2]],
[ "gains" , [2]],
[ "generous"  , [2]],
[ "gift"  , [2]],
[ "glorious"  , [2]],
[ "glory" , [2]],
[ "gratification" , [2]],
[ "greetings" , [2]],
[ "growth"  , [2]],
[ "ha"  , [2]],
[ "hail"  , [2]],
[ "hailed"  , [2]],
[ "hardier" , [2]],
[ "hardy" , [2]],
[ "healthy" , [2]],
[ "heaven"  , [2]],
[ "help"  , [2]],
[ "helpful" , [2]],
[ "helping" , [2]],
[ "helps" , [2]],
[ "hero"  , [2]],
[ "heroes"  , [2]],
[ "highlight" , [2]],
[ "hilarious" , [2]],
[ "honest"  , [2]],
[ "honor" , [2]],
[ "honored" , [2]],
[ "honoring"  , [2]],
[ "honour"  , [2]],
[ "honoured"  , [2]],
[ "honouring" , [2]],
[ "hope"  , [2]],
[ "hopeful" , [2]],
[ "hopefully" , [2]],
[ "hopes" , [2]],
[ "hoping"  , [2]],
[ "hug" , [2]],
[ "hugs"  , [2]],
[ "humor" , [2]],
[ "humorous"  , [2]],
[ "humour"  , [2]],
[ "humourous" , [2]],
[ "immortal"  , [2]],
[ "importance"  , [2]],
[ "important" , [2]],
[ "improve" , [2]],
[ "improved"  , [2]],
[ "improvement" , [2]],
[ "improves"  , [2]],
[ "improving" , [2]],
[ "indestructible"  , [2]],
[ "infatuated"  , [2]],
[ "infatuation" , [2]],
[ "influential" , [2]],
[ "innovative"  , [2]],
[ "inquisitive" , [2]],
[ "inspiration" , [2]],
[ "inspirational" , [2]],
[ "inspire" , [2]],
[ "inspired"  , [2]],
[ "inspires"  , [2]],
[ "intact"  , [2]],
[ "integrity" , [2]],
[ "intelligent" , [2]],
[ "interested"  , [2]],
[ "interesting" , [2]],
[ "intricate" , [2]],
[ "invincible"  , [2]],
[ "invulnerable"  , [2]],
[ "irresistible"  , [2]],
[ "irresponsible" , [2]],
[ "jaunty"  , [2]],
[ "jocular" , [2]],
[ "joke"  , [2]],
[ "jokes" , [2]],
[ "jolly" , [2]],
[ "jovial"  , [2]],
[ "justice" , [2]],
[ "justifiably" , [2]],
[ "justified" , [2]],
[ "kind"  , [2]],
[ "kinder"  , [2]],
[ "kiss"  , [2]],
[ "landmark"  , [2]],
[ "like"  , [2]],
[ "liked" , [2]],
[ "likes" , [2]],
[ "lively"  , [2]],
[ "loving"  , [2]],
[ "mature"  , [2]],
[ "meaningful"  , [2]],
[ "mercy" , [2]],
[ "methodical"  , [2]],
[ "motivated" , [2]],
[ "motivating"  , [2]],
[ "nifty" , [2]],
[ "noble" , [2]],
[ "novel" , [2]],
[ "obsessed"  , [2]],
[ "oks" , [2]],
[ "opportunities" , [2]],
[ "opportunity" , [2]],
[ "optimism"  , [2]],
[ "optimistic"  , [2]],
[ "outreach"  , [2]],
[ "pardon"  , [2]],
[ "pardoned"  , [2]],
[ "pardoning" , [2]],
[ "pardons" , [2]],
[ "passionate"  , [2]],
[ "peace" , [2]],
[ "peaceful"  , [2]],
[ "peacefully"  , [2]],
[ "perfected" , [2]],
[ "perfects"  , [2]],
[ "picturesque" , [2]],
[ "playful" , [2]],
[ "positive"  , [2]],
[ "positively"  , [2]],
[ "powerful"  , [2]],
[ "privileged"  , [2]],
[ "proactive" , [2]],
[ "progress"  , [2]],
[ "prominent" , [2]],
[ "proud" , [2]],
[ "proudly" , [2]],
[ "rapture" , [2]],
[ "raptured"  , [2]],
[ "raptures"  , [2]],
[ "ratified"  , [2]],
[ "reassuring"  , [2]],
[ "recommend" , [2]],
[ "recommended" , [2]],
[ "recommends"  , [2]],
[ "redeemed"  , [2]],
[ "relaxed" , [2]],
[ "reliant" , [2]],
[ "relieved"  , [2]],
[ "relieving" , [2]],
[ "relishing" , [2]],
[ "remarkable"  , [2]],
[ "rescue"  , [2]],
[ "rescued" , [2]],
[ "rescues" , [2]],
[ "resolute"  , [2]],
[ "resolve" , [2]],
[ "resolved"  , [2]],
[ "resolves"  , [2]],
[ "resolving" , [2]],
[ "respected" , [2]],
[ "responsible" , [2]],
[ "responsive"  , [2]],
[ "restful" , [2]],
[ "revered" , [2]],
[ "revive"  , [2]],
[ "revives" , [2]],
[ "reward"  , [2]],
[ "rewarded"  , [2]],
[ "rewarding" , [2]],
[ "rewards" , [2]],
[ "rich"  , [2]],
[ "robust"  , [2]],
[ "romance" , [2]],
[ "satisfied" , [2]],
[ "save"  , [2]],
[ "saved" , [2]],
[ "secure"  , [2]],
[ "secured" , [2]],
[ "secures" , [2]],
[ "self-confident"  , [2]],
[ "serene"  , [2]],
[ "sincere" , [2]],
[ "sincerely" , [2]],
[ "sincerest" , [2]],
[ "sincerity" , [2]],
[ "slick" , [2]],
[ "slicker" , [2]],
[ "slickest"  , [2]],
[ "smarter" , [2]],
[ "smartest"  , [2]],
[ "smile" , [2]],
[ "smiled"  , [2]],
[ "smiles"  , [2]],
[ "smiling" , [2]],
[ "solid" , [2]],
[ "solidarity"  , [2]],
[ "sophisticated" , [2]],
[ "spirited"  , [2]],
[ "sprightly" , [2]],
[ "stable"  , [2]],
[ "stamina" , [2]],
[ "steadfast" , [2]],
[ "stimulating" , [2]],
[ "stout" , [2]],
[ "strength"  , [2]],
[ "strengthen"  , [2]],
[ "strengthened"  , [2]],
[ "strengthening" , [2]],
[ "strengthens" , [2]],
[ "strong"  , [2]],
[ "stronger"  , [2]],
[ "strongest" , [2]],
[ "suave" , [2]],
[ "success" , [2]],
[ "sunshine"  , [2]],
[ "superior"  , [2]],
[ "support" , [2]],
[ "supported" , [2]],
[ "supportive"  , [2]],
[ "supports"  , [2]],
[ "survived"  , [2]],
[ "surviving" , [2]],
[ "survivor"  , [2]],
[ "sweet" , [2]],
[ "swift" , [2]],
[ "swiftly" , [2]],
[ "sympathetic" , [2]],
[ "sympathy"  , [2]],
[ "tender"  , [2]],
[ "thank" , [2]],
[ "thankful"  , [2]],
[ "thanks"  , [2]],
[ "thoughtful"  , [2]],
[ "tolerant"  , [2]],
[ "top" , [2]],
[ "tops"  , [2]],
[ "tranquil"  , [2]],
[ "treasure"  , [2]],
[ "treasures" , [2]],
[ "TRUE"  , [2]],
[ "trusted" , [2]],
[ "unbiased"  , [2]],
[ "unequaled" , [2]],
[ "unstoppable" , [2]],
[ "untarnished" , [2]],
[ "useful"  , [2]],
[ "usefulness"  , [2]],
[ "vindicate" , [2]],
[ "vindicated"  , [2]],
[ "vindicates"  , [2]],
[ "vindicating" , [2]],
[ "virtuous"  , [2]],
[ "warmth"  , [2]],
[ "wealthy" , [2]],
[ "welcome" , [2]],
[ "welcomed"  , [2]],
[ "welcomes"  , [2]],
[ "willingness" , [2]],
[ "worth" , [2]],
[ "worthy"  , [2]],
[ "yeees" , [2]],
[ "youthful"  , [2]],
[ "zealous" , [2]],
[ "admire"  , [3]],
[ "admired" , [3]],
[ "admires" , [3]],
[ "admiring"  , [3]],
[ "adorable"  , [3]],
[ "adore" , [3]],
[ "adored"  , [3]],
[ "adores"  , [3]],
[ "affection" , [3]],
[ "affectionate"  , [3]],
[ "amuse" , [3]],
[ "amused"  , [3]],
[ "amusement" , [3]],
[ "amusements"  , [3]],
[ "astound" , [3]],
[ "astounded" , [3]],
[ "astounding"  , [3]],
[ "astoundingly"  , [3]],
[ "astounds"  , [3]],
[ "audacious" , [3]],
[ "award" , [3]],
[ "awarded" , [3]],
[ "awards"  , [3]],
[ "beatific"  , [3]],
[ "beauties"  , [3]],
[ "beautiful" , [3]],
[ "beautifully" , [3]],
[ "beautify"  , [3]],
[ "beloved" , [3]],
[ "best"  , [3]],
[ "blessing"  , [3]],
[ "bliss" , [3]],
[ "blissful"  , [3]],
[ "blockbuster" , [3]],
[ "breakthrough"  , [3]],
[ "captivated"  , [3]],
[ "celebrate" , [3]],
[ "celebrated"  , [3]],
[ "celebrates"  , [3]],
[ "celebrating" , [3]],
[ "charm" , [3]],
[ "charming"  , [3]],
[ "cheery"  , [3]],
[ "classy"  , [3]],
[ "cool stuff"  , [3]],
[ "dearly"  , [3]],
[ "delight" , [3]],
[ "delighted" , [3]],
[ "delighting"  , [3]],
[ "delights"  , [3]],
[ "devoted" , [3]],
[ "elated"  , [3]],
[ "elation" , [3]],
[ "enrapture" , [3]],
[ "enthral" , [3]],
[ "enthusiastic"  , [3]],
[ "euphoria"  , [3]],
[ "excellence"  , [3]],
[ "excellent" , [3]],
[ "excite"  , [3]],
[ "excited" , [3]],
[ "excitement"  , [3]],
[ "exciting"  , [3]],
[ "exhilarated" , [3]],
[ "exhilarates" , [3]],
[ "exhilarating"  , [3]],
[ "exultant"  , [3]],
[ "exultantly"  , [3]],
[ "faithful"  , [3]],
[ "fan" , [3]],
[ "fascinate" , [3]],
[ "fascinated"  , [3]],
[ "fascinates"  , [3]],
[ "fascinating" , [3]],
[ "ftw" , [3]],
[ "gallant" , [3]],
[ "gallantly" , [3]],
[ "gallantry" , [3]],
[ "genial"  , [3]],
[ "glad"  , [3]],
[ "glamorous" , [3]],
[ "glamourous"  , [3]],
[ "glee"  , [3]],
[ "gleeful" , [3]],
[ "good"  , [3]],
[ "goodness"  , [3]],
[ "gracious"  , [3]],
[ "grand" , [3]],
[ "grateful"  , [3]],
[ "great" , [3]],
[ "greater" , [3]],
[ "greatest"  , [3]],
[ "haha"  , [3]],
[ "hahaha"  , [3]],
[ "hahahah" , [3]],
[ "happiness" , [3]],
[ "happy" , [3]],
[ "heartfelt" , [3]],
[ "heroic"  , [3]],
[ "humerous"  , [3]],
[ "impress" , [3]],
[ "impressed" , [3]],
[ "impresses" , [3]],
[ "impressive"  , [3]],
[ "inspiring" , [3]],
[ "joy" , [3]],
[ "joyful"  , [3]],
[ "joyfully"  , [3]],
[ "joyous"  , [3]],
[ "jubilant"  , [3]],
[ "kudos" , [3]],
[ "lawl"  , [3]],
[ "lol" , [3]],
[ "lovable" , [3]],
[ "love"  , [3]],
[ "loved" , [3]],
[ "lovelies"  , [3]],
[ "lovely"  , [3]],
[ "loyal" , [3]],
[ "loyalty" , [3]],
[ "luck"  , [3]],
[ "luckily" , [3]],
[ "lucky" , [3]],
[ "marvel"  , [3]],
[ "marvelous" , [3]],
[ "marvels" , [3]],
[ "medal" , [3]],
[ "merry" , [3]],
[ "mirth" , [3]],
[ "mirthful"  , [3]],
[ "mirthfully"  , [3]],
[ "nice"  , [3]],
[ "ominous" , [3]],
[ "once-in-a-lifetime"  , [3]],
[ "paradise"  , [3]],
[ "perfect" , [3]],
[ "perfectly" , [3]],
[ "pleasant"  , [3]],
[ "pleased" , [3]],
[ "pleasure"  , [3]],
[ "popular" , [3]],
[ "praise"  , [3]],
[ "praised" , [3]],
[ "praises" , [3]],
[ "praising"  , [3]],
[ "prosperous"  , [3]],
[ "right direction" , [3]],
[ "rigorous"  , [3]],
[ "rigorously"  , [3]],
[ "scoop" , [3]],
[ "sexy"  , [3]],
[ "soothe"  , [3]],
[ "soothed" , [3]],
[ "soothing"  , [3]],
[ "sparkle" , [3]],
[ "sparkles"  , [3]],
[ "sparkling" , [3]],
[ "splendid"  , [3]],
[ "successful"  , [3]],
[ "super" , [3]],
[ "vibrant" , [3]],
[ "vigilant"  , [3]],
[ "visionary" , [3]],
[ "vitality"  , [3]],
[ "vivacious" , [3]],
[ "wealth"  , [3]],
[ "winwin"  , [3]],
[ "won" , [3]],
[ "woo" , [3]],
[ "woohoo"  , [3]],
[ "worshiped" , [3]],
[ "yummy" , [3]],
[ "amazing" , [4]],
[ "awesome" , [4]],
[ "brilliant" , [4]],
[ "ecstatic"  , [4]],
[ "euphoric"  , [4]],
[ "exuberant" , [4]],
[ "fabulous"  , [4]],
[ "fantastic" , [4]],
[ "fun" , [4]],
[ "funnier" , [4]],
[ "funny" , [4]],
[ "godsend" , [4]],
[ "heavenly"  , [4]],
[ "lifesaver" , [4]],
[ "lmao"  , [4]],
[ "lmfao" , [4]],
[ "masterpiece" , [4]],
[ "masterpieces"  , [4]],
[ "miracle" , [4]],
[ "overjoyed" , [4]],
[ "rapturous" , [4]],
[ "rejoice" , [4]],
[ "rejoiced"  , [4]],
[ "rejoices"  , [4]],
[ "rejoicing" , [4]],
[ "rofl"  , [4]],
[ "roflcopter"  , [4]],
[ "roflmao" , [4]],
[ "rotfl" , [4]],
[ "rotflmfao" , [4]],
[ "rotflol" , [4]],
[ "stunning"  , [4]],
[ "terrific"  , [4]],
[ "triumph" , [4]],
[ "triumphant"  , [4]],
[ "win" , [4]],
[ "winner"  , [4]],
[ "winning" , [4]],
[ "wins"  , [4]],
[ "wonderful" , [4]],
[ "wooo"  , [4]],
[ "woow"  , [4]],
[ "wow" , [4]],
[ "wowow" , [4]],
[ "wowww" , [4]],
[ "breathtaking"  , [5]],
[ "hurrah"  , [5]],
[ "outstanding" , [5]],
[ "superb"  , [5]],
[ "thrilled"  , [5]]
]

keywords.each do |word, rating|
  Keyword.create(word: word, value_ids: rating)
end
# words_one = { abandon: -2, abandoned: -2, abandons: -2, abducted: -2, abduction: -2, abductions: -2, abhor: -3, abhorred: -3, abhorrent: -3, abhors: -3, abilities: 2, ability: 2, aboard: 1, absentee: -1, absentees: -1, absolve: 2, absolved: 2, absolves: 2, absolving: 2, absorbed: 1, abuse: -3, abused: -3, abuses: -3, abusive: -3, accept: 1, accepted: 1, accepting: 1, accepts: 1, accident: -2, accidental: -2, accidentally: -2, accidents: -2, accomplish: 2, accomplished: 2, accomplishes: 2, accusation: -2, accusations: -2, accuse: -2, accused: -2, accuses: -2, accusing: -2, ache: -2, achievable: 1, aching: -2, acquit: 2, acquits: 2, acquitted: 2, acquitting: 2, acrimonious: -3, active: 1, adequate: 1, admire: 3, admired: 3, admires: 3, admiring: 3, admit: -1, admits: -1, admitted: -1, admonish: -2, admonished: -2, adopt: 1, adopts: 1, adorable: 3, adore: 3, adored: 3, adores: 3, advanced: 1, advantage: 2, advantages: 2, adventure: 2, adventures: 2, adventurous: 2, affected: -1, affection: 3, affectionate: 3, afflicted: -1, affronted: -1, afraid: -2, aggravate: -2, aggravated: -2, aggravates: -2, aggravating: -2, aggression: -2, aggressions: -2, aggressive: -2, aghast: -2, agog: 2, agonise: -3, agonised: -3, agonises: -3, agonising: -3, agonize: -3, agonized: -3, agonizes: -3, agonizing: -3, agree: 1, agreeable: 2, agreed: 1, agreement: 1, agrees: 1, alarm: -2, alarmed: -2, alarmist: -2, alarmists: -2, alas: -1, alert: -1, alienation: -2, alive: 1, allergic: -2, allow: 1, alone: -2, amaze: 2, amazed: 2, amazes: 2, amazing: 4, ambitious: 2, ambivalent: -1, amuse: 3, amused: 3, amusement: 3, amusements: 3, anger: -3, angers: -3, angry: -3, anguish: -3, anguished: -3, animosity: -2, annoy: -2, annoyance: -2, annoyed: -2, annoying: -2, annoys: -2, antagonistic: -2, anti: -1, anticipation: 1, anxiety: -2, anxious: -2, apathetic: -3, apathy: -3, apeshit: -3, apocalyptic: -2, apologise: -1, apologised: -1, apologises: -1, apologising: -1, apologize: -1, apologized: -1, apologizes: -1, apologizing: -1, apology: -1, appalled: -2, appalling: -2, appease: 2, appeased: 2, appeases: 2, appeasing: 2, applaud: 2, applauded: 2, applauding: 2, applauds: 2, applause: 2, appreciate: 2, appreciated: 2, appreciates: 2, appreciating: 2, appreciation: 2, apprehensive: -2, approval: 2, approved: 2, approves: 2, ardent: 1, arrest: -2, arrested: -3, arrests: -2, arrogant: -2, ashame: -2, ashamed: -2, ass: -4, assassination: -3, assassinations: -3, asset: 2, assets: 2, assfucking: -4, asshole: -4, astonished: 2, astound: 3, astounded: 3, astounding: 3, astoundingly: 3, astounds: 3, attack: -1, attacked: -1, attacking: -1, attacks: -1, attract: 1, attracted: 1, attracting: 2, attraction: 2, attractions: 2, attracts: 1, audacious: 3, authority: 1, avert: -1, averted: -1, averts: -1, avid: 2, avoid: -1, avoided: -1, avoids: -1, await: -1, awaited: -1, awaits: -1, award: 3, awarded: 3, awards: 3, awesome: 4, awful: -3, awkward: -2, axe: -1, axed: -1, backed: 1, backing: 2, backs: 1, bad: -3, badass: -3, badly: -3, bailout: -2, bamboozle: -2, bamboozled: -2, bamboozles: -2, ban: -2, banish: -1, bankrupt: -3, bankster: -3, banned: -2, bargain: 2, barrier: -2, bastard: -5, bastards: -5, battle: -1, battles: -1, beaten: -2, beatific: 3, beating: -1, beauties: 3, beautiful: 3, beautifully: 3, beautify: 3, belittle: -2, belittled: -2, beloved: 3, benefit: 2, benefits: 2, benefitted: 2, benefitting: 2, bereave: -2, bereaved: -2, bereaves: -2, bereaving: -2, best: 3, betray: -3, betrayal: -3, betrayed: -3, betraying: -3, betrays: -3, better: 2, bias: -1, biased: -2, big: 1, bitch: -5, bitches: -5, bitter: -2, bitterly: -2, bizarre: -2, blah: -2, blame: -2, blamed: -2, blames: -2, blaming: -2, bless: 2, blesses: 2, blessing: 3, blind: -1, bliss: 3, blissful: 3, blithe: 2, block: -1 }

# words_two = { blockbuster: 3, blocked: -1, blocking: -1, blocks: -1, bloody: -3, blurry: -2, boastful: -2, bold: 2, boldly: 2, bomb: -1, boost: 1, boosted: 1, boosting: 1, boosts: 1, bore: -2, bored: -2, boring: -3, bother: -2, bothered: -2, bothers: -2, bothersome: -2, boycott: -2, boycotted: -2, boycotting: -2, boycotts: -2, brainwashing: -3, brave: 2, breakthrough: 3, breathtaking: 5, bribe: -3, bright: 1, brightest: 2, brightness: 1, brilliant: 4, brisk: 2, broke: -1, broken: -1, brooding: -2, bullied: -2, bullshit: -4, bully: -2, bullying: -2, bummer: -2, buoyant: 2, burden: -2, burdened: -2, burdening: -2, burdens: -2, calm: 2, calmed: 2, calming: 2, calms: 2, can't stand: -3, cancel: -1, cancelled: -1, cancelling: -1, cancels: -1, cancer: -1, capable: 1, captivated: 3, care: 2, carefree: 1, careful: 2, carefully: 2, careless: -2, cares: 2, cashing in: -2, casualty: -2, catastrophe: -3, catastrophic: -4, cautious: -1, celebrate: 3, celebrated: 3, celebrates: 3, celebrating: 3, censor: -2, censored: -2, censors: -2, certain: 1, chagrin: -2, chagrined: -2, challenge: -1, chance: 2, chances: 2, chaos: -2, chaotic: -2, charged: -3, charges: -2, charm: 3, charming: 3, charmless: -3, chastise: -3, chastised: -3, chastises: -3, chastising: -3, cheat: -3, cheated: -3, cheater: -3, cheaters: -3, cheats: -3, cheer: 2, cheered: 2, cheerful: 2, cheering: 2, cheerless: -2, cheers: 2, cheery: 3, cherish: 2, cherished: 2, cherishes: 2, cherishing: 2, chic: 2, childish: -2, chilling: -1, choke: -2, choked: -2, chokes: -2, choking: -2, clarifies: 2, clarity: 2, clash: -2, classy: 3, clean: 2, cleaner: 2, clear: 1, cleared: 1, clearly: 1, clears: 1, clever: 2, clouded: -1, clueless: -2, cock: -5, cocksucker: -5, cocksuckers: -5, cocky: -2, coerced: -2, collapse: -2, collapsed: -2, collapses: -2, collapsing: -2, collide: -1, collides: -1, colliding: -1, collision: -2, collisions: -2, colluding: -3, combat: -1, combats: -1, comedy: 1, comfort: 2, comfortable: 2, comforting: 2, comforts: 2, commend: 2, commended: 2, commit: 1, commitment: 2, commits: 1, committed: 1, committing: 1, compassionate: 2, compelled: 1, competent: 2, competitive: 2, complacent: -2, complain: -2, complained: -2, complains: -2, comprehensive: 2, conciliate: 2, conciliated: 2, conciliates: 2, conciliating: 2, condemn: -2, condemnation: -2, condemned: -2, condemns: -2, confidence: 2, confident: 2, conflict: -2, conflicting: -2, conflictive: -2, conflicts: -2, confuse: -2, confused: -2, confusing: -2, congrats: 2, congratulate: 2, congratulation: 2, congratulations: 2, consent: 2, consents: 2, consolable: 2, conspiracy: -3, constrained: -2, contagion: -2, contagions: -2, contagious: -1, contempt: -2, contemptuous: -2, contemptuously: -2, contend: -1, contender: -1, contending: -1, contentious: -2, contestable: -2, controversial: -2, controversially: -2, convince: 1, convinced: 1, convinces: 1, convivial: 2, cool: 1 }


# words_three = { cornered: -2, corpse: -1, costly: -2, courage: 2, courageous: 2, courteous: 2, courtesy: 2, cover-up: -3, coward: -2, cowardly: -2, coziness: 2, cramp: -1, crap: -3, crash: -2, crazier: -2, craziest: -2, crazy: -2, creative: 2, crestfallen: -2, cried: -2, cries: -2, crime: -3, criminal: -3, criminals: -3, crisis: -3, critic: -2, criticism: -2, criticize: -2, criticized: -2, criticizes: -2, criticizing: -2, critics: -2, cruel: -3, cruelty: -3, crush: -1, crushed: -2, crushes: -1, crushing: -1, cry: -1, crying: -2, cunt: -5, curious: 1, curse: -1, cut: -1, cute: 2, cuts: -1, cutting: -1, cynic: -2, cynical: -2, cynicism: -2, damage: -3, damages: -3, damn: -4, damned: -4, damnit: -4, danger: -2, daredevil: 2, daring: 2, darkest: -2, darkness: -1, dauntless: 2, dead: -3, deadlock: -2, deafening: -1, dear: 2, dearly: 3, death: -2, debonair: 2, debt: -2, deceit: -3, deceitful: -3, deceive: -3, deceived: -3, deceives: -3, deceiving: -3, deception: -3, decisive: 1, dedicated: 2, defeated: -2, defect: -3, defects: -3, defender: 2, defenders: 2, defenseless: -2, defer: -1, deferring: -1, defiant: -1, deficit: -2, degrade: -2, degraded: -2, degrades: -2, dehumanize: -2, dehumanized: -2, dehumanizes: -2, dehumanizing: -2, deject: -2, dejected: -2, dejecting: -2, dejects: -2, delay: -1, delayed: -1, delight: 3, delighted: 3, delighting: 3, delights: 3, demand: -1, demanded: -1, demanding: -1, demands: -1, demonstration: -1, demoralized: -2, denied: -2, denier: -2, deniers: -2, denies: -2, denounce: -2, denounces: -2, deny: -2, denying: -2, depressed: -2, depressing: -2, derail: -2, derailed: -2, derails: -2, deride: -2, derided: -2, derides: -2, deriding: -2, derision: -2, desirable: 2, desire: 1, desired: 2, desirous: 2, despair: -3, despairing: -3, despairs: -3, desperate: -3, desperately: -3, despondent: -3, destroy: -3, destroyed: -3, destroying: -3, destroys: -3, destruction: -3, destructive: -3, detached: -1, detain: -2, detained: -2, detention: -2, determined: 2, devastate: -2, devastated: -2, devastating: -2, devoted: 3, diamond: 1, dick: -4, dickhead: -4, die: -3, died: -3, difficult: -1, diffident: -2, dilemma: -1, dipshit: -3, dire: -3, direful: -3, dirt: -2, dirtier: -2, dirtiest: -2, dirty: -2, disabling: -1, disadvantage: -2, disadvantaged: -2, disappear: -1, disappeared: -1, disappears: -1, disappoint: -2, disappointed: -2, disappointing: -2, disappointment: -2, disappointments: -2, disappoints: -2, disaster: -2, disasters: -2, disastrous: -3, disbelieve: -2, discard: -1, discarded: -1, discarding: -1, discards: -1, disconsolate: -2, disconsolation: -2, discontented: -2, discord: -2, discounted: -1, discouraged: -2, discredited: -2, disdain: -2, disgrace: -2, disgraced: -2, disguise: -1, disguised: -1, disguises: -1, disguising: -1, disgust: -3, disgusted: -3, disgusting: -3, disheartened: -2, dishonest: -2, disillusioned: -2, disinclined: -2, disjointed: -2, dislike: -2, dismal: -2, dismayed: -2, disorder: -2, disorganized: -2, disoriented: -2, disparage: -2, disparaged: -2, disparages: -2, disparaging: -2, displeased: -2, dispute: -2, disputed: -2, disputes: -2, disputing: -2, disqualified: -2, disquiet: -2, disregard: -2, disregarded: -2, disregarding: -2, disregards: -2, disrespect: -2, disrespected: -2, disruption: -2, disruptions: -2, disruptive: -2, dissatisfied: -2, distort: -2, distorted: -2, distorting: -2, distorts: -2, distract: -2, distracted: -2, distraction: -2, distracts: -2, distress: -2, distressed: -2, distresses: -2, distressing: -2, distrust: -3, distrustful: -3, disturb: -2, disturbed: -2, disturbing: -2, disturbs: -2, dithering: -2, dizzy: -1, dodging: -2, dodgy: -2, does not work: -3, dolorous: -2, dont like: -2, doom: -2, doomed: -2, doubt: -1, doubted: -1, doubtful: -1, doubting: -1, doubts: -1, douche: -3, douchebag: -3, downcast: -2, downhearted: -2, downside: -2, drag: -1, dragged: -1, drags: -1, drained: -2, dread: -2, dreaded: -2, dreadful: -3, dreading: -2, dream: 1, dreams: 1, dreary: -2, droopy: -2, drop: -1, drown: -2, drowned: -2, drowns: -2, drunk: -2, dubious: -2, dud: -2, dull: -2, dumb: -3, dumbass: -3, dump: -1, dumped: -2, dumps: -1, dupe: -2, duped: -2, dysfunction: -2, eager: 2, earnest: 2, ease: 2, easy: 1, ecstatic: 4, eerie: -2, eery: -2, effective: 2, effectively: 2, elated: 3, elation: 3, elegant: 2, elegantly: 2, embarrass: -2, embarrassed: -2, embarrasses: -2, embarrassing: -2, embarrassment: -2, embittered: -2, embrace: 1, emergency: -2, empathetic: 2, emptiness: -1, empty: -1, enchanted: 2, encourage: 2, encouraged: 2, encouragement: 2, encourages: 2, endorse: 2, endorsed: 2, endorsement: 2, endorses: 2, enemies: -2, enemy: -2, energetic: 2, engage: 1, engages: 1, engrossed: 1, enjoy: 2, enjoying: 2, enjoys: 2, enlighten: 2, enlightened: 2, enlightening: 2, enlightens: 2, ennui: -2, enrage: -2, enraged: -2, enrages: -2, enraging: -2, enrapture: 3, enslave: -2, enslaved: -2, enslaves: -2, ensure: 1, ensuring: 1, enterprising: 1, entertaining: 2, enthral: 3, enthusiastic: 3, entitled: 1, entrusted: 2, envies: -1, envious: -2, envy: -1, envying: -1, erroneous: -2, error: -2, errors: -2, escape: -1, escapes: -1, escaping: -1, esteemed: 2, ethical: 2, euphoria: 3, euphoric: 4, eviction: -1, evil: -3, exaggerate: -2, exaggerated: -2, exaggerates: -2, exaggerating: -2, exasperated: 2, excellence: 3, excellent: 3, excite: 3, excited: 3, excitement: 3, exciting: 3, exclude: -1, excluded: -2, exclusion: -1, exclusive: 2, excuse: -1, exempt: -1, exhausted: -2, exhilarated: 3, exhilarates: 3, exhilarating: 3, exonerate: 2, exonerated: 2, exonerates: 2, exonerating: 2, expand: 1 }

# expands: 1
# expel: -2
# expelled: -2
# expelling: -2
# expels: -2
# exploit: -2
# exploited: -2
# exploiting: -2
# exploits: -2
# exploration: 1
# explorations: 1
# expose: -1
# exposed: -1
# exposes: -1
# exposing: -1
# extend: 1
# extends: 1
# exuberant: 4
# exultant: 3
# exultantly: 3
# fabulous: 4
# fad: -2
# fag: -3
# faggot: -3
# faggots: -3
# fail: -2
# failed: -2
# failing: -2
# fails: -2
# failure: -2
# failures: -2
# fainthearted: -2
# fair: 2
# faith: 1
# faithful: 3
# fake: -3
# fakes: -3
# faking: -3
# fallen: -2
# falling: -1
# falsified: -3
# falsify: -3
# fame: 1
# fan: 3
# fantastic: 4
# farce: -1
# fascinate: 3
# fascinated: 3
# fascinates: 3
# fascinating: 3
# fascist: -2
# fascists: -2
# fatalities: -3
# fatality: -3
# fatigue: -2
# fatigued: -2
# fatigues: -2
# fatiguing: -2
# favor: 2
# favored: 2
# favorite: 2
# favorited: 2
# favorites: 2
# favors: 2
# fear: -2
# fearful: -2
# fearing: -2
# fearless: 2
# fearsome: -2
# fed up: -3
# feeble: -2
# feeling: 1
# felonies: -3
# felony: -3
# fervent: 2
# fervid: 2
# festive: 2
# fiasco: -3
# fidgety: -2
# fight: -1
# fine: 2
# fire: -2
# fired: -2
# firing: -2
# fit: 1
# fitness: 1
# flagship: 2
# flees: -1
# flop: -2
# flops: -2
# flu: -2
# flustered: -2
# focused: 2
# fond: 2
# fondness: 2
# fool: -2
# foolish: -2
# fools: -2
# forced: -1
# foreclosure: -2
# foreclosures: -2
# forget: -1
# forgetful: -2
# forgive: 1
# forgiving: 1
# forgotten: -1
# fortunate: 2
# frantic: -1
# fraud: -4
# frauds: -4
# fraudster: -4
# fraudsters: -4
# fraudulence: -4
# fraudulent: -4
# free: 1
# freedom: 2
# frenzy: -3
# fresh: 1
# friendly: 2
# fright: -2
# frightened: -2
# frightening: -3
# frikin: -2
# frisky: 2
# frowning: -1
# frustrate: -2
# frustrated: -2
# frustrates: -2
# frustrating: -2
# frustration: -2
# ftw: 3
# fucked: -4
# fucker: -4
# fuckers: -4
# fuckface: -4
# fuckhead: -4
# fucking: -4
# fucktard: -4
# fud: -3
# fuked: -4
# fuking: -4
# fulfill: 2
# fulfilled: 2
# fulfills: 2
# fuming: -2
# fun: 4
# funeral: -1
# funerals: -1
# funky: 2
# funnier: 4
# funny: 4
# furious: -3
# futile: 2
# gag: -2
# gagged: -2
# gain: 2
# gained: 2
# gaining: 2
# gains: 2
# gallant: 3
# gallantly: 3
# gallantry: 3
# generous: 2
# genial: 3
# ghost: -1
# giddy: -2
# gift: 2
# glad: 3
# glamorous: 3
# glamourous: 3
# glee: 3
# gleeful: 3
# gloom: -1
# gloomy: -2
# glorious: 2
# glory: 2
# glum: -2
# god: 1
# goddamn: -3
# godsend: 4
# good: 3
# goodness: 3
# grace: 1
# gracious: 3
# grand: 3
# grant: 1
# granted: 1
# granting: 1
# grants: 1
# grateful: 3
# gratification: 2
# grave: -2
# gray: -1
# great: 3
# greater: 3
# greatest: 3
# greed: -3
# greedy: -2
# green wash: -3
# green washing: -3
# greenwash: -3
# greenwasher: -3
# greenwashers: -3
# greenwashing: -3
# greet: 1
# greeted: 1
# greeting: 1
# greetings: 2
# greets: 1
# grey: -1
# grief: -2
# grieved: -2
# gross: -2
# growing: 1
# growth: 2
# guarantee: 1
# guilt: -3
# guilty: -3
# gullibility: -2
# gullible: -2
# gun: -1
# ha: 2
# hacked: -1
# haha: 3
# hahaha: 3
# hahahah: 3
# hail: 2
# hailed: 2
# hapless: -2
# haplessness: -2
# happiness: 3
# happy: 3
# hard: -1
# hardier: 2
# hardship: -2
# hardy: 2
# harm: -2
# harmed: -2
# harmful: -2
# harming: -2
# harms: -2
# harried: -2
# harsh: -2
# harsher: -2
# harshest: -2
# hate: -3
# hated: -3
# haters: -3
# hates: -3
# hating: -3
# haunt: -1
# haunted: -2
# haunting: 1
# haunts: -1
# havoc: -2
# healthy: 2
# heartbreaking: -3
# heartbroken: -3
# heartfelt: 3
# heaven: 2
# heavenly: 4
# heavyhearted: -2
# hell: -4
# help: 2
# helpful: 2
# helping: 2
# helpless: -2
# helps: 2
# hero: 2
# heroes: 2
# heroic: 3
# hesitant: -2
# hesitate: -2
# hid: -1
# hide: -1
# hides: -1
# hiding: -1
# highlight: 2
# hilarious: 2
# hindrance: -2
# hoax: -2
# homesick: -2
# honest: 2
# honor: 2
# honored: 2
# honoring: 2
# honour: 2
# honoured: 2
# honouring: 2
# hooligan: -2
# hooliganism: -2
# hooligans: -2
# hope: 2
# hopeful: 2
# hopefully: 2
# hopeless: -2
# hopelessness: -2
# hopes: 2
# hoping: 2
# horrendous: -3
# horrible: -3
# horrific: -3
# horrified: -3
# hostile: -2
# huckster: -2
# hug: 2
# huge: 1
# hugs: 2
# humerous: 3
# humiliated: -3
# humiliation: -3
# humor: 2
# humorous: 2
# humour: 2
# humourous: 2
# hunger: -2
# hurrah: 5
# hurt: -2
# hurting: -2
# hurts: -2
# hypocritical: -2
# hysteria: -3
# hysterical: -3
# hysterics: -3
# idiot: -3
# idiotic: -3
# ignorance: -2
# ignorant: -2
# ignore: -1
# ignored: -2
# ignores: -1
# ill: -2
# illegal: -3
# illiteracy: -2
# illness: -2
# illnesses: -2
# imbecile: -3
# immobilized: -1
# immortal: 2
# immune: 1
# impatient: -2
# imperfect: -2
# importance: 2
# important: 2
# impose: -1
# imposed: -1
# imposes: -1
# imposing: -1
# impotent: -2
# impress: 3
# impressed: 3
# impresses: 3
# impressive: 3
# imprisoned: -2
# improve: 2
# improved: 2
# improvement: 2
# improves: 2
# improving: 2
# inability: -2
# inaction: -2
# inadequate: -2
# incapable: -2
# incapacitated: -2
# incensed: -2
# incompetence: -2
# incompetent: -2
# inconsiderate: -2
# inconvenience: -2
# inconvenient: -2
# increase: 1
# increased: 1
# indecisive: -2
# indestructible: 2
# indifference: -2
# indifferent: -2
# indignant: -2
# indignation: -2
# indoctrinate: -2
# indoctrinated: -2
# indoctrinates: -2
# indoctrinating: -2
# ineffective: -2
# ineffectively: -2
# infatuated: 2
# infatuation: 2
# infected: -2
# inferior: -2
# inflamed: -2
# influential: 2
# infringement: -2
# infuriate: -2
# infuriated: -2
# infuriates: -2
# infuriating: -2
# inhibit: -1
# injured: -2
# injury: -2
# injustice: -2
# innovate: 1
# innovates: 1
# innovation: 1
# innovative: 2
# inquisition: -2
# inquisitive: 2
# insane: -2
# insanity: -2
# insecure: -2
# insensitive: -2
# insensitivity: -2
# insignificant: -2
# insipid: -2
# inspiration: 2
# inspirational: 2
# inspire: 2
# inspired: 2
# inspires: 2
# inspiring: 3
# insult: -2
# insulted: -2
# insulting: -2
# insults: -2
# intact: 2
# integrity: 2
# intelligent: 2
# intense: 1
# interest: 1
# interested: 2
# interesting: 2
# interests: 1
# interrogated: -2
# interrupt: -2
# interrupted: -2
# interrupting: -2
# interruption: -2
# interrupts: -2
# intimidate: -2
# intimidated: -2
# intimidates: -2
# intimidating: -2
# intimidation: -2
# intricate: 2
# intrigues: 1
# invincible: 2
# invite: 1
# inviting: 1
# invulnerable: 2
# irate: -3
# ironic: -1
# irony: -1
# irrational: -1
# irresistible: 2
# irresolute: -2
# irresponsible: 2
# irreversible: -1
# irritate: -3
# irritated: -3
# irritating: -3
# isolated: -1
# itchy: -2
# jackass: -4
# jackasses: -4
# jailed: -2
# jaunty: 2
# jealous: -2
# jeopardy: -2
# jerk: -3
# jesus: 1
# jewel: 1
# jewels: 1
# jocular: 2
# join: 1
# joke: 2
# jokes: 2
# jolly: 2
# jovial: 2
# joy: 3
# joyful: 3
# joyfully: 3
# joyless: -2
# joyous: 3
# jubilant: 3
# jumpy: -1
# justice: 2
# justifiably: 2
# justified: 2
# keen: 1
# kill: -3
# killed: -3
# killing: -3
# kills: -3
# kind: 2
# kinder: 2
# kiss: 2
# kudos: 3
# lack: -2
# lackadaisical: -2
# lag: -1
# lagged: -2
# lagging: -2
# lags: -2
# lame: -2
# landmark: 2
# laugh: 1
# laughed: 1
# laughing: 1
# laughs: 1
# laughting: 1
# launched: 1
# lawl: 3
# lawsuit: -2
# lawsuits: -2
# lazy: -1
# leak: -1
# leaked: -1
# leave: -1
# legal: 1
# legally: 1
# lenient: 1
# lethargic: -2
# lethargy: -2
# liar: -3
# liars: -3
# libelous: -2
# lied: -2
# lifesaver: 4
# lighthearted: 1
# like: 2
# liked: 2
# likes: 2
# limitation: -1
# limited: -1
# limits: -1
# litigation: -1
# litigious: -2
# lively: 2
# livid: -2
# lmao: 4
# lmfao: 4
# loathe: -3
# loathed: -3
# loathes: -3
# loathing: -3
# lobby: -2
# lobbying: -2
# lol: 3
# lonely: -2
# lonesome: -2
# longing: -1
# loom: -1
# loomed: -1
# looming: -1
# looms: -1
# loose: -3
# looses: -3
# loser: -3
# losing: -3
# loss: -3
# lost: -3
# lovable: 3
# love: 3
# loved: 3
# lovelies: 3
# lovely: 3
# loving: 2
# lowest: -1
# loyal: 3
# loyalty: 3
# luck: 3
# luckily: 3
# lucky: 3
# lugubrious: -2
# lunatic: -3
# lunatics: -3
# lurk: -1
# lurking: -1
# lurks: -1
# mad: -3
# maddening: -3
# made-up: -1
# madly: -3
# madness: -3
# mandatory: -1
# manipulated: -1
# manipulating: -1
# manipulation: -1
# marvel: 3
# marvelous: 3
# marvels: 3
# masterpiece: 4
# masterpieces: 4
# matter: 1
# matters: 1
# mature: 2
# meaningful: 2
# meaningless: -2
# medal: 3
# mediocrity: -3
# meditative: 1
# melancholy: -2
# menace: -2
# menaced: -2
# mercy: 2
# merry: 3
# mess: -2
# messed: -2
# messing up: -2
# methodical: 2
# mindless: -2
# miracle: 4
# mirth: 3
# mirthful: 3
# mirthfully: 3
# misbehave: -2
# misbehaved: -2
# misbehaves: -2
# misbehaving: -2
# mischief: -1
# mischiefs: -1
# miserable: -3
# misery: -2
# misgiving: -2
# misinformation: -2
# misinformed: -2
# misinterpreted: -2
# misleading: -3
# misread: -1
# misreporting: -2
# misrepresentation: -2
# miss: -2
# missed: -2
# missing: -2
# mistake: -2
# mistaken: -2
# mistakes: -2
# mistaking: -2
# misunderstand: -2
# misunderstanding: -2
# misunderstands: -2
# misunderstood: -2
# moan: -2
# moaned: -2
# moaning: -2
# moans: -2
# mock: -2
# mocked: -2
# mocking: -2
# mocks: -2
# mongering: -2
# monopolize: -2
# monopolized: -2
# monopolizes: -2
# monopolizing: -2
# moody: -1
# mope: -1
# moping: -1
# moron: -3
# motherfucker: -5
# motherfucking: -5
# motivate: 1
# motivated: 2
# motivating: 2
# motivation: 1
# mourn: -2
# mourned: -2
# mournful: -2
# mourning: -2
# mourns: -2
# mumpish: -2
# murder: -2
# murderer: -2
# murdering: -3
# murderous: -3
# murders: -2
# myth: -1
# n00b: -2
# naive: -2
# nasty: -3
# natural: 1
# naïve: -2
# needy: -2
# negative: -2
# negativity: -2
# neglect: -2
# neglected: -2
# neglecting: -2
# neglects: -2
# nerves: -1
# nervous: -2
# nervously: -2
# nice: 3
# nifty: 2
# niggas: -5
# nigger: -5
# no: -1
# no fun: -3
# noble: 2
# noisy: -1
# nonsense: -2
# noob: -2
# nosey: -2
# not good: -2
# not working: -3
# notorious: -2
# novel: 2
# numb: -1
# nuts: -3
# obliterate: -2
# obliterated: -2
# obnoxious: -3
# obscene: -2
# obsessed: 2
# obsolete: -2
# obstacle: -2
# obstacles: -2
# obstinate: -2
# odd: -2
# offend: -2
# offended: -2
# offender: -2
# offending: -2
# offends: -2
# offline: -1
# oks: 2
# ominous: 3
# once-in-a-lifetime: 3
# opportunities: 2
# opportunity: 2
# oppressed: -2
# oppressive: -2
# optimism: 2
# optimistic: 2
# optionless: -2
# outcry: -2
# outmaneuvered: -2
# outrage: -3
# outraged: -3
# outreach: 2
# outstanding: 5
# overjoyed: 4
# overload: -1
# overlooked: -1
# overreact: -2
# overreacted: -2
# overreaction: -2
# overreacts: -2
# oversell: -2
# overselling: -2
# oversells: -2
# oversimplification: -2
# oversimplified: -2
# oversimplifies: -2
# oversimplify: -2
# overstatement: -2
# overstatements: -2
# overweight: -1
# oxymoron: -1
# pain: -2
# pained: -2
# panic: -3
# panicked: -3
# panics: -3
# paradise: 3
# paradox: -1
# pardon: 2
# pardoned: 2
# pardoning: 2
# pardons: 2
# parley: -1
# passionate: 2
# passive: -1
# passively: -1
# pathetic: -2
# pay: -1
# peace: 2
# peaceful: 2
# peacefully: 2
# penalty: -2
# pensive: -1
# perfect: 3
# perfected: 2
# perfectly: 3
# perfects: 2
# peril: -2
# perjury: -3
# perpetrator: -2
# perpetrators: -2
# perplexed: -2
# persecute: -2
# persecuted: -2
# persecutes: -2
# persecuting: -2
# perturbed: -2
# pesky: -2
# pessimism: -2
# pessimistic: -2
# petrified: -2
# phobic: -2
# picturesque: 2
# pileup: -1
# pique: -2
# piqued: -2
# piss: -4
# pissed: -4
# pissing: -3
# piteous: -2
# pitied: -1
# pity: -2
# playful: 2
# pleasant: 3
# please: 1
# pleased: 3
# pleasure: 3
# poised: -2
# poison: -2
# poisoned: -2
# poisons: -2
# pollute: -2
# polluted: -2
# polluter: -2
# polluters: -2
# pollutes: -2
# poor: -2
# poorer: -2
# poorest: -2
# popular: 3
# positive: 2
# positively: 2
# possessive: -2
# postpone: -1
# postponed: -1
# postpones: -1
# postponing: -1
# poverty: -1
# powerful: 2
# powerless: -2
# praise: 3
# praised: 3
# praises: 3
# praising: 3
# pray: 1
# praying: 1
# prays: 1
# prblm: -2
# prblms: -2
# prepared: 1
# pressure: -1
# pressured: -2
# pretend: -1
# pretending: -1
# pretends: -1
# pretty: 1
# prevent: -1
# prevented: -1
# preventing: -1
# prevents: -1
# prick: -5
# prison: -2
# prisoner: -2
# prisoners: -2
# privileged: 2
# proactive: 2
# problem: -2
# problems: -2
# profiteer: -2
# progress: 2
# prominent: 2
# promise: 1
# promised: 1
# promises: 1
# promote: 1
# promoted: 1
# promotes: 1
# promoting: 1
# propaganda: -2
# prosecute: -1
# prosecuted: -2
# prosecutes: -1
# prosecution: -1
# prospect: 1
# prospects: 1
# prosperous: 3
# protect: 1
# protected: 1
# protects: 1
# protest: -2
# protesters: -2
# protesting: -2
# protests: -2
# proud: 2
# proudly: 2
# provoke: -1
# provoked: -1
# provokes: -1
# provoking: -1
# pseudoscience: -3
# punish: -2
# punished: -2
# punishes: -2
# punitive: -2
# pushy: -1
# puzzled: -2
# quaking: -2
# questionable: -2
# questioned: -1
# questioning: -1
# racism: -3
# racist: -3
# racists: -3
# rage: -2
# rageful: -2
# rainy: -1
# rant: -3
# ranter: -3
# ranters: -3
# rants: -3
# rape: -4
# rapist: -4
# rapture: 2
# raptured: 2
# raptures: 2
# rapturous: 4
# rash: -2
# ratified: 2
# reach: 1
# reached: 1
# reaches: 1
# reaching: 1
# reassure: 1
# reassured: 1
# reassures: 1
# reassuring: 2
# rebellion: -2
# recession: -2
# reckless: -2
# recommend: 2
# recommended: 2
# recommends: 2
# redeemed: 2
# refuse: -2
# refused: -2
# refusing: -2
# regret: -2
# regretful: -2
# regrets: -2
# regretted: -2
# regretting: -2
# reject: -1
# rejected: -1
# rejecting: -1
# rejects: -1
# rejoice: 4
# rejoiced: 4
# rejoices: 4
# rejoicing: 4
# relaxed: 2
# relentless: -1
# reliant: 2
# relieve: 1
# relieved: 2
# relieves: 1
# relieving: 2
# relishing: 2
# remarkable: 2
# remorse: -2
# repulse: -1
# repulsed: -2
# rescue: 2
# rescued: 2
# rescues: 2
# resentful: -2
# resign: -1
# resigned: -1
# resigning: -1
# resigns: -1
# resolute: 2
# resolve: 2
# resolved: 2
# resolves: 2
# resolving: 2
# respected: 2
# responsible: 2
# responsive: 2
# restful: 2
# restless: -2
# restore: 1
# restored: 1
# restores: 1
# restoring: 1
# restrict: -2
# restricted: -2
# restricting: -2
# restriction: -2
# restricts: -2
# retained: -1
# retard: -2
# retarded: -2
# retreat: -1
# revenge: -2
# revengeful: -2
# revered: 2
# revive: 2
# revives: 2
# reward: 2
# rewarded: 2
# rewarding: 2
# rewards: 2
# rich: 2
# ridiculous: -3
# rig: -1
# rigged: -1
# right direction: 3
# rigorous: 3
# rigorously: 3
# riot: -2
# riots: -2
# risk: -2
# risks: -2
# rob: -2
# robber: -2
# robed: -2
# robing: -2
# robs: -2
# robust: 2
# rofl: 4
# roflcopter: 4
# roflmao: 4
# romance: 2
# rotfl: 4
# rotflmfao: 4
# rotflol: 4
# ruin: -2
# ruined: -2
# ruining: -2
# ruins: -2
# sabotage: -2
# sad: -2
# sadden: -2
# saddened: -2
# sadly: -2
# safe: 1
# safely: 1
# safety: 1
# salient: 1
# sappy: -1
# sarcastic: -2
# satisfied: 2
# save: 2
# saved: 2
# scam: -2
# scams: -2
# scandal: -3
# scandalous: -3
# scandals: -3
# scapegoat: -2
# scapegoats: -2
# scare: -2
# scared: -2
# scary: -2
# sceptical: -2
# scold: -2
# scoop: 3
# scorn: -2
# scornful: -2
# scream: -2
# screamed: -2
# screaming: -2
# screams: -2
# screwed: -2
# screwed up: -3
# scumbag: -4
# secure: 2
# secured: 2
# secures: 2
# sedition: -2
# seditious: -2
# seduced: -1
# self-confident: 2
# self-deluded: -2
# selfish: -3
# selfishness: -3
# sentence: -2
# sentenced: -2
# sentences: -2
# sentencing: -2
# serene: 2
# severe: -2
# sexy: 3
# shaky: -2
# shame: -2
# shamed: -2
# shameful: -2
# share: 1
# shared: 1
# shares: 1
# shattered: -2
# shit: -4
# shithead: -4
# shitty: -3
# shock: -2
# shocked: -2
# shocking: -2
# shocks: -2
# shoot: -1
# short-sighted: -2
# short-sightedness: -2
# shortage: -2
# shortages: -2
# shrew: -4
# shy: -1
# sick: -2
# sigh: -2
# significance: 1
# significant: 1
# silencing: -1
# silly: -1
# sincere: 2
# sincerely: 2
# sincerest: 2
# sincerity: 2
# sinful: -3
# singleminded: -2
# skeptic: -2
# skeptical: -2
# skepticism: -2
# skeptics: -2
# slam: -2
# slash: -2
# slashed: -2
# slashes: -2
# slashing: -2
# slavery: -3
# sleeplessness: -2
# slick: 2
# slicker: 2
# slickest: 2
# sluggish: -2
# slut: -5
# smart: 1
# smarter: 2
# smartest: 2
# smear: -2
# smile: 2
# smiled: 2
# smiles: 2
# smiling: 2
# smog: -2
# sneaky: -1
# snub: -2
# snubbed: -2
# snubbing: -2
# snubs: -2
# sobering: 1
# solemn: -1
# solid: 2
# solidarity: 2
# solution: 1
# solutions: 1
# solve: 1
# solved: 1
# solves: 1
# solving: 1
# somber: -2
# some kind: 0
# son-of-a-bitch: -5
# soothe: 3
# soothed: 3
# soothing: 3
# sophisticated: 2
# sore: -1
# sorrow: -2
# sorrowful: -2
# sorry: -1
# spam: -2
# spammer: -3
# spammers: -3
# spamming: -2
# spark: 1
# sparkle: 3
# sparkles: 3
# sparkling: 3
# speculative: -2
# spirit: 1
# spirited: 2
# spiritless: -2
# spiteful: -2
# splendid: 3
# sprightly: 2
# squelched: -1
# stab: -2
# stabbed: -2
# stable: 2
# stabs: -2
# stall: -2
# stalled: -2
# stalling: -2
# stamina: 2
# stampede: -2
# startled: -2
# starve: -2
# starved: -2
# starves: -2
# starving: -2
# steadfast: 2
# steal: -2
# steals: -2
# stereotype: -2
# stereotyped: -2
# stifled: -1
# stimulate: 1
# stimulated: 1
# stimulates: 1
# stimulating: 2
# stingy: -2
# stolen: -2
# stop: -1
# stopped: -1
# stopping: -1
# stops: -1
# stout: 2
# straight: 1
# strange: -1
# strangely: -1
# strangled: -2
# strength: 2
# strengthen: 2
# strengthened: 2
# strengthening: 2
# strengthens: 2
# stressed: -2
# stressor: -2
# stressors: -2
# stricken: -2
# strike: -1
# strikers: -2
# strikes: -1
# strong: 2
# stronger: 2
# strongest: 2
# struck: -1
# struggle: -2
# struggled: -2
# struggles: -2
# struggling: -2
# stubborn: -2
# stuck: -2
# stunned: -2
# stunning: 4
# stupid: -2
# stupidly: -2
# suave: 2
# substantial: 1
# substantially: 1
# subversive: -2
# success: 2
# successful: 3
# suck: -3
# sucks: -3
# suffer: -2
# suffering: -2
# suffers: -2
# suicidal: -2
# suicide: -2
# suing: -2
# sulking: -2
# sulky: -2
# sullen: -2
# sunshine: 2
# super: 3
# superb: 5
# superior: 2
# support: 2
# supported: 2
# supporter: 1
# supporters: 1
# supporting: 1
# supportive: 2
# supports: 2
# survived: 2
# surviving: 2
# survivor: 2
# suspect: -1
# suspected: -1
# suspecting: -1
# suspects: -1
# suspend: -1
# suspended: -1
# suspicious: -2
# swear: -2
# swearing: -2
# swears: -2
# sweet: 2
# swift: 2
# swiftly: 2
# swindle: -3
# swindles: -3
# swindling: -3
# sympathetic: 2
# sympathy: 2
# tard: -2
# tears: -2
# tender: 2
# tense: -2
# tension: -1
# terrible: -3
# terribly: -3
# terrific: 4
# terrified: -3
# terror: -3
# terrorize: -3
# terrorized: -3
# terrorizes: -3
# thank: 2
# thankful: 2
# thanks: 2
# thorny: -2
# thoughtful: 2
# thoughtless: -2
# threat: -2
# threaten: -2
# threatened: -2
# threatening: -2
# threatens: -2
# threats: -2
# thrilled: 5
# thwart: -2
# thwarted: -2
# thwarting: -2
# thwarts: -2
# timid: -2
# timorous: -2
# tired: -2
# tits: -2
# tolerant: 2
# toothless: -2
# top: 2
# tops: 2
# torn: -2
# torture: -4
# tortured: -4
# tortures: -4
# torturing: -4
# totalitarian: -2
# totalitarianism: -2
# tout: -2
# touted: -2
# touting: -2
# touts: -2
# tragedy: -2
# tragic: -2
# tranquil: 2
# trap: -1
# trapped: -2
# trauma: -3
# traumatic: -3
# travesty: -2
# treason: -3
# treasonous: -3
# treasure: 2
# treasures: 2
# trembling: -2
# tremulous: -2
# tricked: -2
# trickery: -2
# triumph: 4
# triumphant: 4
# trouble: -2
# troubled: -2
# troubles: -2
# TRUE: 2
# trust: 1
# trusted: 2
# tumor: -2
# twat: -5
# ugly: -3
# unacceptable: -2
# unappreciated: -2
# unapproved: -2
# unaware: -2
# unbelievable: -1
# unbelieving: -1
# unbiased: 2
# uncertain: -1
# unclear: -1
# uncomfortable: -2
# unconcerned: -2
# unconfirmed: -1
# unconvinced: -1
# uncredited: -1
# undecided: -1
# underestimate: -1
# underestimated: -1
# underestimates: -1
# underestimating: -1
# undermine: -2
# undermined: -2
# undermines: -2
# undermining: -2
# undeserving: -2
# undesirable: -2
# uneasy: -2
# unemployment: -2
# unequal: -1
# unequaled: 2
# unethical: -2
# unfair: -2
# unfocused: -2
# unfulfilled: -2
# unhappy: -2
# unhealthy: -2
# unified: 1
# unimpressed: -2
# unintelligent: -2
# united: 1
# unjust: -2
# unlovable: -2
# unloved: -2
# unmatched: 1
# unmotivated: -2
# unprofessional: -2
# unresearched: -2
# unsatisfied: -2
# unsecured: -2
# unsettled: -1
# unsophisticated: -2
# unstable: -2
# unstoppable: 2
# unsupported: -2
# unsure: -1
# untarnished: 2
# unwanted: -2
# unworthy: -2
# upset: -2
# upsets: -2
# upsetting: -2
# uptight: -2
# urgent: -1
# useful: 2
# usefulness: 2
# useless: -2
# uselessness: -2
# vague: -2
# validate: 1
# validated: 1
# validates: 1
# validating: 1
# verdict: -1
# verdicts: -1
# vested: 1
# vexation: -2
# vexing: -2
# vibrant: 3
# vicious: -2
# victim: -3
# victimize: -3
# victimized: -3
# victimizes: -3
# victimizing: -3
# victims: -3
# vigilant: 3
# vile: -3
# vindicate: 2
# vindicated: 2
# vindicates: 2
# vindicating: 2
# violate: -2
# violated: -2
# violates: -2
# violating: -2
# violence: -3
# violent: -3
# virtuous: 2
# virulent: -2
# vision: 1
# visionary: 3
# visioning: 1
# visions: 1
# vitality: 3
# vitamin: 1
# vitriolic: -3
# vivacious: 3
# vociferous: -1
# vulnerability: -2
# vulnerable: -2
# walkout: -2
# walkouts: -2
# wanker: -3
# want: 1
# war: -2
# warfare: -2
# warm: 1
# warmth: 2
# warn: -2
# warned: -2
# warning: -3
# warnings: -3
# warns: -2
# waste: -1
# wasted: -2
# wasting: -2
# wavering: -1
# weak: -2
# weakness: -2
# wealth: 3
# wealthy: 2
# weary: -2
# weep: -2
# weeping: -2
# weird: -2
# welcome: 2
# welcomed: 2
# welcomes: 2
# whimsical: 1
# whitewash: -3
# whore: -4
# wicked: -2
# widowed: -1
# willingness: 2
# win: 4
# winner: 4
# winning: 4
# wins: 4
# winwin: 3
# wish: 1
# wishes: 1
# wishing: 1
# withdrawal: -3
# woebegone: -2
# woeful: -3
# won: 3
# wonderful: 4
# woo: 3
# woohoo: 3
# wooo: 4
# woow: 4
# worn: -1
# worried: -3
# worry: -3
# worrying: -3
# worse: -3
# worsen: -3
# worsened: -3
# worsening: -3
# worsens: -3
# worshiped: 3
# worst: -3
# worth: 2
# worthless: -2
# worthy: 2
# wow: 4
# wowow: 4
# wowww: 4
# wrathful: -3
# wreck: -2
# wrong: -2
# wronged: -2
# wtf: -4
# yeah: 1
# yearning: 1
# yeees: 2
# yes: 1
# youthful: 2
# yucky: -2
# yummy: 3
# zealot: -2
# zealots: -2
# zealous: 2


# words_one = { abandon: -2, abandoned: -2, abandons: -2, abducted: -2, abduction: -2, abductions: -2, abhor: -3, abhorred: -3, abhorrent: -3, abhors: -3, abilities: 2, ability: 2, aboard: 1, absentee: -1, absentees: -1, absolve: 2, absolved: 2, absolves: 2, absolving: 2, absorbed: 1, abuse: -3, abused: -3, abuses: -3, abusive: -3, accept: 1, accepted: 1, accepting: 1, accepts: 1, accident: -2, accidental: -2, accidentally: -2, accidents: -2, accomplish: 2, accomplished: 2, accomplishes: 2, accusation: -2, accusations: -2, accuse: -2, accused: -2, accuses: -2, accusing: -2, ache: -2, achievable: 1, aching: -2, acquit: 2, acquits: 2, acquitted: 2, acquitting: 2, acrimonious: -3, active: 1, adequate: 1, admire: 3, admired: 3, admires: 3, admiring: 3, admit: -1, admits: -1, admitted: -1, admonish: -2, admonished: -2, adopt: 1, adopts: 1, adorable: 3, adore: 3, adored: 3, adores: 3, advanced: 1, advantage: 2, advantages: 2, adventure: 2, adventures: 2, adventurous: 2, affected: -1, affection: 3, affectionate: 3, afflicted: -1, affronted: -1, afraid: -2, aggravate: -2, aggravated: -2, aggravates: -2, aggravating: -2, aggression: -2, aggressions: -2, aggressive: -2, aghast: -2, agog: 2, agonise: -3, agonised: -3, agonises: -3, agonising: -3, agonize: -3, agonized: -3, agonizes: -3, agonizing: -3, agree: 1, agreeable: 2, agreed: 1, agreement: 1, agrees: 1, alarm: -2, alarmed: -2, alarmist: -2, alarmists: -2, alas: -1, alert: -1, alienation: -2, alive: 1, allergic: -2, allow: 1, alone: -2, amaze: 2, amazed: 2, amazes: 2, amazing: 4, ambitious: 2, ambivalent: -1, amuse: 3, amused: 3, amusement: 3, amusements: 3, anger: -3, angers: -3, angry: -3, anguish: -3, anguished: -3, animosity: -2, annoy: -2, annoyance: -2, annoyed: -2, annoying: -2, annoys: -2, antagonistic: -2, anti: -1, anticipation: 1, anxiety: -2, anxious: -2, apathetic: -3, apathy: -3, apeshit: -3, apocalyptic: -2, apologise: -1, apologised: -1, apologises: -1, apologising: -1, apologize: -1, apologized: -1, apologizes: -1, apologizing: -1, apology: -1, appalled: -2, appalling: -2, appease: 2, appeased: 2, appeases: 2, appeasing: 2, applaud: 2, applauded: 2, applauding: 2, applauds: 2, applause: 2, appreciate: 2, appreciated: 2, appreciates: 2, appreciating: 2, appreciation: 2, apprehensive: -2, approval: 2, approved: 2, approves: 2, ardent: 1, arrest: -2, arrested: -3, arrests: -2, arrogant: -2, ashame: -2, ashamed: -2, ass: -4, assassination: -3, assassinations: -3, asset: 2, assets: 2, assfucking: -4, asshole: -4, astonished: 2, astound: 3, astounded: 3, astounding: 3, astoundingly: 3, astounds: 3, attack: -1, attacked: -1, attacking: -1, attacks: -1, attract: 1, attracted: 1, attracting: 2, attraction: 2, attractions: 2, attracts: 1, audacious: 3, authority: 1, avert: -1, averted: -1, averts: -1, avid: 2, avoid: -1, avoided: -1, avoids: -1, await: -1, awaited: -1, awaits: -1, award: 3, awarded: 3, awards: 3, awesome: 4, awful: -3, awkward: -2, axe: -1, axed: -1, backed: 1, backing: 2, backs: 1, bad: -3, badass: -3, badly: -3, bailout: -2, bamboozle: -2, bamboozled: -2, bamboozles: -2, ban: -2, banish: -1, bankrupt: -3, bankster: -3, banned: -2, bargain: 2, barrier: -2, bastard: -5, bastards: -5, battle: -1, battles: -1, beaten: -2, beatific: 3, beating: -1, beauties: 3, beautiful: 3, beautifully: 3, beautify: 3, belittle: -2, belittled: -2, beloved: 3, benefit: 2, benefits: 2, benefitted: 2, benefitting: 2, bereave: -2, bereaved: -2, bereaves: -2, bereaving: -2, best: 3, betray: -3, betrayal: -3, betrayed: -3, betraying: -3, betrays: -3, better: 2, bias: -1, biased: -2, big: 1, bitch: -5, bitches: -5, bitter: -2, bitterly: -2, bizarre: -2, blah: -2, blame: -2, blamed: -2, blames: -2, blaming: -2, bless: 2, blesses: 2, blessing: 3, blind: -1, bliss: 3, blissful: 3, blithe: 2, block: -1 }

# words_two = { blockbuster: 3, blocked: -1, blocking: -1, blocks: -1, bloody: -3, blurry: -2, boastful: -2, bold: 2, boldly: 2, bomb: -1, boost: 1, boosted: 1, boosting: 1, boosts: 1, bore: -2, bored: -2, boring: -3, bother: -2, bothered: -2, bothers: -2, bothersome: -2, boycott: -2, boycotted: -2, boycotting: -2, boycotts: -2, brainwashing: -3, brave: 2, breakthrough: 3, breathtaking: 5, bribe: -3, bright: 1, brightest: 2, brightness: 1, brilliant: 4, brisk: 2, broke: -1, broken: -1, brooding: -2, bullied: -2, bullshit: -4, bully: -2, bullying: -2, bummer: -2, buoyant: 2, burden: -2, burdened: -2, burdening: -2, burdens: -2, calm: 2, calmed: 2, calming: 2, calms: 2, can't stand: -3, cancel: -1, cancelled: -1, cancelling: -1, cancels: -1, cancer: -1, capable: 1, captivated: 3, care: 2, carefree: 1, careful: 2, carefully: 2, careless: -2, cares: 2, cashing in: -2, casualty: -2, catastrophe: -3, catastrophic: -4, cautious: -1, celebrate: 3, celebrated: 3, celebrates: 3, celebrating: 3, censor: -2, censored: -2, censors: -2, certain: 1, chagrin: -2, chagrined: -2, challenge: -1, chance: 2, chances: 2, chaos: -2, chaotic: -2, charged: -3, charges: -2, charm: 3, charming: 3, charmless: -3, chastise: -3, chastised: -3, chastises: -3, chastising: -3, cheat: -3, cheated: -3, cheater: -3, cheaters: -3, cheats: -3, cheer: 2, cheered: 2, cheerful: 2, cheering: 2, cheerless: -2, cheers: 2, cheery: 3, cherish: 2, cherished: 2, cherishes: 2, cherishing: 2, chic: 2, childish: -2, chilling: -1, choke: -2, choked: -2, chokes: -2, choking: -2, clarifies: 2, clarity: 2, clash: -2, classy: 3, clean: 2, cleaner: 2, clear: 1, cleared: 1, clearly: 1, clears: 1, clever: 2, clouded: -1, clueless: -2, cock: -5, cocksucker: -5, cocksuckers: -5, cocky: -2, coerced: -2, collapse: -2, collapsed: -2, collapses: -2, collapsing: -2, collide: -1, collides: -1, colliding: -1, collision: -2, collisions: -2, colluding: -3, combat: -1, combats: -1, comedy: 1, comfort: 2, comfortable: 2, comforting: 2, comforts: 2, commend: 2, commended: 2, commit: 1, commitment: 2, commits: 1, committed: 1, committing: 1, compassionate: 2, compelled: 1, competent: 2, competitive: 2, complacent: -2, complain: -2, complained: -2, complains: -2, comprehensive: 2, conciliate: 2, conciliated: 2, conciliates: 2, conciliating: 2, condemn: -2, condemnation: -2, condemned: -2, condemns: -2, confidence: 2, confident: 2, conflict: -2, conflicting: -2, conflictive: -2, conflicts: -2, confuse: -2, confused: -2, confusing: -2, congrats: 2, congratulate: 2, congratulation: 2, congratulations: 2, consent: 2, consents: 2, consolable: 2, conspiracy: -3, constrained: -2, contagion: -2, contagions: -2, contagious: -1, contempt: -2, contemptuous: -2, contemptuously: -2, contend: -1, contender: -1, contending: -1, contentious: -2, contestable: -2, controversial: -2, controversially: -2, convince: 1, convinced: 1, convinces: 1, convivial: 2, cool: 1 }


# words_three = { cornered: -2, corpse: -1, costly: -2, courage: 2, courageous: 2, courteous: 2, courtesy: 2, cover-up: -3, coward: -2, cowardly: -2, coziness: 2, cramp: -1, crap: -3, crash: -2, crazier: -2, craziest: -2, crazy: -2, creative: 2, crestfallen: -2, cried: -2, cries: -2, crime: -3, criminal: -3, criminals: -3, crisis: -3, critic: -2, criticism: -2, criticize: -2, criticized: -2, criticizes: -2, criticizing: -2, critics: -2, cruel: -3, cruelty: -3, crush: -1, crushed: -2, crushes: -1, crushing: -1, cry: -1, crying: -2, cunt: -5, curious: 1, curse: -1, cut: -1, cute: 2, cuts: -1, cutting: -1, cynic: -2, cynical: -2, cynicism: -2, damage: -3, damages: -3, damn: -4, damned: -4, damnit: -4, danger: -2, daredevil: 2, daring: 2, darkest: -2, darkness: -1, dauntless: 2, dead: -3, deadlock: -2, deafening: -1, dear: 2, dearly: 3, death: -2, debonair: 2, debt: -2, deceit: -3, deceitful: -3, deceive: -3, deceived: -3, deceives: -3, deceiving: -3, deception: -3, decisive: 1, dedicated: 2, defeated: -2, defect: -3, defects: -3, defender: 2, defenders: 2, defenseless: -2, defer: -1, deferring: -1, defiant: -1, deficit: -2, degrade: -2, degraded: -2, degrades: -2, dehumanize: -2, dehumanized: -2, dehumanizes: -2, dehumanizing: -2, deject: -2, dejected: -2, dejecting: -2, dejects: -2, delay: -1, delayed: -1, delight: 3, delighted: 3, delighting: 3, delights: 3, demand: -1, demanded: -1, demanding: -1, demands: -1, demonstration: -1, demoralized: -2, denied: -2, denier: -2, deniers: -2, denies: -2, denounce: -2, denounces: -2, deny: -2, denying: -2, depressed: -2, depressing: -2, derail: -2, derailed: -2, derails: -2, deride: -2, derided: -2, derides: -2, deriding: -2, derision: -2, desirable: 2, desire: 1, desired: 2, desirous: 2, despair: -3, despairing: -3, despairs: -3, desperate: -3, desperately: -3, despondent: -3, destroy: -3, destroyed: -3, destroying: -3, destroys: -3, destruction: -3, destructive: -3, detached: -1, detain: -2, detained: -2, detention: -2, determined: 2, devastate: -2, devastated: -2, devastating: -2, devoted: 3, diamond: 1, dick: -4, dickhead: -4, die: -3, died: -3, difficult: -1, diffident: -2, dilemma: -1, dipshit: -3, dire: -3, direful: -3, dirt: -2, dirtier: -2, dirtiest: -2, dirty: -2, disabling: -1, disadvantage: -2, disadvantaged: -2, disappear: -1, disappeared: -1, disappears: -1, disappoint: -2, disappointed: -2, disappointing: -2, disappointment: -2, disappointments: -2, disappoints: -2, disaster: -2, disasters: -2, disastrous: -3, disbelieve: -2, discard: -1, discarded: -1, discarding: -1, discards: -1, disconsolate: -2, disconsolation: -2, discontented: -2, discord: -2, discounted: -1, discouraged: -2, discredited: -2, disdain: -2, disgrace: -2, disgraced: -2, disguise: -1, disguised: -1, disguises: -1, disguising: -1, disgust: -3, disgusted: -3, disgusting: -3, disheartened: -2, dishonest: -2, disillusioned: -2, disinclined: -2, disjointed: -2, dislike: -2, dismal: -2, dismayed: -2, disorder: -2, disorganized: -2, disoriented: -2, disparage: -2, disparaged: -2, disparages: -2, disparaging: -2, displeased: -2, dispute: -2, disputed: -2, disputes: -2, disputing: -2, disqualified: -2, disquiet: -2, disregard: -2, disregarded: -2, disregarding: -2, disregards: -2, disrespect: -2, disrespected: -2, disruption: -2, disruptions: -2, disruptive: -2, dissatisfied: -2, distort: -2, distorted: -2, distorting: -2, distorts: -2, distract: -2, distracted: -2, distraction: -2, distracts: -2, distress: -2, distressed: -2, distresses: -2, distressing: -2, distrust: -3, distrustful: -3, disturb: -2, disturbed: -2, disturbing: -2, disturbs: -2, dithering: -2, dizzy: -1, dodging: -2, dodgy: -2, does not work: -3, dolorous: -2, dont like: -2, doom: -2, doomed: -2, doubt: -1, doubted: -1, doubtful: -1, doubting: -1, doubts: -1, douche: -3, douchebag: -3, downcast: -2, downhearted: -2, downside: -2, drag: -1, dragged: -1, drags: -1, drained: -2, dread: -2, dreaded: -2, dreadful: -3, dreading: -2, dream: 1, dreams: 1, dreary: -2, droopy: -2, drop: -1, drown: -2, drowned: -2, drowns: -2, drunk: -2, dubious: -2, dud: -2, dull: -2, dumb: -3, dumbass: -3, dump: -1, dumped: -2, dumps: -1, dupe: -2, duped: -2, dysfunction: -2, eager: 2, earnest: 2, ease: 2, easy: 1, ecstatic: 4, eerie: -2, eery: -2, effective: 2, effectively: 2, elated: 3, elation: 3, elegant: 2, elegantly: 2, embarrass: -2, embarrassed: -2, embarrasses: -2, embarrassing: -2, embarrassment: -2, embittered: -2, embrace: 1, emergency: -2, empathetic: 2, emptiness: -1, empty: -1, enchanted: 2, encourage: 2, encouraged: 2, encouragement: 2, encourages: 2, endorse: 2, endorsed: 2, endorsement: 2, endorses: 2, enemies: -2, enemy: -2, energetic: 2, engage: 1, engages: 1, engrossed: 1, enjoy: 2, enjoying: 2, enjoys: 2, enlighten: 2, enlightened: 2, enlightening: 2, enlightens: 2, ennui: -2, enrage: -2, enraged: -2, enrages: -2, enraging: -2, enrapture: 3, enslave: -2, enslaved: -2, enslaves: -2, ensure: 1, ensuring: 1, enterprising: 1, entertaining: 2, enthral: 3, enthusiastic: 3, entitled: 1, entrusted: 2, envies: -1, envious: -2, envy: -1, envying: -1, erroneous: -2, error: -2, errors: -2, escape: -1, escapes: -1, escaping: -1, esteemed: 2, ethical: 2, euphoria: 3, euphoric: 4, eviction: -1, evil: -3, exaggerate: -2, exaggerated: -2, exaggerates: -2, exaggerating: -2, exasperated: 2, excellence: 3, excellent: 3, excite: 3, excited: 3, excitement: 3, exciting: 3, exclude: -1, excluded: -2, exclusion: -1, exclusive: 2, excuse: -1, exempt: -1, exhausted: -2, exhilarated: 3, exhilarates: 3, exhilarating: 3, exonerate: 2, exonerated: 2, exonerates: 2, exonerating: 2, expand: 1 }

# expands: 1
# expel: -2
# expelled: -2
# expelling: -2
# expels: -2
# exploit: -2
# exploited: -2
# exploiting: -2
# exploits: -2
# exploration: 1
# explorations: 1
# expose: -1
# exposed: -1
# exposes: -1
# exposing: -1
# extend: 1
# extends: 1
# exuberant: 4
# exultant: 3
# exultantly: 3
# fabulous: 4
# fad: -2
# fag: -3
# faggot: -3
# faggots: -3
# fail: -2
# failed: -2
# failing: -2
# fails: -2
# failure: -2
# failures: -2
# fainthearted: -2
# fair: 2
# faith: 1
# faithful: 3
# fake: -3
# fakes: -3
# faking: -3
# fallen: -2
# falling: -1
# falsified: -3
# falsify: -3
# fame: 1
# fan: 3
# fantastic: 4
# farce: -1
# fascinate: 3
# fascinated: 3
# fascinates: 3
# fascinating: 3
# fascist: -2
# fascists: -2
# fatalities: -3
# fatality: -3
# fatigue: -2
# fatigued: -2
# fatigues: -2
# fatiguing: -2
# favor: 2
# favored: 2
# favorite: 2
# favorited: 2
# favorites: 2
# favors: 2
# fear: -2
# fearful: -2
# fearing: -2
# fearless: 2
# fearsome: -2
# fed up: -3
# feeble: -2
# feeling: 1
# felonies: -3
# felony: -3
# fervent: 2
# fervid: 2
# festive: 2
# fiasco: -3
# fidgety: -2
# fight: -1
# fine: 2
# fire: -2
# fired: -2
# firing: -2
# fit: 1
# fitness: 1
# flagship: 2
# flees: -1
# flop: -2
# flops: -2
# flu: -2
# flustered: -2
# focused: 2
# fond: 2
# fondness: 2
# fool: -2
# foolish: -2
# fools: -2
# forced: -1
# foreclosure: -2
# foreclosures: -2
# forget: -1
# forgetful: -2
# forgive: 1
# forgiving: 1
# forgotten: -1
# fortunate: 2
# frantic: -1
# fraud: -4
# frauds: -4
# fraudster: -4
# fraudsters: -4
# fraudulence: -4
# fraudulent: -4
# free: 1
# freedom: 2
# frenzy: -3
# fresh: 1
# friendly: 2
# fright: -2
# frightened: -2
# frightening: -3
# frikin: -2
# frisky: 2
# frowning: -1
# frustrate: -2
# frustrated: -2
# frustrates: -2
# frustrating: -2
# frustration: -2
# ftw: 3
# fucked: -4
# fucker: -4
# fuckers: -4
# fuckface: -4
# fuckhead: -4
# fucking: -4
# fucktard: -4
# fud: -3
# fuked: -4
# fuking: -4
# fulfill: 2
# fulfilled: 2
# fulfills: 2
# fuming: -2
# fun: 4
# funeral: -1
# funerals: -1
# funky: 2
# funnier: 4
# funny: 4
# furious: -3
# futile: 2
# gag: -2
# gagged: -2
# gain: 2
# gained: 2
# gaining: 2
# gains: 2
# gallant: 3
# gallantly: 3
# gallantry: 3
# generous: 2
# genial: 3
# ghost: -1
# giddy: -2
# gift: 2
# glad: 3
# glamorous: 3
# glamourous: 3
# glee: 3
# gleeful: 3
# gloom: -1
# gloomy: -2
# glorious: 2
# glory: 2
# glum: -2
# god: 1
# goddamn: -3
# godsend: 4
# good: 3
# goodness: 3
# grace: 1
# gracious: 3
# grand: 3
# grant: 1
# granted: 1
# granting: 1
# grants: 1
# grateful: 3
# gratification: 2
# grave: -2
# gray: -1
# great: 3
# greater: 3
# greatest: 3
# greed: -3
# greedy: -2
# green wash: -3
# green washing: -3
# greenwash: -3
# greenwasher: -3
# greenwashers: -3
# greenwashing: -3
# greet: 1
# greeted: 1
# greeting: 1
# greetings: 2
# greets: 1
# grey: -1
# grief: -2
# grieved: -2
# gross: -2
# growing: 1
# growth: 2
# guarantee: 1
# guilt: -3
# guilty: -3
# gullibility: -2
# gullible: -2
# gun: -1
# ha: 2
# hacked: -1
# haha: 3
# hahaha: 3
# hahahah: 3
# hail: 2
# hailed: 2
# hapless: -2
# haplessness: -2
# happiness: 3
# happy: 3
# hard: -1
# hardier: 2
# hardship: -2
# hardy: 2
# harm: -2
# harmed: -2
# harmful: -2
# harming: -2
# harms: -2
# harried: -2
# harsh: -2
# harsher: -2
# harshest: -2
# hate: -3
# hated: -3
# haters: -3
# hates: -3
# hating: -3
# haunt: -1
# haunted: -2
# haunting: 1
# haunts: -1
# havoc: -2
# healthy: 2
# heartbreaking: -3
# heartbroken: -3
# heartfelt: 3
# heaven: 2
# heavenly: 4
# heavyhearted: -2
# hell: -4
# help: 2
# helpful: 2
# helping: 2
# helpless: -2
# helps: 2
# hero: 2
# heroes: 2
# heroic: 3
# hesitant: -2
# hesitate: -2
# hid: -1
# hide: -1
# hides: -1
# hiding: -1
# highlight: 2
# hilarious: 2
# hindrance: -2
# hoax: -2
# homesick: -2
# honest: 2
# honor: 2
# honored: 2
# honoring: 2
# honour: 2
# honoured: 2
# honouring: 2
# hooligan: -2
# hooliganism: -2
# hooligans: -2
# hope: 2
# hopeful: 2
# hopefully: 2
# hopeless: -2
# hopelessness: -2
# hopes: 2
# hoping: 2
# horrendous: -3
# horrible: -3
# horrific: -3
# horrified: -3
# hostile: -2
# huckster: -2
# hug: 2
# huge: 1
# hugs: 2
# humerous: 3
# humiliated: -3
# humiliation: -3
# humor: 2
# humorous: 2
# humour: 2
# humourous: 2
# hunger: -2
# hurrah: 5
# hurt: -2
# hurting: -2
# hurts: -2
# hypocritical: -2
# hysteria: -3
# hysterical: -3
# hysterics: -3
# idiot: -3
# idiotic: -3
# ignorance: -2
# ignorant: -2
# ignore: -1
# ignored: -2
# ignores: -1
# ill: -2
# illegal: -3
# illiteracy: -2
# illness: -2
# illnesses: -2
# imbecile: -3
# immobilized: -1
# immortal: 2
# immune: 1
# impatient: -2
# imperfect: -2
# importance: 2
# important: 2
# impose: -1
# imposed: -1
# imposes: -1
# imposing: -1
# impotent: -2
# impress: 3
# impressed: 3
# impresses: 3
# impressive: 3
# imprisoned: -2
# improve: 2
# improved: 2
# improvement: 2
# improves: 2
# improving: 2
# inability: -2
# inaction: -2
# inadequate: -2
# incapable: -2
# incapacitated: -2
# incensed: -2
# incompetence: -2
# incompetent: -2
# inconsiderate: -2
# inconvenience: -2
# inconvenient: -2
# increase: 1
# increased: 1
# indecisive: -2
# indestructible: 2
# indifference: -2
# indifferent: -2
# indignant: -2
# indignation: -2
# indoctrinate: -2
# indoctrinated: -2
# indoctrinates: -2
# indoctrinating: -2
# ineffective: -2
# ineffectively: -2
# infatuated: 2
# infatuation: 2
# infected: -2
# inferior: -2
# inflamed: -2
# influential: 2
# infringement: -2
# infuriate: -2
# infuriated: -2
# infuriates: -2
# infuriating: -2
# inhibit: -1
# injured: -2
# injury: -2
# injustice: -2
# innovate: 1
# innovates: 1
# innovation: 1
# innovative: 2
# inquisition: -2
# inquisitive: 2
# insane: -2
# insanity: -2
# insecure: -2
# insensitive: -2
# insensitivity: -2
# insignificant: -2
# insipid: -2
# inspiration: 2
# inspirational: 2
# inspire: 2
# inspired: 2
# inspires: 2
# inspiring: 3
# insult: -2
# insulted: -2
# insulting: -2
# insults: -2
# intact: 2
# integrity: 2
# intelligent: 2
# intense: 1
# interest: 1
# interested: 2
# interesting: 2
# interests: 1
# interrogated: -2
# interrupt: -2
# interrupted: -2
# interrupting: -2
# interruption: -2
# interrupts: -2
# intimidate: -2
# intimidated: -2
# intimidates: -2
# intimidating: -2
# intimidation: -2
# intricate: 2
# intrigues: 1
# invincible: 2
# invite: 1
# inviting: 1
# invulnerable: 2
# irate: -3
# ironic: -1
# irony: -1
# irrational: -1
# irresistible: 2
# irresolute: -2
# irresponsible: 2
# irreversible: -1
# irritate: -3
# irritated: -3
# irritating: -3
# isolated: -1
# itchy: -2
# jackass: -4
# jackasses: -4
# jailed: -2
# jaunty: 2
# jealous: -2
# jeopardy: -2
# jerk: -3
# jesus: 1
# jewel: 1
# jewels: 1
# jocular: 2
# join: 1
# joke: 2
# jokes: 2
# jolly: 2
# jovial: 2
# joy: 3
# joyful: 3
# joyfully: 3
# joyless: -2
# joyous: 3
# jubilant: 3
# jumpy: -1
# justice: 2
# justifiably: 2
# justified: 2
# keen: 1
# kill: -3
# killed: -3
# killing: -3
# kills: -3
# kind: 2
# kinder: 2
# kiss: 2
# kudos: 3
# lack: -2
# lackadaisical: -2
# lag: -1
# lagged: -2
# lagging: -2
# lags: -2
# lame: -2
# landmark: 2
# laugh: 1
# laughed: 1
# laughing: 1
# laughs: 1
# laughting: 1
# launched: 1
# lawl: 3
# lawsuit: -2
# lawsuits: -2
# lazy: -1
# leak: -1
# leaked: -1
# leave: -1
# legal: 1
# legally: 1
# lenient: 1
# lethargic: -2
# lethargy: -2
# liar: -3
# liars: -3
# libelous: -2
# lied: -2
# lifesaver: 4
# lighthearted: 1
# like: 2
# liked: 2
# likes: 2
# limitation: -1
# limited: -1
# limits: -1
# litigation: -1
# litigious: -2
# lively: 2
# livid: -2
# lmao: 4
# lmfao: 4
# loathe: -3
# loathed: -3
# loathes: -3
# loathing: -3
# lobby: -2
# lobbying: -2
# lol: 3
# lonely: -2
# lonesome: -2
# longing: -1
# loom: -1
# loomed: -1
# looming: -1
# looms: -1
# loose: -3
# looses: -3
# loser: -3
# losing: -3
# loss: -3
# lost: -3
# lovable: 3
# love: 3
# loved: 3
# lovelies: 3
# lovely: 3
# loving: 2
# lowest: -1
# loyal: 3
# loyalty: 3
# luck: 3
# luckily: 3
# lucky: 3
# lugubrious: -2
# lunatic: -3
# lunatics: -3
# lurk: -1
# lurking: -1
# lurks: -1
# mad: -3
# maddening: -3
# made-up: -1
# madly: -3
# madness: -3
# mandatory: -1
# manipulated: -1
# manipulating: -1
# manipulation: -1
# marvel: 3
# marvelous: 3
# marvels: 3
# masterpiece: 4
# masterpieces: 4
# matter: 1
# matters: 1
# mature: 2
# meaningful: 2
# meaningless: -2
# medal: 3
# mediocrity: -3
# meditative: 1
# melancholy: -2
# menace: -2
# menaced: -2
# mercy: 2
# merry: 3
# mess: -2
# messed: -2
# messing up: -2
# methodical: 2
# mindless: -2
# miracle: 4
# mirth: 3
# mirthful: 3
# mirthfully: 3
# misbehave: -2
# misbehaved: -2
# misbehaves: -2
# misbehaving: -2
# mischief: -1
# mischiefs: -1
# miserable: -3
# misery: -2
# misgiving: -2
# misinformation: -2
# misinformed: -2
# misinterpreted: -2
# misleading: -3
# misread: -1
# misreporting: -2
# misrepresentation: -2
# miss: -2
# missed: -2
# missing: -2
# mistake: -2
# mistaken: -2
# mistakes: -2
# mistaking: -2
# misunderstand: -2
# misunderstanding: -2
# misunderstands: -2
# misunderstood: -2
# moan: -2
# moaned: -2
# moaning: -2
# moans: -2
# mock: -2
# mocked: -2
# mocking: -2
# mocks: -2
# mongering: -2
# monopolize: -2
# monopolized: -2
# monopolizes: -2
# monopolizing: -2
# moody: -1
# mope: -1
# moping: -1
# moron: -3
# motherfucker: -5
# motherfucking: -5
# motivate: 1
# motivated: 2
# motivating: 2
# motivation: 1
# mourn: -2
# mourned: -2
# mournful: -2
# mourning: -2
# mourns: -2
# mumpish: -2
# murder: -2
# murderer: -2
# murdering: -3
# murderous: -3
# murders: -2
# myth: -1
# n00b: -2
# naive: -2
# nasty: -3
# natural: 1
# naïve: -2
# needy: -2
# negative: -2
# negativity: -2
# neglect: -2
# neglected: -2
# neglecting: -2
# neglects: -2
# nerves: -1
# nervous: -2
# nervously: -2
# nice: 3
# nifty: 2
# niggas: -5
# nigger: -5
# no: -1
# no fun: -3
# noble: 2
# noisy: -1
# nonsense: -2
# noob: -2
# nosey: -2
# not good: -2
# not working: -3
# notorious: -2
# novel: 2
# numb: -1
# nuts: -3
# obliterate: -2
# obliterated: -2
# obnoxious: -3
# obscene: -2
# obsessed: 2
# obsolete: -2
# obstacle: -2
# obstacles: -2
# obstinate: -2
# odd: -2
# offend: -2
# offended: -2
# offender: -2
# offending: -2
# offends: -2
# offline: -1
# oks: 2
# ominous: 3
# once-in-a-lifetime: 3
# opportunities: 2
# opportunity: 2
# oppressed: -2
# oppressive: -2
# optimism: 2
# optimistic: 2
# optionless: -2
# outcry: -2
# outmaneuvered: -2
# outrage: -3
# outraged: -3
# outreach: 2
# outstanding: 5
# overjoyed: 4
# overload: -1
# overlooked: -1
# overreact: -2
# overreacted: -2
# overreaction: -2
# overreacts: -2
# oversell: -2
# overselling: -2
# oversells: -2
# oversimplification: -2
# oversimplified: -2
# oversimplifies: -2
# oversimplify: -2
# overstatement: -2
# overstatements: -2
# overweight: -1
# oxymoron: -1
# pain: -2
# pained: -2
# panic: -3
# panicked: -3
# panics: -3
# paradise: 3
# paradox: -1
# pardon: 2
# pardoned: 2
# pardoning: 2
# pardons: 2
# parley: -1
# passionate: 2
# passive: -1
# passively: -1
# pathetic: -2
# pay: -1
# peace: 2
# peaceful: 2
# peacefully: 2
# penalty: -2
# pensive: -1
# perfect: 3
# perfected: 2
# perfectly: 3
# perfects: 2
# peril: -2
# perjury: -3
# perpetrator: -2
# perpetrators: -2
# perplexed: -2
# persecute: -2
# persecuted: -2
# persecutes: -2
# persecuting: -2
# perturbed: -2
# pesky: -2
# pessimism: -2
# pessimistic: -2
# petrified: -2
# phobic: -2
# picturesque: 2
# pileup: -1
# pique: -2
# piqued: -2
# piss: -4
# pissed: -4
# pissing: -3
# piteous: -2
# pitied: -1
# pity: -2
# playful: 2
# pleasant: 3
# please: 1
# pleased: 3
# pleasure: 3
# poised: -2
# poison: -2
# poisoned: -2
# poisons: -2
# pollute: -2
# polluted: -2
# polluter: -2
# polluters: -2
# pollutes: -2
# poor: -2
# poorer: -2
# poorest: -2
# popular: 3
# positive: 2
# positively: 2
# possessive: -2
# postpone: -1
# postponed: -1
# postpones: -1
# postponing: -1
# poverty: -1
# powerful: 2
# powerless: -2
# praise: 3
# praised: 3
# praises: 3
# praising: 3
# pray: 1
# praying: 1
# prays: 1
# prblm: -2
# prblms: -2
# prepared: 1
# pressure: -1
# pressured: -2
# pretend: -1
# pretending: -1
# pretends: -1
# pretty: 1
# prevent: -1
# prevented: -1
# preventing: -1
# prevents: -1
# prick: -5
# prison: -2
# prisoner: -2
# prisoners: -2
# privileged: 2
# proactive: 2
# problem: -2
# problems: -2
# profiteer: -2
# progress: 2
# prominent: 2
# promise: 1
# promised: 1
# promises: 1
# promote: 1
# promoted: 1
# promotes: 1
# promoting: 1
# propaganda: -2
# prosecute: -1
# prosecuted: -2
# prosecutes: -1
# prosecution: -1
# prospect: 1
# prospects: 1
# prosperous: 3
# protect: 1
# protected: 1
# protects: 1
# protest: -2
# protesters: -2
# protesting: -2
# protests: -2
# proud: 2
# proudly: 2
# provoke: -1
# provoked: -1
# provokes: -1
# provoking: -1
# pseudoscience: -3
# punish: -2
# punished: -2
# punishes: -2
# punitive: -2
# pushy: -1
# puzzled: -2
# quaking: -2
# questionable: -2
# questioned: -1
# questioning: -1
# racism: -3
# racist: -3
# racists: -3
# rage: -2
# rageful: -2
# rainy: -1
# rant: -3
# ranter: -3
# ranters: -3
# rants: -3
# rape: -4
# rapist: -4
# rapture: 2
# raptured: 2
# raptures: 2
# rapturous: 4
# rash: -2
# ratified: 2
# reach: 1
# reached: 1
# reaches: 1
# reaching: 1
# reassure: 1
# reassured: 1
# reassures: 1
# reassuring: 2
# rebellion: -2
# recession: -2
# reckless: -2
# recommend: 2
# recommended: 2
# recommends: 2
# redeemed: 2
# refuse: -2
# refused: -2
# refusing: -2
# regret: -2
# regretful: -2
# regrets: -2
# regretted: -2
# regretting: -2
# reject: -1
# rejected: -1
# rejecting: -1
# rejects: -1
# rejoice: 4
# rejoiced: 4
# rejoices: 4
# rejoicing: 4
# relaxed: 2
# relentless: -1
# reliant: 2
# relieve: 1
# relieved: 2
# relieves: 1
# relieving: 2
# relishing: 2
# remarkable: 2
# remorse: -2
# repulse: -1
# repulsed: -2
# rescue: 2
# rescued: 2
# rescues: 2
# resentful: -2
# resign: -1
# resigned: -1
# resigning: -1
# resigns: -1
# resolute: 2
# resolve: 2
# resolved: 2
# resolves: 2
# resolving: 2
# respected: 2
# responsible: 2
# responsive: 2
# restful: 2
# restless: -2
# restore: 1
# restored: 1
# restores: 1
# restoring: 1
# restrict: -2
# restricted: -2
# restricting: -2
# restriction: -2
# restricts: -2
# retained: -1
# retard: -2
# retarded: -2
# retreat: -1
# revenge: -2
# revengeful: -2
# revered: 2
# revive: 2
# revives: 2
# reward: 2
# rewarded: 2
# rewarding: 2
# rewards: 2
# rich: 2
# ridiculous: -3
# rig: -1
# rigged: -1
# right direction: 3
# rigorous: 3
# rigorously: 3
# riot: -2
# riots: -2
# risk: -2
# risks: -2
# rob: -2
# robber: -2
# robed: -2
# robing: -2
# robs: -2
# robust: 2
# rofl: 4
# roflcopter: 4
# roflmao: 4
# romance: 2
# rotfl: 4
# rotflmfao: 4
# rotflol: 4
# ruin: -2
# ruined: -2
# ruining: -2
# ruins: -2
# sabotage: -2
# sad: -2
# sadden: -2
# saddened: -2
# sadly: -2
# safe: 1
# safely: 1
# safety: 1
# salient: 1
# sappy: -1
# sarcastic: -2
# satisfied: 2
# save: 2
# saved: 2
# scam: -2
# scams: -2
# scandal: -3
# scandalous: -3
# scandals: -3
# scapegoat: -2
# scapegoats: -2
# scare: -2
# scared: -2
# scary: -2
# sceptical: -2
# scold: -2
# scoop: 3
# scorn: -2
# scornful: -2
# scream: -2
# screamed: -2
# screaming: -2
# screams: -2
# screwed: -2
# screwed up: -3
# scumbag: -4
# secure: 2
# secured: 2
# secures: 2
# sedition: -2
# seditious: -2
# seduced: -1
# self-confident: 2
# self-deluded: -2
# selfish: -3
# selfishness: -3
# sentence: -2
# sentenced: -2
# sentences: -2
# sentencing: -2
# serene: 2
# severe: -2
# sexy: 3
# shaky: -2
# shame: -2
# shamed: -2
# shameful: -2
# share: 1
# shared: 1
# shares: 1
# shattered: -2
# shit: -4
# shithead: -4
# shitty: -3
# shock: -2
# shocked: -2
# shocking: -2
# shocks: -2
# shoot: -1
# short-sighted: -2
# short-sightedness: -2
# shortage: -2
# shortages: -2
# shrew: -4
# shy: -1
# sick: -2
# sigh: -2
# significance: 1
# significant: 1
# silencing: -1
# silly: -1
# sincere: 2
# sincerely: 2
# sincerest: 2
# sincerity: 2
# sinful: -3
# singleminded: -2
# skeptic: -2
# skeptical: -2
# skepticism: -2
# skeptics: -2
# slam: -2
# slash: -2
# slashed: -2
# slashes: -2
# slashing: -2
# slavery: -3
# sleeplessness: -2
# slick: 2
# slicker: 2
# slickest: 2
# sluggish: -2
# slut: -5
# smart: 1
# smarter: 2
# smartest: 2
# smear: -2
# smile: 2
# smiled: 2
# smiles: 2
# smiling: 2
# smog: -2
# sneaky: -1
# snub: -2
# snubbed: -2
# snubbing: -2
# snubs: -2
# sobering: 1
# solemn: -1
# solid: 2
# solidarity: 2
# solution: 1
# solutions: 1
# solve: 1
# solved: 1
# solves: 1
# solving: 1
# somber: -2
# some kind: 0
# son-of-a-bitch: -5
# soothe: 3
# soothed: 3
# soothing: 3
# sophisticated: 2
# sore: -1
# sorrow: -2
# sorrowful: -2
# sorry: -1
# spam: -2
# spammer: -3
# spammers: -3
# spamming: -2
# spark: 1
# sparkle: 3
# sparkles: 3
# sparkling: 3
# speculative: -2
# spirit: 1
# spirited: 2
# spiritless: -2
# spiteful: -2
# splendid: 3
# sprightly: 2
# squelched: -1
# stab: -2
# stabbed: -2
# stable: 2
# stabs: -2
# stall: -2
# stalled: -2
# stalling: -2
# stamina: 2
# stampede: -2
# startled: -2
# starve: -2
# starved: -2
# starves: -2
# starving: -2
# steadfast: 2
# steal: -2
# steals: -2
# stereotype: -2
# stereotyped: -2
# stifled: -1
# stimulate: 1
# stimulated: 1
# stimulates: 1
# stimulating: 2
# stingy: -2
# stolen: -2
# stop: -1
# stopped: -1
# stopping: -1
# stops: -1
# stout: 2
# straight: 1
# strange: -1
# strangely: -1
# strangled: -2
# strength: 2
# strengthen: 2
# strengthened: 2
# strengthening: 2
# strengthens: 2
# stressed: -2
# stressor: -2
# stressors: -2
# stricken: -2
# strike: -1
# strikers: -2
# strikes: -1
# strong: 2
# stronger: 2
# strongest: 2
# struck: -1
# struggle: -2
# struggled: -2
# struggles: -2
# struggling: -2
# stubborn: -2
# stuck: -2
# stunned: -2
# stunning: 4
# stupid: -2
# stupidly: -2
# suave: 2
# substantial: 1
# substantially: 1
# subversive: -2
# success: 2
# successful: 3
# suck: -3
# sucks: -3
# suffer: -2
# suffering: -2
# suffers: -2
# suicidal: -2
# suicide: -2
# suing: -2
# sulking: -2
# sulky: -2
# sullen: -2
# sunshine: 2
# super: 3
# superb: 5
# superior: 2
# support: 2
# supported: 2
# supporter: 1
# supporters: 1
# supporting: 1
# supportive: 2
# supports: 2
# survived: 2
# surviving: 2
# survivor: 2
# suspect: -1
# suspected: -1
# suspecting: -1
# suspects: -1
# suspend: -1
# suspended: -1
# suspicious: -2
# swear: -2
# swearing: -2
# swears: -2
# sweet: 2
# swift: 2
# swiftly: 2
# swindle: -3
# swindles: -3
# swindling: -3
# sympathetic: 2
# sympathy: 2
# tard: -2
# tears: -2
# tender: 2
# tense: -2
# tension: -1
# terrible: -3
# terribly: -3
# terrific: 4
# terrified: -3
# terror: -3
# terrorize: -3
# terrorized: -3
# terrorizes: -3
# thank: 2
# thankful: 2
# thanks: 2
# thorny: -2
# thoughtful: 2
# thoughtless: -2
# threat: -2
# threaten: -2
# threatened: -2
# threatening: -2
# threatens: -2
# threats: -2
# thrilled: 5
# thwart: -2
# thwarted: -2
# thwarting: -2
# thwarts: -2
# timid: -2
# timorous: -2
# tired: -2
# tits: -2
# tolerant: 2
# toothless: -2
# top: 2
# tops: 2
# torn: -2
# torture: -4
# tortured: -4
# tortures: -4
# torturing: -4
# totalitarian: -2
# totalitarianism: -2
# tout: -2
# touted: -2
# touting: -2
# touts: -2
# tragedy: -2
# tragic: -2
# tranquil: 2
# trap: -1
# trapped: -2
# trauma: -3
# traumatic: -3
# travesty: -2
# treason: -3
# treasonous: -3
# treasure: 2
# treasures: 2
# trembling: -2
# tremulous: -2
# tricked: -2
# trickery: -2
# triumph: 4
# triumphant: 4
# trouble: -2
# troubled: -2
# troubles: -2
# TRUE: 2
# trust: 1
# trusted: 2
# tumor: -2
# twat: -5
# ugly: -3
# unacceptable: -2
# unappreciated: -2
# unapproved: -2
# unaware: -2
# unbelievable: -1
# unbelieving: -1
# unbiased: 2
# uncertain: -1
# unclear: -1
# uncomfortable: -2
# unconcerned: -2
# unconfirmed: -1
# unconvinced: -1
# uncredited: -1
# undecided: -1
# underestimate: -1
# underestimated: -1
# underestimates: -1
# underestimating: -1
# undermine: -2
# undermined: -2
# undermines: -2
# undermining: -2
# undeserving: -2
# undesirable: -2
# uneasy: -2
# unemployment: -2
# unequal: -1
# unequaled: 2
# unethical: -2
# unfair: -2
# unfocused: -2
# unfulfilled: -2
# unhappy: -2
# unhealthy: -2
# unified: 1
# unimpressed: -2
# unintelligent: -2
# united: 1
# unjust: -2
# unlovable: -2
# unloved: -2
# unmatched: 1
# unmotivated: -2
# unprofessional: -2
# unresearched: -2
# unsatisfied: -2
# unsecured: -2
# unsettled: -1
# unsophisticated: -2
# unstable: -2
# unstoppable: 2
# unsupported: -2
# unsure: -1
# untarnished: 2
# unwanted: -2
# unworthy: -2
# upset: -2
# upsets: -2
# upsetting: -2
# uptight: -2
# urgent: -1
# useful: 2
# usefulness: 2
# useless: -2
# uselessness: -2
# vague: -2
# validate: 1
# validated: 1
# validates: 1
# validating: 1
# verdict: -1
# verdicts: -1
# vested: 1
# vexation: -2
# vexing: -2
# vibrant: 3
# vicious: -2
# victim: -3
# victimize: -3
# victimized: -3
# victimizes: -3
# victimizing: -3
# victims: -3
# vigilant: 3
# vile: -3
# vindicate: 2
# vindicated: 2
# vindicates: 2
# vindicating: 2
# violate: -2
# violated: -2
# violates: -2
# violating: -2
# violence: -3
# violent: -3
# virtuous: 2
# virulent: -2
# vision: 1
# visionary: 3
# visioning: 1
# visions: 1
# vitality: 3
# vitamin: 1
# vitriolic: -3
# vivacious: 3
# vociferous: -1
# vulnerability: -2
# vulnerable: -2
# walkout: -2
# walkouts: -2
# wanker: -3
# want: 1
# war: -2
# warfare: -2
# warm: 1
# warmth: 2
# warn: -2
# warned: -2
# warning: -3
# warnings: -3
# warns: -2
# waste: -1
# wasted: -2
# wasting: -2
# wavering: -1
# weak: -2
# weakness: -2
# wealth: 3
# wealthy: 2
# weary: -2
# weep: -2
# weeping: -2
# weird: -2
# welcome: 2
# welcomed: 2
# welcomes: 2
# whimsical: 1
# whitewash: -3
# whore: -4
# wicked: -2
# widowed: -1
# willingness: 2
# win: 4
# winner: 4
# winning: 4
# wins: 4
# winwin: 3
# wish: 1
# wishes: 1
# wishing: 1
# withdrawal: -3
# woebegone: -2
# woeful: -3
# won: 3
# wonderful: 4
# woo: 3
# woohoo: 3
# wooo: 4
# woow: 4
# worn: -1
# worried: -3
# worry: -3
# worrying: -3
# worse: -3
# worsen: -3
# worsened: -3
# worsening: -3
# worsens: -3
# worshiped: 3
# worst: -3
# worth: 2
# worthless: -2
# worthy: 2
# wow: 4
# wowow: 4
# wowww: 4
# wrathful: -3
# wreck: -2
# wrong: -2
# wronged: -2
# wtf: -4
# yeah: 1
# yearning: 1
# yeees: 2
# yes: 1
# youthful: 2
# yucky: -2
# yummy: 3
# zealot: -2
# zealots: -2
# zealous: 2

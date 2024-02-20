(defrule start
   (and (not (exists
                  (wynik ? $?)))
        (not (exists
                  (pytanie ? $?)))
        (not (exists
                  (odpowiedz ?))))
   =>
   (assert (pytanie "Drama or comedy?" "Drama" "Comedy" "A little bit of both")))

; Drama
(defrule sci-fi-or-supernatural 
    ?id <- (odpowiedz "Drama")
    ?pid <- (pytanie "Drama or comedy?" "Drama" "Comedy" "A little bit of both")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you like sci-fi or supernatural shows?" "Yes" "No")))

; Drama sci-fi yes
(defrule drama-sci-fi
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you like sci-fi or supernatural shows?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Can you handle gore?" "Yes" "No")))

; Drama sci-fi gore yes
(defrule drama-sci-fi-zombies
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Can you handle gore?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you like zombies?" "Yes" "No")))

; Drama sci-fi gore zombie yes
(defrule zombies-result
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you like zombies?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "The Walking Dead - 1 Day 15 Hrs")))

; Drama sci-fi gore zombie no
(defrule no-zombies
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Do you like zombies?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you like vampires?" "Yes" "No")))

; Drama sci-fi gore zombie vampires yes
(defrule i-like-vampires
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you like vampires?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "The Vampire Diaries - 3 Days 6 Hrs")))

; Drama sci-fi gore zombie vampires no
(defrule no-vampires
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Do you like vampires?" "Yes" "No")
    =>  
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Supernatural - 6 Days 1 Hrs")))

; Drama sci-fi gore no
(defrule no-gore
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Can you handle gore?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you like british characters?" "Yes" "No")))

; Drama sci-fi gore british no
(defrule bloody-hell-i-hate-british-innit
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Do you like british characters?" "Yes" "No")
    =>  
    (retract ?id)
    (retract ?pid)
    (assert (wynik "LOST - 3 Days 18 Hrs")))


; Drama sci-fi gore british no
(defrule i-love-british-mate
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you like british characters?" "Yes" "No")
    =>  
    (retract ?id)
    (retract ?pid)
    (assert (wynik "DR. WHO - 15 Days 12 Hrs")))


; Drama sci-fi no
(defrule politics
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Do you like sci-fi or supernatural shows?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you like politics?" "Yes" "No")))

; Drama sci-fi politics yes
(defrule action
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you like politics?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you need some action?" "Yes" "No")))

; Drama sci-fi politics action yes
(defrule action-yes
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you need some action?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "24 - 6 Days 2 Hrs")))


; Drama sci-fi politics action no
(defrule action-no
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Do you need some action?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Are you interested in scandalous romances?" "Yes" "No")))

; Drama sci-fi politics action romance yes
(defrule i-need-romance
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Are you interested in scandalous romances?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Scandal - 1 Day 8 Hrs")))

; Drama sci-fi politics action romance no
(defrule no-romance
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Are you interested in scandalous romances?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Would you rather watch something cynical or something optimistic?" "Cynical" "Optimistic")))

; Drama sci-fi politics action romance cynical
(defrule cynical
    ?id <- (odpowiedz "Cynical")
    ?pid <- (pytanie "Would you rather watch something cynical or something optimistic?" "Cynical" "Optimistic")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "House Of Cards - 1 Day 9 Hrs")))

; Drama sci-fi politics action romance optimistic
(defrule optimistic
    ?id <- (odpowiedz "Optimistic")
    ?pid <- (pytanie "Would you rather watch something cynical or something optimistic?" "Cynical" "Optimistic")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "The West Wing - 4 Days 20 Hrs")))

; Drama sci-fi politics no
(defrule no-politics
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Do you like politics?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Feel like crying?" "Yes" "No")))

; Drama sci-fi politics cry yes
(defrule i-cry
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Feel like crying?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you like football?" "Yes" "No")))

; Drama sci-fi politics cry football yes
(defrule i-like-football
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you like football?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Friday Night Lights - 2 Days 8 Hrs")))

; Drama sci-fi politics cry football no
(defrule no-football
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Do you like football?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "What about a Hospital themed show?" "Yes" "No")))

; Drama sci-fi politics cry football hospitals yes
(defrule i-like-hospitals
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "What about a Hospital themed show?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Gray's Anatomy - 6 Days 16 Hrs")))

; Drama sci-fi politics cry football hospitals no
(defrule no-hospitals
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "What about a Hospital themed show?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Parenthood - 2 Days 16 Hrs")))

; Drama sci-fi politics cry no
(defrule boysdontcry
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Feel like crying?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you like crime shows?" "Yes" "No")))

; Drama sci-fi politics cry crime yes
(defrule ilikecrime 
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you like crime shows?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you root for the criminals?" "Yes" "No")))

; Drama sci-fi politics cry crime root yes
(defrule irootforthecriminals
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you root for the criminals?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Dexter - 3 Days")))

; Drama sci-fi politics cry crime root no
(defrule ihatecriminals
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Do you root for the criminals?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Forensics or psychology?" "Forensics" "Psychology")))

; Drama sci-fi politics cry crime root forensics
(defrule forensics
    ?id <- (odpowiedz "Forensics")
    ?pid <- (pytanie "Forensics or psychology?" "Forensics" "Psychology")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "CSI: MIAMI - 6 Days 22 Hrs")))

; Drama sci-fi politics cry crime root psychology
(defrule psychology
    ?id <- (odpowiedz "Psychology")
    ?pid <- (pytanie "Forensics or psychology?" "Forensics" "Psychology")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Criminal Minds - 6 Days 6 Hrs")))

; Drama sci-fi politics cry crime no
(defrule nocrimeforme
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Do you like crime shows?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "What are your feelings towards meth?" "Meth is the stuff" "I'd rather not")))

; Drama sci-fi politics cry crime meth yes
(defrule ilikemeth
    ?id <- (odpowiedz "Meth is the stuff")
    ?pid <- (pytanie "What are your feelings towards meth?" "Meth is the stuff" "I'd rather not")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Breaking Bad - 2 Days")))

; Drama sci-fi politics cry crime meth no
(defrule nomethforme
    ?id <- (odpowiedz "I'd rather not")
    ?pid <- (pytanie "What are your feelings towards meth?" "Meth is the stuff" "I'd rather not")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Mad Men - 2 Days 9 Hrs")))

; Comedy
(defrule comedy
    ?id <- (odpowiedz "Comedy")
    ?pid <- (pytanie "Drama or comedy?" "Drama" "Comedy" "A little bit of both")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you like your characters to have questionable morals?" "Yes" "No")))

; Comedy morals yes
(defrule friends-or-family
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you like your characters to have questionable morals?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Would you rather watch a show about friend group or about dysfunctional family?" "Friends" "Family")))

; Comedy morals friends 
(defrule friends
    ?id <- (odpowiedz "Friends")
    ?pid <- (pytanie "Would you rather watch a show about friend group or about dysfunctional family?" "Friends" "Family")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "It's Always Sunny In Philadelphia - 1 Day 14 Hrs")))

; Comedy morals family 
(defrule family
    ?id <- (odpowiedz "Family")
    ?pid <- (pytanie "Would you rather watch a show about friend group or about dysfunctional family?" "Friends" "Family")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Arrested development - 1 Day 1 Hr")))

; Comedy morals no
(defrule strong-female
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Do you like your characters to have questionable morals?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "How do you feel about strong female characters?" "Yes" "No")))

; Comedy morals female yes
(defrule drugs
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "How do you feel about strong female characters?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you like them to sell drugs?" "Yes" "No")))

; Comedy morals female drugs yes
(defrule drugs-are-good 
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you like them to sell drugs?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Weeds - 3 Days 4 Hrs")))

; Comedy morals female drugs no
(defrule drugs-are-bad
    ?id <- (drugs "No")
    ?pid <- (pytanie "Do you like them to sell drugs?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Tina Fey or Amy Poehler?" "Tina" "Amy")))

; Comedy morals female drugs tina
(defrule tina
    ?id <- (odpowiedz "Tina")
    ?pid <- (pytanie "Tina Fey or Amy Poehler?" "Tina" "Amy")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "30 Rock - 2 Days 2 Hrs")))

; Comedy morals female drugs tina
(defrule amy
    ?id <- (odpowiedz "Amy")
    ?pid <- (pytanie "Tina Fey or Amy Poehler?" "Tina" "Amy")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Parks And Recreation - 1 Day 18 Hrs")))

; Comedy morals female no
(defrule weak-female
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "How do you feel about strong female characters?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you like workplace oriented humor?" "Yes" "No")))

; Comedy morals female workplace yes
(defrule ilikeworkplacehumor
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you like workplace oriented humor?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "The Office - 3 Days 5 Hrs")))

; Comedy morals female workplace no
(defrule idontlikeworkplacehumor 
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Do you like workplace oriented humor?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you wanna see James Franco and Seth Rogen as highschoolers?" "Yes" "No")))

; Comedy morals female workplace highschoolres yes
(defrule highschoolers
    ?id <- (odpowiedz "Yes")
    ?pid <- (pytanie "Do you wanna see James Franco and Seth Rogen as highschoolers?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Freaks And Geeks - 14 Hrs")))

; Comedy morals female workplace highschoolres no
(defrule barorcafe
    ?id <- (odpowiedz "No")
    ?pid <- (pytanie "Do you wanna see James Franco and Seth Rogen as highschoolers?" "Yes" "No")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Do you want your NYC friends to hang out at a bar or cafe?" "Bar" "Cafe")))

; Comedy morals female workplace highschoolres bar
(defrule bar
    ?id <- (odpowiedz "Bar")
    ?pid <- (pytanie "Do you want your NYC friends to hang out at a bar or cafe?" "Bar" "Cafe")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "How I Met Your Mother - 3 Days 2 Hrs")))

; Comedy morals female workplace highschoolres friends
(defrule cafe
    ?id <- (odpowiedz "Cafe")
    ?pid <- (pytanie "Do you want your NYC friends to hang out at a bar or cafe?" "Bar" "Cafe")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Friends - 3 Days 14 Hrs")))

; Both
(defrule both
    ?id <- (odpowiedz "A little bit of both")
    ?pid <- (pytanie "Drama or comedy?" "Drama" "Comedy" "A little bit of both")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (pytanie "Small town or prison setting?" "Small town" "Prison")))

; Both prison
(defrule prison
    ?id <- (odpowiedz "Prison")
    ?pid <- (pytanie "Small town or prison setting?" "Small town" "Prison")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "OITNB - 23 Hrs")))

; Both smalltown
(defrule smalltown
    ?id <- (odpowiedz "Small town")
    ?pid <- (pytanie "Small town or prison setting?" "Small town" "Prison")
    =>
    (retract ?id)
    (retract ?pid)
    (assert (wynik "Gilmore Girls - 4 Days 16 Hrs")))

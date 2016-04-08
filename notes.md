 Models
   User
   --------
   id      email             username    group_id
   1       greg@apple.com    greg123       1

   Group
   -------
   id      name      street address      city      state
   1       apple      678 broad st.      cupertino    CA


   Document
   -----
   id      text_string             group_id
   1         "blahblah leader :)"    1

   Keyword
   --------
   id      name      
   1       "good"                 


    Values
    ---
    id    rating

    Keyword-Value
    ---
    id    keyword_id    value_id

    Document-Keyword
    id      document_id     keyword_id

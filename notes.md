# Models
#   User
#   --------
#   id      email             username    group_id
#   1       greg@apple.com    greg123       1
#
#   Group
#   -------
#   id      name      street address      city      state
#   1       apple      678 broad st.      cupertino    CA
#
#
#   Document
#   -----
#   id      text_string             group_id
#   1         "blahblah leader :)"    1
#
#   Keyword
#   --------
#   id      name    value   document_id   group_id
#   1       "good"    +1        1           1
#
#   Standard Keywords
#   ----------
#   id    name    value
#   1     "great"   +1
#
#   Document-Standard Keywords
#   ----
#   id    document_id     standard_keyword_id
#   1       1                 1
#   2       2                 1

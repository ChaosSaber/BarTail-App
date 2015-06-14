Feature: Bar-Bewertung
  Nutzer gibt eine Bewertung  für eine Bar ein.
  
  Scenario: Nutzer gibt Kriterien an
    Given: Nutzer ist in der Activity BewertenActivity
    And: Nutzer bewertet "5 Sterne"
    And: Nutzer schreibt "Super Bier"
    When: Benutzer klickt Button "Bewerten"
    Then: Textview ausgabe zeigt "Bewertung abgegeben"
    And: aktuelle Activity ist BewertenActivity

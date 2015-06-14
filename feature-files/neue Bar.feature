Feature: Neue Bar hinzufügen
  Nutzer fügt der Datenbank eine neue Bar hinzu
  
  Scenario: Nutzer gibt Daten korrekt ein
    Given: Nutzer ist in der Activity AddbarActivity
    When: Nutzer gibt "neue Bar" ein
    And: Nutzer gibt "Kaiserstraße 6" ein
    And: Nutzer gibt "Karlsruhe" ein
    And: Nutzer gibt "76166" ein
    And: Nutzer gibt "Jazz" ein
    And: Nutzer gibt "Eine Bar mi Jazzmusik" ein
    And: drückt Button "Addbar"
    Then: Textview ausgabe zeigt "Bar hinzugefügt"
    And: aktuelle Activity ist AddbarActivity
  
  Scenario: Name vergessen
    Given: Nutzer ist in der Activity AddbarActivity
    When: Nutzer gibt "" ein
    And: Nutzer gibt "Kaiserstraße 6" ein
    And: Nutzer gibt "Karlsruhe" ein
    And: Nutzer gibt "76166" ein
    And: Nutzer gibt "Jazz" ein
    And: Nutzer gibt "Eine Bar mi Jazzmusik" ein
    And: drückt Button "Addbar"
    Then: Textview ausgabe zeigt "Bitte geben sie einen Namen ein"
    And: aktuelle Activity ist AddbarActivity
    
  Scenario: Adresse nicht eingetragen
    Given: Nutzer ist in der Activity AddbarActivity
    When: Nutzer gibt "neue Bar" ein
    And: Nutzer gibt "" ein
    And: Nutzer gibt "Karlsruhe" ein
    And: Nutzer gibt "76166" ein
    And: Nutzer gibt "Jazz" ein
    And: Nutzer gibt "Eine Bar mi Jazzmusik" ein
    And: drückt Button "Addbar"
    Then: Textview ausgabe zeigt "Bitte geben sie eine Adresse ein"
    And: aktuelle Activity ist AddbarActivity

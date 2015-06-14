Feature: Nutzer registriert sich
	Neue Nutzer müssen sich registrieren um die Anwendung zu nutzen
	
	Scenario: Nutzer gibt richtige Anmeldeinformationen ein und diese existieren noch nicht im System
		Given Nutzer ist in activity RegisterActivity.java
		When Nutzer gibt "Susi" ein
		And Nutzer gibt "Susi@gmx.com" ein
		And Nutzer gibt "pa55wort" ein
		And Nutzer gibt "pa55wort" ein
		And Nutzer drückt den Button "Registrieren"
		Then Textview Ausgabe zeigt "Registrierung erfolgreich"
		And aktuelle Activity ist LoginActivity.java

	Scenario: Email existiert bereits
		Given Nutzer ist in activity RegisterActivity.java
		When Nutzer gibt "Sus" ein
		And Nutzer gibt "sus@gmx.com" ein
		And Nutzer gibt "pa55wort" ein
		And Nutzer gibt "pa55wort" ein
		And Nutzer drückt den Button "Registrieren"
		Then Textview Ausgabe zeigt "Diese E-Mail adresse ist bereits registriert"
		And aktuelle Activity ist RegisterActivity
	
	Scenario: Passwortwiederholung falsch
		Given Nutzer ist in activity RegisterActivity.java
		When Nutzer gibt "Susi" ein
		And Nutzer gibt "susi@gmx.de" ein
		And Nutzer gibt "Pa55wort" ein
		And Nutzer gibt "pa55wort" ein
		And Nutzer drückt den Button "Registrieren"
		Then Textview Ausgabe zeigt "Die Passwortwiederhohlung ist falsch"
		And aktuelle Activity ist RegisterActivity

		

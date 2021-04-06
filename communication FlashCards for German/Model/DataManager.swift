//
//  configureData.swift
//  communication FlashCards for German
//
//  Created by Media Davarkhah on 8/24/1399 AP.
//

import CoreData
import UIKit
class DataManager{
    
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
     func configureData(){
        
        // make object levelA1
        let levelA1 = Level(context: context)
        levelA1.name = "A1"
       
//        define data here
        configureTopic(with: "Mein Name ist...", with: ["Ich heisse Sarah","Mein Name ist Jonas"], for: levelA1)
        configureTopic(with: "Herkunft", with: ["Ich komme aus dem Iran"] , for: levelA1)
        configureTopic(with: "sich und andere Vorstellen", with: ["Das ist Paco"] , for: levelA1)
        configureTopic(with: "nach dem Befinden fragen", with: ["Wie geht's?"] , for: levelA1)
        configureTopic(with: "Beruf", with: ["ich bin arbeitslos"] , for: levelA1)
        configureTopic(with: "Persoenliches", with: ["Ich mag die Suppe"] , for: levelA1)
        configureTopic(with: "Familie", with: ["Meine Mutter ist eine Aerztin"] , for: levelA1)
        configureTopic(with: "Sprachkenntnisse", with: ["Ich spreche ein bisschen Englisch"] , for: levelA1)
        configureTopic(with: "Beratungsgespraeche", with: ["Brauchen Sie Hilfe?"] , for: levelA1)
        configureTopic(with: "etwas bewerten", with: ["Das ist schoen"] , for: levelA1)
        configureTopic(with: "sich bedanken", with: ["danke sehr"] , for: levelA1)
        configureTopic(with: "auf bedanken reagieren", with: ["Bitte"] , for: levelA1)
        configureTopic(with: "Gegenstand beschreiben", with: ["Das ist auf Holz"] , for: levelA1)
        configureTopic(with: "Telefongespraeshe", with: ["Auf wiederhoeren"] , for: levelA1)
        // Lektion 7
        
        // TODO: Add obj
        // define A2
        let levelA2 = Level(context: context)
        levelA2.name = "A2"
        
        //        define data here
        configureTopic(with: "Grosseltern", with: ["Ich liebe meine grosseltern"], for: levelA2)
        
        // DO THE SAME FOR A2
        //save
        
        
        
        // MARK: -B1
        let levelB1 = Level(context: context)
        levelB1.name = "B1"
        //MARK:- lektion 1
        configureTopic(with: "Charaktereigenschaften", with: ["Du bist eine Hübsche und eine Kluge.","Mit deiner Lebensfreude und deinem Humor bist du mein größtes Vorbild.","Du bist fair und kritisch, aber auch fair und sympathisch.","Du bist ebenso ordentlich wie vernünftig.","Er hat mir mit seinem Mut und seiner Abenteuerlust geholfen.","Sie ist großzügig und unterstützt mich auch diesmal finanziell.","Ich kenne niemanden, der so viel Humor hat wie sie.","Er hat ziemlich viel Humor.","Sie wirkt wahnsinnig humorvoll","Er wirkt ziemlich arrogant, finde ich.","Besonders großen Respekt habe ich vor ihrem Mut","Den Mut mag ich besonders an ihr.","Du hast also auch mir Nachhilfe gegeben Nachhilfe in Mut und Abenteuerlust","Anita ist die Ordentlichste, die ich kenne. Sogar unsere Gewürze in der Küche hat sie alphabetisch geordnet","Wer mich kennt, weiß ja, dass ich nicht so wahnsinnig vernünftig bin","Sie ist so klug, dass sie sich leicht gegen ihren Konkurrenten durchsetzen konnte","Bleib so, wie du bist. Voller Lebensfreude und Humor. Ich hoffe, ich werde einmal wie du" ], for: levelB1)
        configureTopic(with: "Personen beschreiben", with: ["Das ist Anita. Wer sie noch nicht kennt: Anita ist meine Freundin.","Kennt ihr meine beste Freundin? Sie heißt Anna.","Das ist meine Frau. Sie hat mich schon früh gezeigt, was sie als Frau alles kann.","Sie ist meine beste Freundin und mann kann sich keine bessere wünschen.","Er ist mein bester Freund und mann kann sich keinen besseren wünschen.","Sie ist die Ordentlichste, die ich kenne.","Er ist ziemlich jung.","Diese Hübsche hier neben mir heißt Anna.","Sie ist die Tochter von meinem Nachbarn und ich habe ihr drei Jahre lang Latein-Nachhilfe gegeben.","Du hast mich immer großzügig unterstützt. Ich hoffe, ich enttäusche dich nicht.", "Zu guter Letzt: mein ebenso strenger, wie sympathischer Professor. Er hat mich für das Stipendium vorgeschlagen.","So kritisch er auch sein kann, er hat mich immer unterstützt und war immer fair. Ich habe großen Respekt vor seinem Vertrauen zu mir."], for: levelB1)
        
        //MARK: - Lektion 2
        
        //MARK: - Lektion 3
        
        //MARK: - Lektion 4
        //MARK: - Lektion 5
        configureTopic(with: "Über etwas sicher im Zukunft sprechen", with: ["Ende des Jahres bekommen alle Studenten ein Diplom","Ich bin davon überzeugt, dass in Zwei Jahren lebe ich in einer Großen Statt","Er ist der Überzeugung, dass sich die meisten in den nächsten Jahren einen Computer kaufen"], for: levelB1)
        configureTopic(with: "Vermutungen über zukünftiges äußeren", with: ["Der Computer wird sich in privaten Haushalten durchsetzen.","Ich vermute, dass der Computer für unsere Kinder wie ein Lehrer sein wird","Vermutlich werden unsere Autos sich selbst steuern können und vieles mehr.","Manche Leute behaupten, in Zukunft werden wir uns keine Briefe mehr schreiben, sondern Mitteilungen von einem Computer zum anderen schicken."," Es heißt auch, bald werden Maschinen Menschen ersetzen.","Micky ist der Ansicht, dass Computer im Berufsleben eine große Rolle spielen werden.","Im Privatleben wird der Computer genauso wichtig sein wie im Berufsleben.","Die Menschen werden in Zukunft vielleicht mehr freie Zeit haben, denn die Computer nehmen ihnen Arbeit ab.", "Ich glaube, auch im privaten Bereich wird Der Computer in den nächsten Jahren einen zentralen Platz einnehmen.","In den nächsten Jahrzehnten werden Zeit und Raum für die Kommunikation noch unwichtiger werden","In 20 Jahren werden Studenten sich in eine virtuelle Universität einloggen und überall und jederzeit mit dem ganzen System arbeiten können","Die Firma wird Kommunikationsinseln einrichten, wo sich Kollegen und Kunden als Teams treffen.","vermutlich wird jeder Mitarbeiter bei der Einstellung eine Datenbrille mit allen Informationen bekommen.","Noch mehr Technologie in unserem Leben halte ich für unmöglich.","wenn es so weiter geht, werden wir schon bald eine Rückbewegung erleben.","Ich glaube wir werden die 24 Stunden Erreichbarkeit zurücknehmen und eine Medienpause einplanen.","Was ich mir allerdings für mich gut vorstellen kann: Mein Büro wird papierlos sein.", "Vor allem im Berufsleben gibt es keine Alternative zum Computer"," Morgen wird wohl endlich mal wieder die Sonne scheinen.“,“Bald wird es keine Briefkästen mehr geben.","Ich halte es für unmöglich, dass es mit dem technischen Fortschritt noch weitergeht.","In Zukunft werden Zeit und Raum bei der Kommunikation keine Rolle mehr spielen.","Schon bald wird es wohl keine Alternative zu Teamarbeitsplätzen mehr geben, an denen es technische Hilfsmittel wie Service-Roboter gibt","Ich vermute, dass wir nicht mehr rund um die Uhr erreichbar sein werden, weil uns das zu sehr anstrengt","In 20 Jahren werden wohl alle Angestellten eine Datenbrille erhalten","Man will sich vermutlich ohne Maus und Tastatur in die Systeme einloggen können","Ich kann mir gut vorstellen, dass man am Arbeitsplatz kein Papier mehr braucht","Ich glaube, es wird einen großen technischen Fortschritt geben“,“ Nicht so ferner Zukunft werden die Autos keinen Fahrer mehr brauchen. Sie werden von Computern gefahren.Ich kann mir gut vorstellen, dass man sich auf der Fahrt im Auto einen Film anschaut.","Es wird wohl nur noch Elektroautos geben, die mit Storm fahren und leise sind. Ich vermute auch, dass es neue öffentliche Verkehrssysteme geben wird, die für die Umwelt besser sind“,“ vermutlich wird der Autoverkehr in den Städten zu einem großen Problem. Aber wir brauchen Autos .Dazu gibt es wohl in nächster Zeit keine realistische Alternative. Ich halte es vor wenn möglich, dass wir dieses Problem in den nächsten zehn Jahren lösen können.“,” ich glaube, in 20 Jahren werden die Menschen nur noch 25-30 Stunden pro Woche Arbeiten","Das halte ich für unmöglich. Ein Auto braucht man doch. Dazu gibt es keine Alternative"], for: levelB1)
        configureTopic(with: "Vorhersagen", with: ["Ich werde dir jetzt  Zukunft vorhersagen","Du wirst dein Diplom als Physiker mit der Note 'sehr gut' machen", "Die Harvard Universität wird dir eine Stelle anbieten.","Du wirst dich in eine berühmte Schauspielerin verlieben.","Ihr werdet heiraten und fünf Kinder bekommen","Eure Kinder werden sehr klug und hübsch sein" ,"Deine Frau wird einen Oscar bekommen und du wirst den Nobelpreis erhalten"]
                       , for: levelB1)
        configureTopic(with: "Versprechen/Vorsatz/plan", with: ["Ich werde morgen mit dem Rauchen aufhören","Ich werde in Zukunft mehr Sport machen.","Wir werden dir beim Umzug helfen"], for: levelB1)
        configureTopic(with: "Aufforderung/Warnung", with: ["Du wirst jetzt bitte dein Zimmer aufräumen","Du wirst jetzt sofort die Musik leiser machen"], for: levelB1)
        //MARK: - Lektion 6
        configureTopic(with: "Halboffizielle Einladungen", with: [
                        "Gastgeber: Herzlich willkommen, Frau Müller! Kommen Sie rein. Schön, dass es geklappt hat. Gast: Vielen Dank für Ihre Gastfreundlichschaft, Frau Böhle",
                        "Gastgeber: Darf ich Ihnen meinen Mann vorstellen?",
                        "Gastgeber: Guten Tag Herr Müller.Sehr erfreut. Gast: ganz meinerseits. Die sind für Sie! Gastgeber: Oh! Das ist aber ein schöner Blumenstrauß. Vielen Dank!",
                        
                        "Gast: Hm, das sieht aber lecker aus. Und es riecht so gut.",
                        "Gast: Es hat wirklich ausgezeichnet geschmeckt.",
                        "Gastgeber: Setzen Sie sich!",
                        "Gastgeber: Fühlen Sie sich wie zu Hause!",
                        "Gastgeber: Darf ich Ihnen ein Glas Sekt anbieten? Gast: Ja, gern.",
                        "Gastgeber: Möchten Sie noch etwas Suppe? Gast: Nein danke. Ich bin leider schon satt.",
                        "Gastgeber: Darf ich Ihnen etwas zu trinken anbieten? Gast: Ja, gern. Danke",
                        "Gastgeber: Darf ich Ihnen noch etwas Kaffee nachschenken? Gast: Ja, gern.",
                        "Gastgeber: Schon? Bleiben Sie doch noch ein bisschen.  Gast: Nein, danke. Es ist schon spät. Ich muss langsam gehen. Gastgeber: Sie haben recht. Kommen Sie gut nach Hause.",
                        "Gast: Noch einmal herzlichen Dank für die Einladung! Ich habe lange nicht so gut gegessen. Gastgeber: Gern geschehen.",
                        "Gastgeber: Herzlich willkommen bei uns. Sehr erfreut.Gast: Ganz meinerseits","Gastgeber: Setzen Sie sich doch. Fühlen sie sich wie zu Hause. Gast: Danke. Aber, falls es Sie nicht stört, ich würde mich lieber hierhin setzen. "], for: levelB1)
        
        
        
        configureTopic(with: "Sonderwünsche äußern", with: ["Ich wollte eigentlich noch was Tee, aber...",
                       "Es tut mir leid. Aber ich habe eine Katzenhaar Allergie.",
                       "Ich bin allergisch gegen Katzenhaar.",
                       "Wenn es sie nicht stört, würde ich mich lieber hierhin setzen.",
                       "Wenn es keine Umstände macht, hätte ich lieber einen Kaffee.",
                       "Ich bin Vegetarier. Also, falls Sie auch was ohne Fleisch hätten?",
                       "Aber zu einem Kaffee würde ich nicht Nein sagen"], for: levelB1)
        configureTopic(with: "Auf Sonderwünsche reagieren", with: ["Ach, das macht doch nichts.",
                       "Das ist kein Problem.",
                       "Das macht gar keine Umstände.",
                       "Oh, das tut mir leid! Aber da kann man leider nichts machen.",
                       "Oh, wie schade! Dann kann ich Ihnen leider nichts anbieten.",
                       "Dann kann ich Ihnen nur einen Kaffee anbieten.",
                       "Falls Sie lieber möchten, Kann ich Ihnen auch eine Kartoffel kochen"], for: levelB1)
        //MARK: - Lektion 7
        //MARK: - Lektion 8
        //MARK: - Lektion 9
        //MARK: - Lektion 10
        //MARK: - Lektion 11
        //MARK: - Lektion 12
        //MARK: - Lektion 13
        //MARK: - Lektion 14
        //MARK: - Lektion 15
        //MARK: - Lektion 16
        //MARK: - Lektion 17
        //MARK: - Lektion 18
        //MARK: - Lektion 19
        //MARK: - Lektion 20
        //MARK: - Lektion 21
        //MARK: - Lektion 22
        //MARK: - Lektion 23
        //MARK: - Lektion 24
        
        do{
            try context.save()
        }
        catch{
            print("couldn't configure data successfully")
        }
        
    }
    
    private func configureTopic(with name: String,with flashcards : [String] ,for level: Level){
        // make topic obj
        let topic = Topic(context: context)
        topic.name = name
        // set list of flash cards
        topic.flashcardsList = flashcards
        // define its relation to the level
        topic.level = level
        
    }
     
  
    
    
    
}


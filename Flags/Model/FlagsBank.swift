//
//  FlagsBank.swift
//  Flags
//
//  Created by Руслан Кукса on 1/22/19.
//  Copyright © 2019 Ruslan Kuksa. All rights reserved.
//

import Foundation

struct FlagsBank {
    var flagsLevel1 = [Countries]()
    var flagsLevel2 = [Countries]()
    var flagsLevel3 = [Countries]()
    var flagsLevel4 = [Countries]()
    var flagsLevel5 = [Countries]()
    var flagsLevel6 = [Countries]()
    var flagsLevel7 = [Countries]()
    var flagsLevel8 = [Countries]()
    var flagsLevel9 = [Countries]()
    var flagsLevel10 = [Countries]()
    
    
    var flagsBank = [[Countries]()]
    
    init() {
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Spain", comment: ""), imageName: "es"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("United States of America", comment: ""), imageName: "us"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Japan", comment: ""), imageName: "jp"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("France", comment: ""), imageName: "fr"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Brazil", comment: ""), imageName: "br"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("India", comment: ""), imageName: "in"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("China", comment: ""), imageName: "cn"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Germany", comment: ""), imageName: "de"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Canada", comment: ""), imageName: "ca"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Italy", comment: ""), imageName: "it"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("United Kingdom", comment: ""), imageName: "uk"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Uruguay", comment: ""), imageName: "uy"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Russia", comment: ""), imageName: "ru"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Argentina", comment: ""), imageName: "ar"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Portugal", comment: ""), imageName: "pt"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Norway", comment: ""), imageName: "no"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Sweden", comment: ""), imageName: "se"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Saudi Arabia", comment: ""), imageName: "sa"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("Switzerland", comment: ""), imageName: "ch"))
        flagsLevel1.append(Countries(countryName: NSLocalizedString("South Korea", comment: ""), imageName: "kr"))
        
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Luxembourg", comment: ""), imageName: "lu"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Czech Republic", comment: ""), imageName: "cz"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Cuba", comment: ""), imageName: "cu"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Finland", comment: ""), imageName: "fi"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Belgium", comment: ""), imageName: "be"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Tunisia", comment: ""), imageName: "tn"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Iceland", comment: ""), imageName: "is"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("New Zeland", comment: ""), imageName: "nz"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Australia", comment: ""), imageName: "au"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Netherlands", comment: ""), imageName: "nl"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Mexico", comment: ""), imageName: "mx"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Thailand", comment: ""), imageName: "th"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Ireland", comment: ""), imageName: "ie"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Egypt", comment: ""), imageName: "eg"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Denmark", comment: ""), imageName: "dk"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Croatia", comment: ""), imageName: "hr"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Greece", comment: ""), imageName: "gr"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Israel", comment: ""), imageName: "il"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Iran", comment: ""), imageName: "ir"))
        flagsLevel2.append(Countries(countryName: NSLocalizedString("Romania", comment: ""), imageName: "ro"))
        
        flagsLevel3.append(Countries(countryName: NSLocalizedString("United Arab Emirates", comment: ""), imageName: "ae"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Latvia", comment: ""), imageName: "lv"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Belarus", comment: ""), imageName: "by"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Cyprus", comment: ""), imageName: "cy"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Indonesia", comment: ""), imageName: "id"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("North Korea", comment: ""), imageName: "kp"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Poland", comment: ""), imageName: "pl"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Morocco", comment: ""), imageName: "ma"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Colombia", comment: ""), imageName: "co"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Austria", comment: ""), imageName: "at"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Turkey", comment: ""), imageName: "tr"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Singapore", comment: ""), imageName: "sg"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Paraguay", comment: ""), imageName: "py"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Vietnam", comment: ""), imageName: "vn"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Ukraine", comment: ""), imageName: "ua"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("North Macedonia", comment: ""), imageName: "mk"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Malaysia", comment: ""), imageName: "my"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Iraq", comment: ""), imageName: "iq"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Venezuela", comment: ""), imageName: "ve"))
        flagsLevel3.append(Countries(countryName: NSLocalizedString("Vatican", comment: ""), imageName: "va"))
        
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Bosnia and Herzegovina", comment: ""), imageName: "ba"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Cameroon", comment: ""), imageName: "cm"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Monaco", comment: ""), imageName: "mc"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Georgia", comment: ""), imageName: "ge"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Hungary", comment: ""), imageName: "hu"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Senegal", comment: ""), imageName: "sn"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Sudan", comment: ""), imageName: "sd"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Syria", comment: ""), imageName: "sy"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("South Africa", comment: ""), imageName: "za"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Slovakia", comment: ""), imageName: "sk"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Slovenia", comment: ""), imageName: "si"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Serbia", comment: ""), imageName: "rs"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Peru", comment: ""), imageName: "pe"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Kenya", comment: ""), imageName: "ke"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("England", comment: ""), imageName: "en"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Qatar", comment: ""), imageName: "qa"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Azerbaijan", comment: ""), imageName: "az"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Bulgaria", comment: ""), imageName: "bg"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Algeria", comment: ""), imageName: "dz"))
        flagsLevel4.append(Countries(countryName: NSLocalizedString("Afghanistan", comment: ""), imageName: "af"))
        
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Andorra", comment: ""), imageName: "ad"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Bolivia", comment: ""), imageName: "bo"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Ecuador", comment: ""), imageName: "ec"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Honduras", comment: ""), imageName: "hn"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Nicaragua", comment: ""), imageName: "ni"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Philippines", comment: ""), imageName: "ph"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Panama", comment: ""), imageName: "pa"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Nigeria", comment: ""), imageName: "ng"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Moldova", comment: ""), imageName: "md"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Jamaica", comment: ""), imageName: "jm"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Dominican Republic", comment: ""), imageName: "do"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Pakistan", comment: ""), imageName: "pk"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("El Salvador", comment: ""), imageName: "sv"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Zambia", comment: ""), imageName: "zm"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Taiwan", comment: ""), imageName: "tw"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Samoa", comment: ""), imageName: "ws"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Liechtenstein", comment: ""), imageName: "li"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Armenia", comment: ""), imageName: "am"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Scotland", comment: ""), imageName: "scot"))
        flagsLevel5.append(Countries(countryName: NSLocalizedString("Mali", comment: ""), imageName: "ml"))
        
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Bangladesh", comment: ""), imageName: "bd"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Cambodia", comment: ""), imageName: "kh"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Barbados", comment: ""), imageName: "bb"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Bhutan", comment: ""), imageName: "bt"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Ghana", comment: ""), imageName: "gh"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Kazakhstan", comment: ""), imageName: "kz"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Costa Rica", comment: ""), imageName: "cr"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Albania", comment: ""), imageName: "al"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Haiti", comment: ""), imageName: "ht"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Jordan", comment: ""), imageName: "jo"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Kuwait", comment: ""), imageName: "kw"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Mongolia", comment: ""), imageName: "mn"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Malta", comment: ""), imageName: "mt"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Libya", comment: ""), imageName: "ly"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Kyrgyzstan", comment: ""), imageName: "kg"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Yemen", comment: ""), imageName: "ye"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Oman", comment: ""), imageName: "om"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Papua New Guinea", comment: ""), imageName: "pg"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Tanzania", comment: ""), imageName: "tz"))
        flagsLevel6.append(Countries(countryName: NSLocalizedString("Uzbekistan", comment: ""), imageName: "uz"))
        
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Zimbabwe", comment: ""), imageName: "zw"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Uganda", comment: ""), imageName: "ug"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Togo", comment: ""), imageName: "tg"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Suriname", comment: ""), imageName: "sr"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Sri Lanka", comment: ""), imageName: "lk"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("South Sudan", comment: ""), imageName: "ss"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Niger", comment: ""), imageName: "ne"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Namibia", comment: ""), imageName: "na"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Trinidad and Tobago", comment: ""), imageName: "tt"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Madagascar", comment: ""), imageName: "mg"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Lebanon", comment: ""), imageName: "lb"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Liberia", comment: ""), imageName: "lr"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Guinea", comment: ""), imageName: "gn"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Democratic Republic of the Congo", comment: ""), imageName: "cd"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Republic of the Congo", comment: ""), imageName: "cg"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Chad", comment: ""), imageName: "td"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Angola", comment: ""), imageName: "ao"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Bahamas", comment: ""), imageName: "bs"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Bahrain", comment: ""), imageName: "bh"))
        flagsLevel7.append(Countries(countryName: NSLocalizedString("Brunei", comment: ""), imageName: "bn"))
        
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Djibouti", comment: ""), imageName: "dj"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Equatorial Guinea", comment: ""), imageName: "gq"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Ethiopia", comment: ""), imageName: "et"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Fiji", comment: ""), imageName: "fj"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Gabon", comment: ""), imageName: "ga"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Kiribati", comment: ""), imageName: "ki"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Botswana", comment: ""), imageName: "bw"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Central African Republic", comment: ""), imageName: "cf"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Burundi", comment: ""), imageName: "bi"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Turkmenistan", comment: ""), imageName: "tm"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Dominica", comment: ""), imageName: "dm"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Eswatini", comment: ""), imageName: "sz"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Gambia", comment: ""), imageName: "gm"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Guyana", comment: ""), imageName: "gy"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Laos", comment: ""), imageName: "la"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Malawi", comment: ""), imageName: "mw"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Maldives", comment: ""), imageName: "mv"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Montenegro", comment: ""), imageName: "me"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Somalia", comment: ""), imageName: "so"))
        flagsLevel8.append(Countries(countryName: NSLocalizedString("Tuvalu", comment: ""), imageName: "tv"))
        
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Tajikistan", comment: ""), imageName: "tj"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Tonga", comment: ""), imageName: "to"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Solomon Islands", comment: ""), imageName: "sb"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Sierra Leone", comment: ""), imageName: "sl"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Seychelles", comment: ""), imageName: "sc"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("San Marino", comment: ""), imageName: "sm"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Saint Lucia", comment: ""), imageName: "lc"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Rwanda", comment: ""), imageName: "rw"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Nauru", comment: ""), imageName: "nr"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Mozambique", comment: ""), imageName: "mz"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Micronesia", comment: ""), imageName: "fm"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Mauritius", comment: ""), imageName: "mu"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Lesotho", comment: ""), imageName: "ls"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Grenada", comment: ""), imageName: "gd"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("East Timor", comment: ""), imageName: "tl"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Eritrea", comment: ""), imageName: "er"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Burkina Faso", comment: ""), imageName: "bf"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Benin", comment: ""), imageName: "bj"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Antigua and Barbuda", comment: ""), imageName: "ag"))
        flagsLevel9.append(Countries(countryName: NSLocalizedString("Guatemala", comment: ""), imageName: "gt"))
        
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Guinea-Bissau", comment: ""), imageName: "gw"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Marshall Islands", comment: ""), imageName: "mh"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Nepal", comment: ""), imageName: "np"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Saint Kitts and Nevis", comment: ""), imageName: "kn"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Saint Vincent and the Grenadines", comment: ""), imageName: "vc"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("São Tomé and Príncipe", comment: ""), imageName: "st"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Cabo Verde", comment: ""), imageName: "cv"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Myanmar", comment: ""), imageName: "mm-1"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Mauritania", comment: ""), imageName: "mr"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Vanuatu", comment: ""), imageName: "vu"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Belize", comment: ""), imageName: "bz"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Cook Islands", comment: ""), imageName: "ck"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Niue", comment: ""), imageName: "nu"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Wales", comment: ""), imageName: "wales"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Estonia", comment: ""), imageName: "ee"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Kosovo", comment: ""), imageName: "ks"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Palau", comment: ""), imageName: "pw"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Ivory Coast", comment: ""), imageName: "ci"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Comoros", comment: ""), imageName: "km"))
        flagsLevel10.append(Countries(countryName: NSLocalizedString("Lithuania", comment: ""), imageName: "lt"))
        
        
        flagsBank.append(flagsLevel1)
        flagsBank.append(flagsLevel2)
        flagsBank.append(flagsLevel3)
        flagsBank.append(flagsLevel4)
        flagsBank.append(flagsLevel5)
        flagsBank.append(flagsLevel6)
        flagsBank.append(flagsLevel7)
        flagsBank.append(flagsLevel8)
        flagsBank.append(flagsLevel9)
        flagsBank.append(flagsLevel10)
        
    }
}

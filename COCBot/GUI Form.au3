#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
Opt("GUIOnEventMode", 1)
#Region ### START Koda GUI section ### Form=GUI Form.kxf
$frmBot = GUICreate("$sBotTitle", 418, 446, 207, 158)
$tabMain = GUICtrlCreateTab(5, 8, 408, 410)
$pageGeneral = GUICtrlCreateTabItem("General")
$Controls = GUICtrlCreateGroup("Controls", 11, 267, 385, 41)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$chkBotStop = GUICtrlCreateCheckbox("", 33, 286, 16, 16)
$cmbBotCommand = GUICtrlCreateCombo("", 56, 282, 110, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Halt Attack Mode|Shutdown PC|Sleep PC")
$lblPC = GUICtrlCreateLabel("IF :", 174, 286, 25, 17)
$cmbBotCond = GUICtrlCreateCombo("", 202, 282, 179, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "G and E Full and Max.Trophy|(G and E) Full or Max.Trophy|(G or E) Full and Max.Trophy|G or E Full or Max.Trophy|Gold and Elixir Full|Gold or Elixir Full|Gold Full and Max.Trophy|Elixir Full and Max.Trophy|Gold Full or Max.Trophy|Elixir Full or Max.Trophy|Gold Full|Elixir Full|Reach Max. Trophy")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$otherSettings = GUICtrlCreateGroup("Other Settings", 11, 312, 385, 41)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$chkNoAttack = GUICtrlCreateCheckbox("Donate/Train Only", 33, 327, 105, 17)
GUICtrlSetTip(-1, "Disable attacking, only do collections/training/donating")
$chkDonateOnly = GUICtrlCreateCheckbox("Donate Only", 158, 327, 80, 17)
GUICtrlSetTip(-1, "Disable attacking  training, only do collections/donating")
$lblMaxTrophy = GUICtrlCreateLabel("Max Trophy :", 251, 329, 66, 17)
$txtMaxTrophy = GUICtrlCreateInput("3000", 318, 325, 61, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
GUICtrlSetTip(-1, "Bot will lose trophies if your trophy is greater than this.")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$pageSearchSetting = GUICtrlCreateTabItem("Search")
$Searchonly = GUICtrlCreateGroup("Search Only", 11, 312, 385, 41)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$btnSearchMode = GUICtrlCreateButton("Search Mode", 20, 324, 368, 25)
GUICtrlSetTip(-1, "Does not attack. Searches for base that meets conditions.")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$DeadConditions = GUICtrlCreateGroup("Dead Base Conditions", 11, 37, 385, 135)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$chkDeadGE = GUICtrlCreateCheckbox("Min Resources:", 26, 80, 100, 17)
$lblDeadMinGold = GUICtrlCreateLabel("Gold:", 136, 82, 28, 17)
$txtDeadMinGold = GUICtrlCreateInput("50000", 166, 77, 50, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$cmbDead = GUICtrlCreateCombo("", 236, 77, 45, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "And|Or")
$lblDeadMinElixir = GUICtrlCreateLabel("Elixir:", 296, 82, 28, 17)
$txtDeadMinElixir = GUICtrlCreateInput("50000", 326, 77, 50, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$chkDeadMeetDE = GUICtrlCreateCheckbox("Min Dark Elixir:", 26, 110, 95, 17)
$txtDeadMinDarkElixir = GUICtrlCreateInput("0", 126, 107, 60, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$chkDeadMeetTrophy = GUICtrlCreateCheckbox("Min Trophies:", 221, 110, 95, 17)
$txtDeadMinTrophy = GUICtrlCreateInput("0", 321, 107, 60, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$chkDeadMeetTH = GUICtrlCreateCheckbox("Max TH Level:", 26, 140, 95, 17)
$cmbDeadTH = GUICtrlCreateCombo("", 126, 137, 60, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "4-6|7|8|9|10")
$chkDeadMeetTHO = GUICtrlCreateCheckbox("Townhall Outside", 221, 140, 100, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$lblDeadConditions = GUICtrlCreateLabel("Selected conditions must ALL be met when search base with full collectors", 26, 57, 380, 20)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$AnyConditions = GUICtrlCreateGroup("Any Base Conditions", 11, 177, 385, 130)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$chkMeetGE = GUICtrlCreateCheckbox("Min Resources:", 26, 220, 100, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$lblMinGold = GUICtrlCreateLabel("Gold:", 136, 222, 28, 17)
$txtMinGold = GUICtrlCreateInput("80000", 166, 217, 50, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$cmbAny = GUICtrlCreateCombo("", 236, 217, 45, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "And|Or")
$lblMinElixir = GUICtrlCreateLabel("Elixir:", 296, 222, 28, 17)
$txtMinElixir = GUICtrlCreateInput("80000", 326, 217, 50, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$chkMeetDE = GUICtrlCreateCheckbox("Min Dark Elixir:", 26, 250, 95, 17)
$txtMinDarkElixir = GUICtrlCreateInput("0", 126, 247, 60, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$chkMeetTrophy = GUICtrlCreateCheckbox("Min Trophies:", 221, 250, 95, 17)
$txtMinTrophy = GUICtrlCreateInput("0", 321, 247, 60, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$chkMeetTH = GUICtrlCreateCheckbox("Max TH Level:", 26, 280, 95, 17)
$cmbTH = GUICtrlCreateCombo("", 126, 277, 60, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "4-6|7|8|9|10")
$chkMeetTHO = GUICtrlCreateCheckbox("Townhall Outside", 221, 280, 100, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$lblAnyConditions = GUICtrlCreateLabel("Selected conditions must ALL be met when search for any other base", 26, 197, 380, 20)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$pageAttackSettings = GUICtrlCreateTabItem("Attack")
$DeadDeploySettings = GUICtrlCreateGroup("Dead Base Deploy Settings", 11, 37, 385, 123)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$cmbDeadDeploy = GUICtrlCreateCombo("", 26, 52, 360, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Attack on a single side, penetrates through base|Attack on two sides, penetrates through base|Attack on three sides, gets outer and some inside of base|Attack on all sides equally, gets most of outer base")
$cmbDeadAlgorithm = GUICtrlCreateCombo("", 26, 82, 360, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Archers|Barbarians|Goblins|Barbarians + Archers|Barb + Arch + Goblin + Giant|Barb + Arch + Giant|Barb + Arch + Goblin|Barb + Arch + Goblin + Giant + Wallbreakers|Use Barracks|Use All Troops")
$chkDeadUseKing = GUICtrlCreateCheckbox("Attack with King", 26, 112, 150, 17)
$chkDeadUseQueen = GUICtrlCreateCheckbox("Attack with Queen", 196, 112, 150, 17)
$chkDeadUseClanCastle = GUICtrlCreateCheckbox("Attack with Clan Castle troops", 26, 132, 160, 17)
$chkDeadAttackTH = GUICtrlCreateCheckbox("Attack", 196, 132, 160, 17)
GUICtrlSetTip(-1, "Troops target Townhall when on the outside of a dead base. Enforces a match during base search if Townhall on outside and base is dead")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$AnyDeploySettings = GUICtrlCreateGroup("Other Base Deploy Settings", 11, 160, 385, 123)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$cmbDeploy = GUICtrlCreateCombo("", 26, 179, 360, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Attack on a single side, penetrates through base|Attack on two sides, penetrates through base|Attack on three sides, gets outer and some inside of base|Attack on all sides equally, gets most of outer base")
$cmbAlgorithm = GUICtrlCreateCombo("", 26, 209, 360, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Archers|Barbarians|Goblins|Barbarians + Archers|Barb + Arch + Goblin + Giant|Barb + Arch + Giant|Barb + Arch + Goblin|Barb + Arch + Goblin + Giant + Wallbreakers|Use Barracks|Use All Troops")
$chkUseKing = GUICtrlCreateCheckbox("Attack with King", 26, 237, 150, 17)
$chkUseQueen = GUICtrlCreateCheckbox("Attack with Queen", 196, 237, 150, 17)
$chkUseClanCastle = GUICtrlCreateCheckbox("Attack with Clan Castle troops", 26, 257, 160, 17)
$chkAttackTH = GUICtrlCreateCheckbox("Attack", 196, 257, 160, 17)
GUICtrlSetTip(-1, "Troops target Townhall when on the outside of a base. Enforces a match during base search if Townhall on outside")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$AtkSpeed = GUICtrlCreateGroup("Deploy Speed", 11, 283, 385, 69)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$lblUnitDelay = GUICtrlCreateLabel("Unit Delay:", 26, 304, 59, 17)
$cmbUnitDelay = GUICtrlCreateCombo("", 86, 301, 50, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "1|2|3|4|5|6|7|8|9|10")
$lblWaveDelay = GUICtrlCreateLabel("Wave Delay:", 151, 304, 75, 17)
$cmbWaveDelay = GUICtrlCreateCombo("", 221, 301, 50, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "1|2|3|4|5|6|7|8|9|10")
$Randomspeedatk = GUICtrlCreateCheckbox("Random Speeds", 291, 304, 100, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$lblAttackdelay = GUICtrlCreateLabel("Delays of troops deployment speed,  = like a Bot,  = Like a Human. Random will make bot more varied and closer to a person.", 31, 322, 350, 67, $SS_CENTER)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$pageDonateSettings = GUICtrlCreateTabItem("Donate")
$Donation = GUICtrlCreateGroup("", 11, 27, 385, 325)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$Barbarians = GUICtrlCreateGroup("Barbarians", 16, 67, 120, 235)
$chkDonateAllBarbarians = GUICtrlCreateCheckbox("Donate to All", 26, 92, 97, 17)
$txtDonateBarbarians = GUICtrlCreateEdit("", 21, 117, 110, 179)
GUICtrlSetData(-1, "")
GUICtrlSetTip(-1, "Keywords for donating Barbarians")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Archers = GUICtrlCreateGroup("Archers", 144, 67, 120, 235)
$chkDonateAllArchers = GUICtrlCreateCheckbox("Donate to All", 151, 92, 97, 17)
$txtDonateArchers = GUICtrlCreateEdit("", 149, 117, 110, 179)
GUICtrlSetData(-1, "")
GUICtrlSetTip(-1, "Keywords for donating Archers")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Giants = GUICtrlCreateGroup("Giants", 271, 67, 120, 235)
$chkDonateAllGiants = GUICtrlCreateCheckbox("Donate to All", 281, 92, 97, 17)
$txtDonateGiants = GUICtrlCreateEdit("", 276, 117, 110, 179)
GUICtrlSetData(-1, "")
GUICtrlSetTip(-1, "Keywords for donating Giants")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$chkDonateGiants = GUICtrlCreateCheckbox("Donate Giants", 271, 302, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$chkDonateArchers = GUICtrlCreateCheckbox("Donate Archers", 145, 302, 97, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$chkDonateBarbarians = GUICtrlCreateCheckbox("Donate Barbarians", 16, 302, 112, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$chkRequest = GUICtrlCreateCheckbox("Request for :", 26, 42, 82, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$txtRequest = GUICtrlCreateInput("any", 111, 42, 276, 22)
GUICtrlSetTip(-1, "Request for input.")
$btnLocateClanCastle = GUICtrlCreateButton("Locate Clan Castle Manually", 21, 322, 365, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$pageTroopSettings = GUICtrlCreateTabItem("Troops")
$Barracks = GUICtrlCreateGroup("Troops", 16, 37, 185, 194)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$lblBarbarians = GUICtrlCreateLabel("Barb", 31, 57, 45, 17)
$lblArchers = GUICtrlCreateLabel("Archer", 88, 57, 45, 17)
$lblGoblins = GUICtrlCreateLabel("Goblin", 149, 57, 45, 17)
$txtBarbarians = GUICtrlCreateInput("30", 26, 74, 35, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$txtArchers = GUICtrlCreateInput("60", 86, 74, 35, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$txtGoblins = GUICtrlCreateInput("10", 146, 74, 35, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$lblPercentBarbarians = GUICtrlCreateLabel("%", 64, 79, 12, 17)
$lblPercentArchers = GUICtrlCreateLabel("%", 124, 79, 12, 17)
$lblPercentGoblins = GUICtrlCreateLabel("%", 184, 79, 12, 17)
$lblGiants = GUICtrlCreateLabel("Giants :", 26, 105, 81, 17)
$lblWallBreakers = GUICtrlCreateLabel("Wall Breakers :", 26, 130, 85, 17)
$txtNumGiants = GUICtrlCreateInput("4", 116, 102, 56, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$txtNumWallbreakers = GUICtrlCreateInput("4", 116, 127, 56, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$lblCapacity = GUICtrlCreateLabel("Camp Capacity :", 26, 155, 79, 17)
$txtCapacity = GUICtrlCreateInput("0", 116, 152, 56, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$lblRaidcap = GUICtrlCreateLabel("Raid Capacity :", 34, 180, 79, 17)
$cmbRaidcap = GUICtrlCreateCombo("", 116, 177, 56, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "70|80|90|100")
$lblPercentCapacity = GUICtrlCreateLabel("%", 176, 180, 12, 17)
$cmbTroopComp = GUICtrlCreateCombo("", 26, 202, 150, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Archers|Barbarians|Goblins|B.Arch|B.A.G.G.|B.A.Giant|B.A.Goblin|B.A.G.G.Wall|Use Barracks|Custom Troops")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$BarrackGroup = GUICtrlCreateGroup("Barracks", 206, 109, 185, 122)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$lblBarrack1 = GUICtrlCreateLabel("Barrack 1:", 216, 131, 53, 17)
$lblBarrack2 = GUICtrlCreateLabel("Barrack 2:", 216, 156, 53, 17)
$lblBarrack3 = GUICtrlCreateLabel("Barrack 3:", 216, 181, 53, 17)
$lblBarrack4 = GUICtrlCreateLabel("Barrack 4:", 216, 206, 53, 17)
$cmbBarrack1 = GUICtrlCreateCombo("", 271, 127, 110, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|W.Breakers||||||Nothing")
$cmbBarrack2 = GUICtrlCreateCombo("", 271, 152, 110, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|W.Breakers||||||Nothing")
$cmbBarrack3 = GUICtrlCreateCombo("", 271, 177, 110, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|W.Breakers||||||Nothing")
$cmbBarrack4 = GUICtrlCreateCombo("", 271, 202, 110, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|W.Breakers||||||Nothing")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$DarkBarracks = GUICtrlCreateGroup("", 206, 37, 185, 70)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$chkDarkTroop = GUICtrlCreateCheckbox("Dark Barrack", 214, 37, 80, 15)
$lblDarkBarrack1 = GUICtrlCreateLabel("D.Barrack 1:", 211, 57, 65, 17)
$lblDarkBarrack2 = GUICtrlCreateLabel("D.Barrack 2:", 211, 82, 65, 17)
$cmbDarkBarrack1 = GUICtrlCreateCombo("", 316, 53, 65, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Minions|Hogs|Valkyries|Nothing")
$cmbDarkBarrack2 = GUICtrlCreateCombo("", 316, 78, 65, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Minions|Hogs|Valkyries|Nothing")
$txtDarkBarrack1 = GUICtrlCreateInput("5", 281, 53, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$txtDarkBarrack2 = GUICtrlCreateInput("5", 281, 78, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$BarrackCTGroup = GUICtrlCreateGroup("Custom Troop 2 / Not Available", 16, 231, 375, 121)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$lblBarrackJOE1 = GUICtrlCreateLabel("Barrack 1 :", 26, 250, 53, 17)
$lblBarrackJOE2 = GUICtrlCreateLabel("Barrack 2 :", 26, 275, 53, 17)
$lblBarrackJOE3 = GUICtrlCreateLabel("Barrack 3 :", 26, 300, 53, 17)
$lblBarrackJOE4 = GUICtrlCreateLabel("Barrack 4 :", 26, 325, 53, 17)
$lblBarrackBK1 = GUICtrlCreateLabel("the rest", 233, 250, 35, 17)
$lblBarrackBK2 = GUICtrlCreateLabel("the rest", 233, 275, 35, 17)
$lblBarrackBK3 = GUICtrlCreateLabel("the rest", 233, 300, 35, 17)
$lblBarrackBK4 = GUICtrlCreateLabel("the rest", 233, 325, 35, 17)
$txtFirstTroop1 = GUICtrlCreateInput("2", 86, 247, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$txtFirstTroop2 = GUICtrlCreateInput("2", 86, 272, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$txtFirstTroop3 = GUICtrlCreateInput("2", 86, 297, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$txtFirstTroop4 = GUICtrlCreateInput("2", 86, 322, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$cmbFirstTroop1 = GUICtrlCreateCombo("", 126, 247, 95, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|W.Breakers|Nothing")
$cmbFirstTroop2 = GUICtrlCreateCombo("", 126, 272, 95, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|W.Breakers|Nothing")
$cmbFirstTroop3 = GUICtrlCreateCombo("", 126, 297, 95, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|W.Breakers|Nothing")
$cmbFirstTroop4 = GUICtrlCreateCombo("", 126, 322, 95, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|W.Breakers|Nothing")
$cmbSecondTroop1 = GUICtrlCreateCombo("", 281, 247, 95, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|Nothing")
$cmbSecondTroop2 = GUICtrlCreateCombo("", 281, 272, 95, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|Nothing")
$cmbSecondTroop3 = GUICtrlCreateCombo("", 281, 297, 95, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|Nothing")
$cmbSecondTroop4 = GUICtrlCreateCombo("", 281, 322, 95, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Barbarians|Archers|Giants|Goblins|Nothing")
GUICtrlCreateGroup("", -99, -99, 1, 1)
$pageOtherSettings = GUICtrlCreateTabItem("Other")
$Walls = GUICtrlCreateGroup("Walls", 16, 37, 375, 125)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$chkWalls = GUICtrlCreateCheckbox("Auto Wall Upgrade", 26, 59, 110, 17)
$UseGold = GUICtrlCreateRadio("Use Only Gold", 36, 84, 115, 17)
$WallMinGold = GUICtrlCreateLabel("Minimum Gold:", 216, 89, 76, 17)
GUICtrlSetTip(-1, "Minimum level of Gold storage to perform the upgrade")
$txtWallMinGold = GUICtrlCreateInput("1300000", 321, 84, 61, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
GUICtrlSetTip(-1, "Minimum level of Gold storage to perform the upgrade")
$UseElixir = GUICtrlCreateRadio("Use Only Elixir", 36, 109, 115, 17)
$WallMinElixir = GUICtrlCreateLabel("Minimum Elixir:", 216, 114, 72, 17)
GUICtrlSetTip(-1, "Minimum level of Elixir storage to perform the upgrade")
$txtWallMinElixir = GUICtrlCreateInput("1300000", 321, 109, 61, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
GUICtrlSetTip(-1, "Minimum level of Elixir storage to perform the upgrade")
$UseGoldElix = GUICtrlCreateRadio("Use Gold and then Elixir", 36, 134, 150, 17)
$lblWalls = GUICtrlCreateLabel("Current Wall Level:", 216, 61, 100, 17)
$cmbWalls = GUICtrlCreateCombo("", 321, 57, 40, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "4|5|6|7|8|9|10")
$lblTolerance = GUICtrlCreateLabel("Tolerance Level:", 216, 139, 80, 17)
$cmbTolerance = GUICtrlCreateCombo("", 321, 134, 60, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "Default|Lower|Higher")
$btnFindWall = GUICtrlCreateButton("Find Wall", 141, 57, 63, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Upgrade = GUICtrlCreateGroup("Buildings / Walls Upgrade / Not Available", 16, 162, 375, 120)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$chkUpgrade1 = GUICtrlCreateCheckbox("Upgrade 1 :", 26, 189, 80, 17)
$lblUP1PosX = GUICtrlCreateLabel("Pos X :", 108, 191, 40, 17)
$txtUpgradeX1 = GUICtrlCreateInput("", 148, 186, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY,$ES_NUMBER))
$lblUP1PosY = GUICtrlCreateLabel("Pos Y :", 191, 191, 40, 17)
$txtUpgradeY1 = GUICtrlCreateInput("", 231, 186, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY,$ES_NUMBER))
$btnLocateUp1 = GUICtrlCreateButton("Locate Building 1", 281, 186, 100, 21)
$chkUpgrade2 = GUICtrlCreateCheckbox("Upgrade 2 :", 26, 219, 80, 17)
$lblUP2PosX = GUICtrlCreateLabel("Pos X :", 108, 221, 40, 17)
$txtUpgradeX2 = GUICtrlCreateInput("", 148, 216, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY,$ES_NUMBER))
$lblUP2PosY = GUICtrlCreateLabel("Pos Y :", 191, 221, 40, 17)
$txtUpgradeY2 = GUICtrlCreateInput("", 231, 216, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY,$ES_NUMBER))
$btnLocateUp2 = GUICtrlCreateButton("Locate Building 2", 281, 216, 100, 21)
$chkUpgrade3 = GUICtrlCreateCheckbox("Upgrade 3 :", 26, 249, 80, 17)
$lblUP3PosX = GUICtrlCreateLabel("Pos X :", 108, 251, 40, 17)
$txtUpgradeX3 = GUICtrlCreateInput("", 148, 246, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY,$ES_NUMBER))
$lblUP3PosY = GUICtrlCreateLabel("Pos Y :", 191, 251, 40, 17)
$txtUpgradeY3 = GUICtrlCreateInput("", 231, 246, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY,$ES_NUMBER))
$btnLocateUp3 = GUICtrlCreateButton("Locate Building 3", 281, 246, 100, 21)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Boosts = GUICtrlCreateGroup("Boosts", 16, 282, 375, 70)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$lblBoostBarracks = GUICtrlCreateLabel("Boosts left :", 26, 302, 60, 17)
$cmbBoostBarracks = GUICtrlCreateCombo("", 96, 298, 35, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "0|1|2|3|4|5")
$chkBoostKing = GUICtrlCreateCheckbox("King Altar", 26, 327, 65, 17)
$chkBoostQueen = GUICtrlCreateCheckbox("Queen Altar", 101, 327, 75, 17)
$chkBoostRax1 = GUICtrlCreateCheckbox("Barrack 1", 191, 302, 65, 17)
$chkBoostRax2 = GUICtrlCreateCheckbox("Barrack 2", 191, 327, 65, 17)
$chkBoostRax3 = GUICtrlCreateCheckbox("Barrack 3", 281, 302, 65, 17)
$chkBoostRax4 = GUICtrlCreateCheckbox("Barrack 4", 281, 327, 65, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$pageMiscSettings = GUICtrlCreateTabItem("Misc")
$Miscs = GUICtrlCreateGroup("Misc", 16, 37, 375, 215)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$lblReconnect = GUICtrlCreateLabel("Reconnect Interval:", 26, 62, 100, 17)
GUICtrlSetTip(-1, "Set reconnect interval when other devices connected - COC English version Only")
$txtReconnect = GUICtrlCreateInput("2", 126, 57, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$lblReconnectmin = GUICtrlCreateLabel("minutes", 161, 62, 100, 17)
$chkTrap = GUICtrlCreateCheckbox("Auto Rearm Traps", 266, 62, 110, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetTip(-1, "Auto rearm for Traps, Crossbows  Inferno Towers")
$lblSearchsp = GUICtrlCreateLabel("Seach Base Speed:", 26, 89, 100, 17)
GUICtrlSetTip(-1, "Set search base speed to higher number if having frequent server sync issue")
$cmbSearchsp = GUICtrlCreateCombo("", 126, 84, 45, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "0|1|2|3|4|5")
$lblSearchspd = GUICtrlCreateLabel("Tips: 0 = Fast, 5 = Slow", 178, 89, 200, 17)
$lblKingSkill = GUICtrlCreateLabel("King Skill Delay:", 26, 116, 80, 17)
GUICtrlSetTip(-1, "Set delay timing for King skill")
$txtKingSkill = GUICtrlCreateInput("10", 106, 111, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$lblKingsSkill = GUICtrlCreateLabel("seconds   /", 141, 116, 60, 17)
$lblQueenSkill = GUICtrlCreateLabel("Queen Skill Delay:", 206, 116, 100, 17)
GUICtrlSetTip(-1, "Set delay timing for Queen skill")
$txtQueenSkill = GUICtrlCreateInput("10", 296, 111, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$lblQueensSkill = GUICtrlCreateLabel("seconds", 331, 116, 50, 17)
$lblReturnh = GUICtrlCreateLabel("Return Home Delay:", 26, 143, 100, 17)
GUICtrlSetTip(-1, "Set delay timing for return home during raid")
$txtReturnh = GUICtrlCreateInput("10", 126, 138, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$lblReturndelay = GUICtrlCreateLabel("seconds after no income detected", 161, 143, 200, 17)
$chkSpellDarkStorage = GUICtrlCreateCheckbox("Cast Lightning when left:", 26, 169, 131, 17)
GUICtrlSetTip(-1, "Set Min Dark Elixir to Lightning Dark Storage")
$txtSpellDarkStorage = GUICtrlCreateInput("500", 166, 165, 31, 22, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_NUMBER))
$chkTakeTownSS = GUICtrlCreateCheckbox("Take All Towns Snapshot", 249, 227, 141, 17)
$chkTakeLootSS = GUICtrlCreateCheckbox("Take Loots Snapshot", 127, 227, 118, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$chkAlertSearch = GUICtrlCreateCheckbox("Base Found Alert", 26, 227, 100, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$lblSpellDarkStorage = GUICtrlCreateLabel("Dark Elixir", 206, 170, 200, 17)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$LocationSettings = GUICtrlCreateGroup("Locate Buildings", 16, 252, 375, 100)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$btnLocateKingAltar = GUICtrlCreateButton("King Altar", 28, 267, 83, 25)
$btnLocateQueenAltar = GUICtrlCreateButton("Queen Altar", 114, 267, 83, 25)
$btnLocateDarkBarracks = GUICtrlCreateButton("Dark Barrack", 209, 267, 83, 25)
$btnLocateSFactory = GUICtrlCreateButton("Spell Factory", 295, 267, 83, 25)
$btnLocateTownHall = GUICtrlCreateButton("Locate Townhall Manually", 28, 294, 170, 25)
$btnLocateClanCastle2 = GUICtrlCreateButton("Locate Clan Castle Manually", 28, 321, 170, 25)
$btnLocateCamp = GUICtrlCreateButton("Locate Camp Manually", 209, 294, 170, 25)
$btnLocateBarracks = GUICtrlCreateButton("Locate Barracks Manually", 209, 321, 170, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$pageStatsSetting = GUICtrlCreateTabItem("Stats")
$resourceonstart = GUICtrlCreateGroup("Resources at Start", 16, 37, 185, 140)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$lblgoldonstart = GUICtrlCreateLabel("Gold at Start :", 26, 65, 65, 17)
$lblresultgoldtstart = GUICtrlCreateLabel("0", 124, 65, 60, 17, $SS_RIGHT)
$lblelixironstart = GUICtrlCreateLabel("Elixir at Start :", 26, 90, 65, 17)
$lblresultelixirstart = GUICtrlCreateLabel("0", 124, 90, 60, 17, $SS_RIGHT)
$lbldeonstart = GUICtrlCreateLabel("DE at Start :", 26, 115, 60, 17)
$lblresultdestart = GUICtrlCreateLabel("0", 124, 115, 60, 17, $SS_RIGHT)
$lbltrophyonstart = GUICtrlCreateLabel("Trophies at Start :", 26, 140, 100, 17)
$lblresulttrophystart = GUICtrlCreateLabel("0", 124, 140, 60, 17, $SS_RIGHT)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Currentresource = GUICtrlCreateGroup("Other Stats", 206, 37, 185, 140)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$lblvillagesattacked = GUICtrlCreateLabel("Attacked :", 216, 59, 100, 17)
$lblresultvillagesattacked = GUICtrlCreateLabel("0", 314, 59, 60, 17, $SS_RIGHT)
$lblvillagesskipped = GUICtrlCreateLabel("Skipped :", 216, 82, 100, 17)
$lblresultvillagesskipped = GUICtrlCreateLabel("0", 314, 82, 60, 17, $SS_RIGHT)
$lbltrophiesdropped = GUICtrlCreateLabel("Trophies Dropped :", 216, 105, 100, 17)
$lblresulttrophiesdropped = GUICtrlCreateLabel("0", 314, 105, 60, 17, $SS_RIGHT)
$lblruntime = GUICtrlCreateLabel("Bot Run Time :", 216, 128, 100, 17)
$lblresultruntime = GUICtrlCreateLabel("00:00:00", 314, 128, 60, 17, $SS_RIGHT)
$lblwallsupgraded = GUICtrlCreateLabel("Walls Upgraded :", 216, 151, 100, 17)
$lblresultwallsupgraded = GUICtrlCreateLabel("0", 314, 151, 60, 17, $SS_RIGHT)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$CurrentLoot = GUICtrlCreateGroup("Current Resources", 16, 187, 185, 140)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$lblgoldnow = GUICtrlCreateLabel("Gold Now :", 46, 215, 60, 17)
$lblresultgoldnow = GUICtrlCreateLabel("0", 124, 215, 60, 17, $SS_RIGHT)
$imgGoldNow = GUICtrlCreatePic("..\images\Resource\Gold.jpg", 26, 215, 15, 15)
$lblelixirnow = GUICtrlCreateLabel("Elixir Now :", 46, 240, 60, 17)
$lblresultelixirnow = GUICtrlCreateLabel("0", 124, 240, 60, 17, $SS_RIGHT)
$imgElixirNow = GUICtrlCreatePic("..\images\Resource\Elixir.jpg", 26, 240, 15, 15)
$lbldenow = GUICtrlCreateLabel("DE Now :", 46, 265, 60, 17)
$lblresultdenow = GUICtrlCreateLabel("0", 124, 265, 60, 17, $SS_RIGHT)
$imgDarkNow = GUICtrlCreatePic("..\images\Resource\Dark.jpg", 26, 265, 15, 15)
$lbltrophynow = GUICtrlCreateLabel("Trophies Now :", 46, 290, 76, 17)
$lblresulttrophynow = GUICtrlCreateLabel("0", 124, 290, 60, 17, $SS_RIGHT)
$imgTrophyNow = GUICtrlCreatePic("..\images\Resource\Trophy.jpg", 26, 290, 15, 15)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$TotalLoot = GUICtrlCreateGroup("Total Loot", 206, 187, 185, 140)
GUICtrlSetFont(-1, 8, 400, 0, "Arial")
$lbllootGold = GUICtrlCreateLabel("Gold Gain :", 216, 215, 60, 17)
$lblresultlootGold = GUICtrlCreateLabel("0", 314, 215, 60, 17, $SS_RIGHT)
$lbllootElixir = GUICtrlCreateLabel("Elixir Gain :", 216, 240, 60, 17)
$lblresultlootElixir = GUICtrlCreateLabel("0", 314, 240, 60, 17, $SS_RIGHT)
$lblDarkElixir = GUICtrlCreateLabel("DE Gain :", 216, 265, 60, 17)
$lblresultDarkElixir = GUICtrlCreateLabel("0", 314, 265, 60, 17, $SS_RIGHT)
$lbltrophyloot = GUICtrlCreateLabel("Trophies Gain :", 216, 290, 100, 17)
$lblresulttrophyloot = GUICtrlCreateLabel("0", 314, 290, 60, 17, $SS_RIGHT)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateTabItem("")
$btnStart = GUICtrlCreateButton("Start Bot", 30, 360, 75, 50)
$btnStop = GUICtrlCreateButton("Stop Bot", 30, 360, 75, 50)
GUICtrlSetState(-1, $GUI_HIDE)
$btnHide = GUICtrlCreateButton("Hide BS", 110, 360, 75, 30)
$chkBackground = GUICtrlCreateCheckbox("BG Mode", 115, 395, 75, 15)
GUICtrlSetTip(-1, "Activate Background Mode")
$chkForceBS = GUICtrlCreateCheckbox("Force Active", 190, 395, 75, 15)
GUICtrlSetTip(-1, "Maximize Bluestack window if fail to locate")
$btnAtkNow = GUICtrlCreateButton("Attack Now", 190, 360, 75, 30)
$lblConfig = GUICtrlCreateLabel("", 280, 357, 110, 15, $SS_CENTER)
$btnSaveConfig = GUICtrlCreateButton("Save Config", 280, 375, 50, 35, $BS_MULTILINE)
GUICtrlSetTip(-1, "Save Configuration Setting")
$btnLoadConfig = GUICtrlCreateButton("Load Config", 340, 375, 50, 35, $BS_MULTILINE)
GUICtrlSetTip(-1, "Load Configuration Setting")
$lblgoldnowM = GUICtrlCreateLabel("Gold Now :", 295, 358, 60, 17)
GUICtrlSetState(-1, $GUI_HIDE)
$lblresultgoldnowM = GUICtrlCreateLabel("0", 348, 358, 50, 17, $SS_RIGHT)
GUICtrlSetState(-1, $GUI_HIDE)
$imggoldnowM = GUICtrlCreatePic("..\images\Resource\Gold.jpg", 275, 357, 15, 15)
GUICtrlSetState(-1, $GUI_HIDE)
$lblelixirnowM = GUICtrlCreateLabel("Elixir Now :", 295, 378, 60, 17)
GUICtrlSetState(-1, $GUI_HIDE)
$lblresultelixirnowM = GUICtrlCreateLabel("0", 348, 378, 50, 17, $SS_RIGHT)
GUICtrlSetState(-1, $GUI_HIDE)
$imgelixirnowM = GUICtrlCreatePic("..\images\Resource\Elixir.jpg", 275, 377, 15, 15)
GUICtrlSetState(-1, $GUI_HIDE)
$lbldenowM = GUICtrlCreateLabel("DE Now :", 295, 398, 60, 17)
GUICtrlSetState(-1, $GUI_HIDE)
$lblresultdenowM = GUICtrlCreateLabel("0", 348, 398, 50, 17, $SS_RIGHT)
GUICtrlSetState(-1, $GUI_HIDE)
$imgdenowM = GUICtrlCreatePic("..\images\Resource\Dark.jpg", 275, 397, 15, 15)
GUICtrlSetState(-1, $GUI_HIDE)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

WinSetTitle("$sBotTitle", "", $sBotTitle)
GUISetIcon(@ScriptDir & "\Icons\cocbot.ico")
TraySetIcon(@ScriptDir & "\Icons\cocbot.ico")
$txtLog = _GUICtrlRichEdit_Create($frmBot, "", 16, 40, 385, 230, BitOR($ES_MULTILINE, $ES_READONLY, $WS_VSCROLL, 8912))

; Add images
GUICtrlSetImage($imgGoldNow,@ScriptDir & "\images\Resource\Gold.jpg")
GUICtrlSetImage($imgElixirNow,@ScriptDir & "\images\Resource\Elixir.jpg")
GUICtrlSetImage($imgDarkNow,@ScriptDir & "\images\Resource\Dark.jpg")
GUICtrlSetImage($imgTrophyNow,@ScriptDir & "\images\Resource\Trophy.jpg")
GUICtrlSetImage($imggoldnowM,@ScriptDir & "\images\Resource\Gold.jpg")
GUICtrlSetImage($imgelixirnowM,@ScriptDir & "\images\Resource\Elixir.jpg")
GUICtrlSetImage($imgdenowM,@ScriptDir & "\images\Resource\Dark.jpg")

;GUICtrlCreatePic(@ScriptDir & "\images\Resource\Gold.jpg", 26, 215, 15, 15)
;GUICtrlCreatePic(@ScriptDir & "\images\Resource\Elixir.jpg", 26, 240, 15, 15)
;GUICtrlCreatePic(@ScriptDir & "\images\Resource\Dark.jpg", 26, 265, 15, 15)
;GUICtrlCreatePic(@ScriptDir & "\images\Resource\Trophy.jpg", 26, 290, 15, 15)
;$imggoldnowM = GUICtrlCreatePic(@ScriptDir & "\images\Resource\Gold.jpg", 275, 357, 15, 15)
;GUICtrlSetState(-1, $GUI_HIDE)
;$imgelixirnowM = GUICtrlCreatePic(@ScriptDir & "\images\Resource\Elixir.jpg", 275, 377, 15, 15)
;GUICtrlSetState(-1, $GUI_HIDE)
;$imgdenowM = GUICtrlCreatePic(@ScriptDir & "\images\Resource\Dark.jpg", 275, 397, 15, 15)
;GUICtrlSetState(-1, $GUI_HIDE)

; Define events
GUICtrlSetOnEvent($tabMain, "tabMain")
GUICtrlSetOnEvent($btnStart, "btnStart")
GUICtrlSetOnEvent($btnStop, "btnStop")
GUICtrlSetOnEvent($btnHide, "btnHide")
GUICtrlSetOnEvent($chkBackground, "chkBackground")
GUICtrlSetOnEvent($btnAtkNow, "btnAtkNow")
GUICtrlSetOnEvent($btnSaveConfig, "btnSaveConfig")
GUICtrlSetOnEvent($btnLoadConfig, "btnLoadConfig")
GUICtrlSetOnEvent($chkNoAttack, "chkNoAttack")
GUICtrlSetOnEvent($chkDonateOnly, "chkNoAttack")
GUICtrlSetOnEvent($btnSearchMode, "btnSearchMode")
GUICtrlSetOnEvent($Randomspeedatk, "Randomspeedatk")
GUICtrlSetOnEvent($btnLocateClanCastle, "btnLocateClanCastle")
GUICtrlSetOnEvent($btnFindWall, "btnFindWall")
GUICtrlSetOnEvent($btnLocateUp1, "btnLocateUp1")
GUICtrlSetOnEvent($btnLocateUp2, "btnLocateUp2")
GUICtrlSetOnEvent($btnLocateUp3, "btnLocateUp3")
GUICtrlSetOnEvent($btnLocateKingAltar, "btnLocateKingAltar")
GUICtrlSetOnEvent($btnLocateQueenAltar, "btnLocateQueenAltar")
GUICtrlSetOnEvent($btnLocateDarkBarracks, "btnLocateDarkBarracks")
GUICtrlSetOnEvent($btnLocateSFactory, "btnLocateSFactory")
GUICtrlSetOnEvent($btnLocateTownHall, "btnLocateTownHall")
GUICtrlSetOnEvent($btnLocateClanCastle2, "btnLocateClanCastle")
GUICtrlSetOnEvent($btnLocateCamp, "btnLocateCamp")
GUICtrlSetOnEvent($btnLocateBarracks, "btnLocateBarracks")

GUICtrlSetState($pageGeneral,$GUI_FOCUS)

;Bottom status bar
$statLog = _GUICtrlStatusBar_Create($frmBot)
_GUICtrlStatusBar_SetSimple($statLog)
_GUICtrlStatusBar_SetText($statLog, "Status : Idle")
$tiAbout = TrayCreateItem("About")
TrayCreateItem("")
$tiExit = TrayCreateItem("Exit")
GUISetState(@SW_SHOW)
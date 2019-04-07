from django.conf.urls import include, url
from . import views

urlpatterns = [
	# Sub_events
    url(r'Building-Design-Analysis-Workshop/', views.tallbuildingdesignanalysisworkshop, name='buildingDesignAnalysisWorkshop'),
    url(r'CS-Go/', views.csgo, name='csGo'),
    url(r'Drone-Building-Workshop/', views.dronebuildingworkshop, name='droneBuildingWorkshop'),
    url(r'Ethical-Hacking-Workshop/', views.ethicalhackingworkshop, name='ethicalHackingWorkshop'),
    url(r'Fastest-Line-Follower-Challenge/', views.fastestlinefollowerchallenge, name='fastestLineFollowerChallenge'),
    url(r'Fifa-19/', views.fifa19, name='fifa19'),
    url(r'Hackathon/', views.hackathon, name='hackathon'),
    url(r'Into-The-Next-Dimension/', views.intothenextdimension, name='intoTheNextDimension'),
    url(r'Machine-Learning-Workshop/', views.machinelearningworkshop, name='machineLearningWorkshop'),
	url(r'Go-Kart-Design-Workshop/', views.gokartdesignworkshop, name='goKartDesignWorkshop'),
	url(r'NFS-Most-Wanted/', views.nfsmostwanted, name='nfsMostWanted'),
    url(r'Paintball/', views.paintball, name='paintball'),
    url(r'PCB-Design-Workshop/', views.pcbdesignworkshop, name='pcbDesignWorkshop'),
    url(r'Pitch-It-Up/', views.pitchitup, name='pitchItUp'),
    url(r'Pradyo-Geeky/', views.pradyogeeky, name='pradyoGeeky'),
    url(r'PUBG-Mobile/', views.pubgmobile, name='pubgMobile'),
    url(r'Robo-Race/', views.roborace, name='roboRace'),
    url(r'Robo-Soccer/', views.robosoccer, name='roboSoccer'),
    url(r'The-Excelsiors-Quest/', views.theexcelsiorsquest, name='theExcelsiorsQuest'),
	url(r'Coolest-Bike/', views.coolestBike, name='coolestBike'),
	url(r'Bike-Show/', views.bikeshow, name='bikeShow'),
	url(r'DJ-Night/', views.djnight, name='djNight'),
	url(r'E-Vehicle-Design-Workshop/', views.evehicleworkshop, name='eVehicleWorkshop'),
	url(r'My-Pageantry/', views.mypageantry, name='myPageantry'),

	url(r'qrCode/', views.qrCode, name='qrCode'),
	url(r'FSBSampleQuestion', views.sampleQuestion, name='sampleQuestion'),

]

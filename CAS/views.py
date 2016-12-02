from django.shortcuts import render,get_object_or_404
from django.shortcuts import render_to_response
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login,logout
from CAS.forms import UserForm,LoginForm
from django.template import RequestContext
from CAS.models import Questions,Choices,Subjects,Grades,SubjectGrade,PersonalityCareer,Personalities,Universities,Explanations,Careers,CourseCareer,Courses,Favorites
from CAS.functions import *
from django.http import JsonResponse,HttpResponse
import clips
from django.shortcuts import redirect
import urllib


# Create your views here.
@login_required(login_url="login/")
def home(request):
	return render(request,"home.html")

def index(request):
	registered=False
	if request.method == 'POST':
		user_form = UserForm(data=request.POST)
		if user_form.is_valid():
			user = user_form.save()
			user.set_password(user.password)
			user.save()
			registered =True
		else:
			print user_form.errors
	else:
		user_form =UserForm()
	context = {'user_form' : user_form,'registered':registered,'authentication_form': LoginForm}
	return render(request,"index.html",context)

def logon(request):
	if request.method == 'POST':
		log_form = LoginForm(data=request.POST)
		username = request.POST['username']
		password = request.POST['password']
		user = authenticate(username=username, password=password)
		if user is not None:
			login(request, user)
			return redirect('/test')
		else:
			 print log_form.errors
			 context ={'log_form':log_form}
			 return render(request,"index.html",context)
def signout(request):
    logout(request)
    return redirect('/')			 
 
def register(request):
	context =RequestContext(request)
	registered=True

	if request.method == 'POST':
		user_form = UserForm(data=request.POST)
		if user_form.is_valid():
			user = user_form.save()
			user.set_password(user.password)
			user.save()
			registered =True
		else:
			print user_form.errors
	else:
		user_form =UserForm()
	return render_to_response('register.html',{'user_form' : user_form, 'registered' : registered},context )			
@login_required(login_url="/")
def test(request):
	value = "2"
	question_list = Questions.objects.order_by('id')[:]
	subjects = Subjects.objects.order_by('code')[:]
	grades = Grades.objects.order_by('id')[:]
	length = len(question_list) + 1;
	num = 1
	favorits = set()
	favs = []
	favcourses = Favorites.objects.filter(user_id = request.user.id)
	if favcourses:
		for favcourse in favcourses:
			favorits.add(favcourse.course.name)
		favs = list(favorits)			 
		request.session['favs'] = favs	 
	context = {'question_list': question_list,'num':num,'length':length,'subjects':subjects,'grades':grades,'value':value}
	return render(request, 'test.html', context)

def explanation(request):
	explanation = Explanations.objects.filter(user_id=request.user.id).last()
	desc = explanation.description
	return render(request, 'explanation.html',{'desc':desc})

def results(request):
	choices,codes,careers,favs=[],[],[],[]
	cat,favorits = set(),set()
	total,temp = 0,0
	grades,subs,clusters,courses = {},{},{},{}
	s1,s2,s3,s4,s5={},{},{},{},{}
	group1,group2,group3,group4,group5=[],[],[],[],[]
	if request.method == 'POST':
		results=request.POST.items()
		for key,value in results:
			request.session[str(key)] = value
			if key.startswith('choice'):
				choice=Choices.objects.get(id=value)
				choices.append(choice.personality)
			elif key.startswith('grade'):
				grade= Grades.objects.get(id=value)
				subject = Subjects.objects.get(code=key[5:])
				grades[subject.name] = grade.points
				if subject.group_id == 1:
					s1[subject.name] = grade.points
				elif subject.group_id == 2:
					s2[subject.name] = grade.points	
				elif subject.group_id == 3:
					s3[subject.name] = grade.points
				elif subject.group_id == 4:
					s4[subject.name] = grade.points
				elif subject.group_id == 5:
					s5[subject.name] = grade.points	

		# for key, value in sorted(s2.iteritems(), key=lambda (k,v): (v,k)):
		group1 = sorted(s1.items(), key=lambda x: x[1], reverse=True)
		group2 = sorted(s2.items(), key=lambda x: x[1], reverse=True)
		group3 = sorted(s3.items(), key=lambda x: x[1], reverse=True)
		if len(s4) > 0:
			group4 = sorted(s4.items(), key=lambda x: x[1], reverse=True)
		if len(s5) > 0:
			group5 = sorted(s5.items(), key=lambda x: x[1], reverse=True)	
					
		if len(choices)==20:
			if len(grades)>=7 and len(grades)<=9:
				if len(group1) == 3:
					for x in range(0,len(group1)):
						total = total + group1[x][1]
					if len(group2) >= 2:
						for x in range(0,2):
							total = total + group2[x][1]
						if len(s3) >= 2:
							total = total + group3[0][1]
							if len(group4) > 0:
								total = total + group4[0][1]
							elif len(group5) > 0:
								total = total + group5[0][1]
							else:
								total = total + group3[1][1]				
						else:
							total = total + group3[0][1]
							if len(group4) > 0:
								total = total + group4[0][1]
							elif len(group5) > 0:
								total = total + group5[0][1]
				cluster1 = clus1(s1,group1,group2,group3,group4,group5,total)
				clusters['cluster1'] = cluster1
				cluster2 = clus2(s1,group1,group2,group3,group4,group5,total)
				clusters['cluster2'] = cluster2
				cluster3 = clus3(s1,group1,group2,group3,group4,group5,total)
				clusters['cluster3'] = cluster3
				cluster7 = clus7(s1,s2,group1,group2,group3,group4,group5,total)
				clusters['cluster7'] = cluster7
				cluster13 = clus13(s1,s2,group1,group2,group3,group4,group5,total)
				clusters['cluster13'] = cluster13
				cluster14 = clus14(s1,s2,group1,group2,group3,group4,group5,total)
				clusters['cluster14'] = cluster14
				if any('Physics' in sublist for sublist in group2):	
					cluster4 = clus4(s1,s2,group1,group2,group3,group4,group5,total)
					clusters['cluster4'] = cluster4
					cluster10 = clus10(s1,s2,group1,group2,group3,group4,group5,total)
					clusters['cluster10'] = cluster10
					cluster11 = clus11(s1,s2,group1,group2,group3,group4,group5,total)
					clusters['cluster11'] = cluster11
					if any('Chemistry' in sublist for sublist in group2):
						cluster9 = clus9(s1,s2,group1,group2,group3,group4,group5,total)
						clusters['cluster9'] = cluster9
					if any('Geography' in sublist for sublist in group3):
							cluster8 = clus8(s1,s2,s3,group1,group2,group3,group4,group5,total)
							clusters['cluster8'] = cluster8
				if any('Geography' in sublist for sublist in group3):
					cluster21 = clus21(s1,s2,s3,group1,group2,group3,group4,group5,total)
				if(len(group5)>0):	
					if any('french' in sublist for sublist in group5):		
						cluster22 = clus222324(s1,s2,s3,s5,group1,group2,group3,group4,group5,total,'French')
					if any('German' in sublist for sublist in group5):		
						cluster23 = clus222324(s1,s2,s3,s5,group1,group2,group3,group4,group5,total,'German')
					if any('Music' in sublist for sublist in group5):		
						cluster24 = clus222324(s1,s2,s3,s5,group1,group2,group3,group4,group5,total,'Music')		
				if any('Biology' in sublist for sublist in group2):
					cluster5 = clus5(s1,s2,group1,group2,group3,group4,group5,total)
					clusters['cluster5'] = cluster5
					cluster12= clus12(s1,s2,group1,group2,group3,group4,group5,total)
					clusters['cluster12'] = cluster12
					cluster16 = clus16(s1,s2,group1,group2,group3,group4,group5,total)
					clusters['cluster16'] = cluster16
					if any('Chemistry' in sublist for sublist in group2):
						cluster15 = clus15(s1,s2,group1,group2,group3,group4,group5,total)
						clusters['cluster15'] = cluster15
						cluster18 = clus18(s1,s2,group1,group2,group3,group4,group5,total)
						clusters['cluster18'] = cluster18
						cluster20 = clus20(s1,s2,s3,group1,group2,group3,group4,group5,total)
						clusters['cluster20'] = cluster20


				clips.Clear()
				clips.Load("/home/tembu/Documents/sandbox-clips/cas.clp")
				clips.Reset()
				f1 = clips.FindTemplate('direction-of-energy')
				f5 = f1.BuildFact()
				f2 = clips.FindTemplate('information-processing')
				f6 = f2.BuildFact()
				f3 = clips.FindTemplate('making-decisions')
				f7 = f3.BuildFact()
				f4 = clips.FindTemplate('organizing-information')
				f8 = f4.BuildFact()
				countd,counti,countm,counto = 0,0,0,0
				for choice in choices:
					if choice == 'E' or choice == 'I':
						f5.Slots['choice'+ str(countd)] = choice
						countd += 1
					elif choice == 'S' or choice == 'N':
						f6.Slots['choice'+ str(counti)] = choice
						counti += 1
					elif choice == 'T' or choice == 'F':
						f7.Slots['choice'+ str(countm)] = choice
						countm += 1	
					elif choice == 'J' or choice == 'P':
						f8.Slots['choice'+ str(counto)] = choice
						counto += 1
					else:
						break
				f5.Assert()	
				f6.Assert()
				f7.Assert()
				f8.Assert()	
				clips.Run()
				res = []
				li = clips.FactList()
				# for x in range(1,len(li)):
				# 	r = li[x]
				# 	res.append(r.Slots['result1'

				f = li[13]
				type1 = f.Slots['result1'].replace("'","")
				type2 = f.Slots['result2'].replace("'","")
				type3 = f.Slots['result3'].replace("'","")
				type4 = f.Slots['result4'].replace("'","")
				res = type1+type2+type3+type4
				personality = Personalities.objects.get(typology = res)
				occupations = PersonalityCareer.objects.filter(personality_id = personality.id);
				for occupation in occupations:
					coursescareers = CourseCareer.objects.filter(career_id = occupation.career_id)
					car = Careers.objects.get(id = occupation.career_id)
					careers.append(car.name)
					for coursecareer in coursescareers:
						course = Courses.objects.get(code = str(coursecareer.course_id))
						name = 'cluster'+str(course.cluster_id)
						if name in clusters:
							if clusters[name] >= course.cutoff:
								uni = Universities.objects.get(id = course.university_id)
								if course.name in courses:
									if uni.name not in courses[course.name]:
										if course.category:
											cat.add(course.category);
										courses[course.name].append(uni.name)
								else:
									key = course.name;
									courses.setdefault(key,[])
									courses[key].append(course.overview)
									courses[key].append(uni.name)
									if course.category:
											cat.add(course.category)
									
				occup = ','.join(careers)					
				desc = "your personality type is "+res+ " meaning you are "+personality.description+ res+" excel in occupations such as "+occup+" among others.Courses recommended for you are in inline with your personality type and also KCSE score."				
				explanation = Explanations.objects.create(user_id=request.user.id,description=desc)
				counter = 0 
				request.session['courses'] = courses
				cat1 = list(cat)
				request.session['cat']=cat1
				favcourses = Favorites.objects.filter(user_id = request.user.id)
				if favcourses:
					for favcourse in favcourses:
						favorits.add(favcourse.course.name)
					favs = list(favorits)	
					request.session['favs'] = favs
				return render(request, 'results.html',{'res':res,'cat':cat,'courses':courses,'favs':favs})
			else:
				res = "Only 7 to 9 kcse subjects allowed"
				return render(request, 'error.html',{'res':res})		
		else:
			res = "Fill all the questions"
			return render(request, 'error.html',{'res':res})

def category(request):
	if request.is_ajax:
		res = request.session.get('courses')
		cat =request.session.get('cat')
		favs = request.session.get('favs')
		courses = {}
		cate = request.GET.get('cat')
		cate = cate.replace("_"," ")
		if not (str(cate) == 'All'):
			for key,values in res.iteritems():
				cos = Courses.objects.filter(name = key)[0]
				lol= Courses.objects.filter(category = cate)
				if cos in lol:
					courses.setdefault(key,[])
					for val in values:
						courses[key].append(val)
		else:
			for key,values in res.iteritems():
				courses.setdefault(key,[])
				for val in values:
					courses[key].append(val)
		return render(request,'table_body.html',{'courses':courses,'favs':favs})

def addfavorite(request):
	if request.is_ajax:
		if request.method == "POST":
			count = 0
			unis = []
			favorits = set()
			coursename = request.POST.get('favcourse')
			res = request.session.get('courses')
			if 'favs' in request.session:
				favs = request.session.get('favs')
				favorits = set(favs)
				favorits.add(coursename)
			else:
				favorits.add(coursename)
			favs = list(favorits)	
			request.session['favs'] = favs
			for key,values in res.iteritems():
				if key == coursename:
					for val in values:
						if count !=0:
							unis.append(val)
						count+=1	
					break		
			for uni	in unis:
				universities = Universities.objects.get(name = uni)	
				favcourses = Courses.objects.get(name = coursename,university_id= universities.id);
				Favorites.objects.create(user_id=request.user.id,course_id=favcourses.code,university_id=favcourses.university_id)
			data= {'favs':favs}		
	return JsonResponse(data)

def getfavorites(request):
	favs = Favorites.objects.filter(user_id = request.user.id)
	num = 1;
	return  render(request,'favorites.html',{'favs':favs,'num':num})	

def delfavorites(request):
	if request.is_ajax:
		if request.method == "POST":
			coursename = request.POST.get('delcourse')
			favs = request.session.get('favs')
			for fav in favs:
				if fav == coursename:
					favs.remove(coursename)
			request.session['favs'] = favs
			favcourses = Courses.objects.filter(name = coursename)
			for favcourse in favcourses:
				delcourses = Favorites.objects.filter(course_id = favcourse.code).delete()
		data= {'favs':favs}		
	return JsonResponse(data)

def delcoursefavorites(request):
	if request.is_ajax:
		if request.method == "POST":
			coursecode = request.POST.get('delcourse')
			count=request.POST.get('count')
			favs = request.session.get('favs')
			if int(count) == 1:
				favcourse = Courses.objects.get(code = coursecode)
				favs.remove(favcourse.name)
				request.session['favs'] = favs	
			delcourse = Favorites.objects.get(course_id = coursecode).delete()		
	return render(request,'favorites.html',{'favs':favs})		


		
		

		
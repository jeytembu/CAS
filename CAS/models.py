from __future__ import unicode_literals
from django.db import models
from django.contrib.auth.models import User

class Universities(models.Model):
	id = models.AutoField(primary_key=True)
	name = models.CharField(max_length=300)
	ranking = models.IntegerField(default=0)
	description = models.TextField(max_length = 500) 

	class Meta:
		db_table = "universities"

class Clusters(models.Model):
	id = models.AutoField(primary_key=True)
	name = models.CharField(max_length=150)
	description = models.TextField(max_length=700)	

	class Meta:
		db_table = "clusters"

class Courses(models.Model):
	code = models.CharField(max_length=50,primary_key=True)
	name = models.CharField(max_length=200)
	duration = models.IntegerField(default=0)
	cutoff = models.FloatField(default=0)
	link = models.CharField(max_length=200,default="")
	overview = models.TextField(max_length=1000,default="") 
	tag = models.CharField(max_length=200,default="")
	position = models.IntegerField(default=0)
	cluster = models.ForeignKey(Clusters, on_delete=models.CASCADE)
	university= models.ForeignKey(Universities, on_delete=models.CASCADE)

	class Meta:
		db_table = "courses"

class Personalities(models.Model):
	id = models.AutoField(primary_key=True)
	typology = models.CharField(max_length=20)
	description = models.TextField(max_length=1000) 

	class Meta:
		db_table = "personalities"

class Careers(models.Model):
	id = models.AutoField(primary_key=True)
	name = models.CharField(max_length=300)
	definition = models.TextField(max_length=700,default='')
	description = models.TextField(max_length=700)

	class Meta:
		db_table = "careers"

class PersonalityCareer(models.Model):
	id = models.AutoField(primary_key=True)
	personality = models.ForeignKey(Personalities,on_delete=models.CASCADE)
	career = models.ForeignKey(Careers,on_delete=models.CASCADE)

	class Meta:
		db_table = "personality_career"		

class CourseCareer(models.Model):
	id = models.AutoField(primary_key=True)
	course = models.ForeignKey(Courses, on_delete=models.CASCADE)
	career= models.ForeignKey(Careers, on_delete=models.CASCADE)

	class Meta:
		db_table = "course_career"

class Groups(models.Model):
	id 	= models.AutoField(primary_key=True)
	name = models.CharField(max_length=40)
	
	class Meta:
		db_table = "groups"

class Subjects(models.Model):
	code = models.CharField(max_length=70,primary_key=True)
	name = models.CharField(max_length=60)
	group= models.ForeignKey(Groups, on_delete=models.CASCADE)

	class Meta:
		db_table = "subjects"
class Grades(models.Model):
	id 	= models.AutoField(primary_key=True)
	name = models.CharField(max_length=10)
	points = models.IntegerField(default = 0)

	class Meta:
		db_table = "grades"

class SubjectGrade(models.Model):
	id 	= models.AutoField(primary_key=True)
	subject = models.ForeignKey(Subjects,on_delete=models.CASCADE)
	grade = models.ForeignKey(Grades,on_delete=models.CASCADE)

	class Meta:
		db_table = "subject_grade"			

class SubjectCluster(models.Model):
	id 	= models.AutoField(primary_key=True)
	cluster = models.ForeignKey(Clusters,on_delete=models.CASCADE)
	subject = models.ForeignKey(Subjects,on_delete=models.CASCADE)
	subject_category = models.CharField(max_length=30,default='')	

	class Meta:
		db_table = "subject_cluster"

class Questions(models.Model):
	id 	= models.AutoField(primary_key=True)
	text = models.CharField(max_length=200)	

	class Meta:
		db_table = "questions"

class Choices(models.Model):
	id 	= models.AutoField(primary_key=True)
	text = models.CharField(max_length=70)
	question = models.ForeignKey(Questions, on_delete=models.CASCADE)
	personality = models.CharField(max_length=20,default='')	

	class Meta:
		db_table = "choices"	

class QuestionAnswer(models.Model):
	id = models.AutoField(primary_key=True)
	user = models.ForeignKey(User,on_delete=models.CASCADE)
	question = models.ForeignKey(Questions,on_delete=models.CASCADE)
	choice = models.ForeignKey(Choices,on_delete=models.CASCADE)

	class Meta:
		db_table = "question_answer"

class KcseResults(models.Model):
	id = models.AutoField(primary_key=True)
	user = models.ForeignKey(User,on_delete=models.CASCADE) 	
	subject =models.ForeignKey(Subjects,on_delete=models.CASCADE)
	score=models.CharField(max_length=10)

	class Meta:
		db_table = "KCSE_results"

class RecommendedCourses(models.Model):
	id = models.AutoField(primary_key=True)
	user = models.ForeignKey(User,on_delete=models.CASCADE)
	course = models.ForeignKey(Courses,on_delete=models.CASCADE)

	class Meta:
		db_table = "recommended_courses"

class Explanations(models.Model):
	id = models.AutoField(primary_key=True)
	user =models.ForeignKey(User,on_delete=models.CASCADE)
	description = models.TextField(max_length=1000)

	class Meta:
		db_table = "explanations"	

	






# Create your models here.

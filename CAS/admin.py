from django.contrib import admin
from .models import Courses,Choices,Questions

class CoursesAdmin(admin.ModelAdmin):
	list_display = ('code', 'name','duration','cutoff','get_cluster','get_uni')

	def get_uni(self, obj):
		return obj.university.name
	get_uni.short_description = 'university'	

	def get_cluster(self,obj):
		return obj.cluster.name
	get_cluster.short_description = 'cluster'

class ChoicesInline(admin.TabularInline):
    model = Choices
    
	
class QuestionsAdmin(admin.ModelAdmin):
	inlines = [ChoicesInline,]
	list_display = ('id', 'text','get_choices')

	def get_choices(self, obj):
		text ="lol"
		return '<br>'.join(c.text for c in obj.choices_set.order_by('id'))
	get_choices.allow_tags = True	
	get_choices.short_description = 'choices'	

	# def  get_question(self, obj):
	# 	return obj.question.text
	# get_question.short_description = 'question'	

	


 
admin.site.register(Courses, CoursesAdmin)
admin.site.register(Questions,QuestionsAdmin)


# Register your models here.

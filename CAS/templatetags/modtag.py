from django import template

register = template.Library()

@register.filter(name='mod')
def mod(value,arg):
	if value%arg == 0:
		return True
	else:
		return False

@register.filter(name='compare')
def compare(value,arg):
	if (value is not None) and (int(value) == arg):
		return True
	else:
		return False

@register.filter(name='add')		
def add (counter,value):
	counter += value;
	return counter

@register.filter(name='append')
def append(name,count):
	# name = "request.session['choice"+str(count)+"']"
	string = name+str(count)
	# print string
	return string

@register.filter(name='appends')
def appends(name,count):
	# name = "request.session['choice"+str(count)+"']"
	string = name+count
	print string
	return string	


@register.filter(name='app')
def app(nam,ses):
	return ses.get(nam)

@register.filter(name="existsCourse")
def existsCourse(course,courselist):
	if course in courselist:
		return True
	else:
		return False	


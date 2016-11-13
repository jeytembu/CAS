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
	if value == arg:
		return True
	else:
		return False

@register.filter(name='add')		
def add (counter,value):
	counter += value;
	return counter

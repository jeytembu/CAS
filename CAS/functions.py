import math

def clusters(scores,total):
	r=0
	for x in range(0,len(scores)):
		r += scores[x]
	m=48
	api=total
	spi=84
	root=math.sqrt((r/float(m))*(api/float(spi)))*m
	cluster = float(format(root,'.4f'))
	return cluster

def clus1(s1,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj=[],[]
	sub1 = s1['English']
	scores.append(sub1)
	if s1['Maths'] >=  group2[0][1]:
		sub2 = s1['Maths']
		subs[group2[0][0]] = group2[0][1]
	else:
		sub2 = group2[0][1]
		subs[group2[1][0]] = group2[1][1]
	scores.append(sub2)	
	sub3 =group3[0][1]	
	scores.append(sub3)
	subs['Kiswahili']=s1['Kiswahili']
	if len(group3) >=2:
		subs[group3[1][0]]=group3[1][1]
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:	
		subs[group5[0][0]] = group5[0][1]
	subj = sorted(subs.items(), key=lambda x: x[1], reverse=True)
	sub4 = subj[0][1]		
	scores.append(sub4)	
	points = clusters(scores,total)
	return points	

def clus2(s1,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	if s1['Kiswahili'] >= s1['English']:
		sub1 = s1['Kiswahili']
	else:
		sub1= s1['English']
	scores.append(sub1)	
	sub2 = s1['Maths']
	scores.append(sub2)
	if group2[0][1] >= group3[0][1]:
		sub3=group2[0][1]
		subs[group2[1][0]] = group2[1][1]
		subs[group3[0][0]] = group3[0][1]
	else:
		sub3 = group3[0][1]
		subs[group2[0][0]] = group2[0][1]
		if len(group3) >= 2:
			subs[group3[1][0]] = group3[1][1]	
	scores.append(sub3)	
	if len(group4)>0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5)>0:
		subs[group5[0][0]] = group5[0][1]
	subj = sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)	
	points = clusters(scores,total)
	return points	

def clus3(s1,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	if s1['Kiswahili'] >= s1['English']:
		sub1 = s1['Kiswahili']
	else:
		sub1 = s1['English']
	scores.append(sub1)
	if s1['Maths'] >= group2[0][1]:
		sub2 = s1['Maths']
		subs[group2[0][0]] = group2[0][1]
	else:
		sub2 = group2[0][1]
		subs[group2[1][0]] = group2[1][1]
	scores.append(sub2)
	sub3 = group3[0][1]
	scores.append(sub3)
	if len(group3) >= 2:
		subs[group3[1][0]] = group3[1][1]
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points

def clus4(s1,s2,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	sub1 = s1['Maths']
	scores.append(sub1)
	sub2 = s2['Physics']
	scores.append(sub2)
	if len(group2) >= 3:
		if s2['Biology'] > s2['Chemistry']:
			sub3 = s2['Biology']
			subs['Chemistry'] = s2['Chemistry']
		else:
			sub3 = s2['Chemistry']	
			subs['Biology'] = s2['Biology']
	else:
		if group2[0][0] is 'Physics':
			sub3 = group2[1][0]
		else:
			sub3 = group2[0][1]		
	scores.append(sub3)
	subs[group3[0][0]] = group3[0][1]
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points	

def clus5(s1,s2,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	if s1['Kiswahili'] >= s1['English']:
		sub1 = s1['Kiswahili']
	else:
		sub1 = s1['English']	
	scores.append(sub1)
	sub2 = s2['Biology']
	scores.append(sub2)
	sub3 = group3[0][1]
	scores.append(sub3)
	subs['Maths'] = s1['Maths']
	if group2[0][0] == 'Biology':
		subs[group2[1][0]] = group2[1][1]
	else:
		subs[group2[0][0]] = group2[0][1]	
	if len(group3) >=2 :
		subs[group3[1][0]] = group3[1][1]
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points		

def clus7(s1,s2,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	if s1['Kiswahili'] >= s1['English']:
		sub1 = s1['Kiswahili']
	else:
		sub1 = s1['English']	
	scores.append(sub1)
	if s1['Maths'] >= group2[0][1]:
		sub2 = s1['Maths']
		subs[group2[0][0]] = group2[0][1]
	else:
		sub2 = group2[0][1]
		subs[group2[1][0]] = group2[1][1]	
	scores.append(sub2)
	sub3 = group3[0][1]
	scores.append(sub3)
	if len(group3) >= 2:
		subs[group3[1][0]] = group3[1][1]
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points	

def clus8(s1,s2,s3,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	sub1 = s1['Maths']
	scores.append(sub1)
	sub2 = s2['Physics']
	scores.append(sub2)
	sub3 = s3['Geography']
	scores.append(sub3)
	if group2[0][0] == 'Physics':
		subs[group2[1][0]] = group2[1][1]
	else:
		subs[group2[0][0]] = group2[0][1]	
	if len(group3) >= 2:
		if group3[0][0] == 'Geography':
			subs[group3[1][0]] = group3[1][1]
		else:
			subs[group3[0][0]] = group3[0][1]	
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points		

def clus9(s1,s2,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	sub1 = s1['Maths']
	scores.append(sub1)
	sub2 = s2['Physics']
	scores.append(sub2)
	sub3 = s2['Chemistry']
	scores.append(sub3)
	if len(group2):
		subs['Biology'] = s2['Biology']
	subs[group3[0][0]] = group3[0][1]
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points

def clus10(s1,s2,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	sub1 = s1['Maths']
	scores.append(sub1)
	sub2 = s2['Physics']
	scores.append(sub2)
	sub3 = group3[0][1]
	scores.append(sub3)
	if group2[0][0] is 'Physics':
		subs[group2[1][0]] = group2[1][1]
	else:
		subs[group2[0][0]] = group2[0][1]
	if len(group3) >= 2:
		subs[group3[1][0]] = group3[1][1]		
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points

def clus11(s1,s2,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	sub1 = s1['Maths']
	scores.append(sub1)
	sub2 = s2['Physics']
	scores.append(sub2)
	if group2[0][0] is 'Physics':
		if group2[1][1] >= group3[0][1]:
			sub3 = group2[1][1]
			if len(group2) >= 3:
				subs[group2[2][0]] = group2[2][1]
			subs[group3[0][0]]= group3[0][1]
		else:
			sub3 = group3[0][1]
			subs[group2[1][0]] = group2[1][1]
			if len(group3) >= 2:
				subs[group3[1][0]] = group3[1][1]
	else:							
		if group2[0][1] >= group3[0][1]:
			sub3 = group2[0][1]
			if group2[1][0] is 'Physics':
				if len(group2) >= 3:
					subs[group2[2][0]] = group2[2][1]
			else:
				subs[group2[1][0]] = group2[1][1]		
			subs[group3[0][0]]= group3[0][1]
		else:
			sub3 = group3[0][1]
			subs[group2[0][0]] = group2[0][1]
			if len(group3) >= 2:
				subs[group3[1][0]] = group3[1][1]			
	scores.append(sub3)
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points	

def clus12(s1,s2,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	sub1 = s1['Maths']
	scores.append(sub1)
	sub2 = s2['Biology']
	scores.append(sub2)
	if len(group2) >= 3:
		if s2['Physics'] >= s2['Chemistry']:
			sub3 = s2['Physics']
			subs['Chemistry'] = s2['Chemistry']
		else:
			sub3 = s2['Chemistry']
			subs['Physics'] = s2['Physics']	
	else:
		if group2[0][0] is 'Biology':
			sub3 = group2[1][1]
		else:
			sub3 = group2[0][1]			
	scores.append(sub3)
	subs[group3[0][0]] = group3[0][1]		
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points

def clus13(s1,s2,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	sub1 = s1['Maths']
	scores.append(sub1)
	sub2 = group2[0][1]
	scores.append(sub2)
	sub3 = group2[1][1]
	scores.append(sub3)
	if len(group2) > 2:
		subs[group2[2][0]] = group2[2][1]
	subs[group3[0][0]] = group3[0][1]		
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points	

def clus14(s1,s2,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	sub1 = s1['Maths']
	scores.append(sub1)
	sub2 = group2[0][1]
	scores.append(sub2)
	sub3 = group3[0][1]
	scores.append(sub3)
	subs[group2[1][0]] = group2[1][1]
	if len(group3) >= 2:
		subs[group3[1][0]] = group3[1][1]		
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points

def clus15(s1,s2,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	sub1 = s2['Chemistry']
	scores.append(sub1)
	if len(group2) == 3:
		if s1['Maths'] >= s2['Physics']:                                               
			sub2 = s1['Maths']
		else:
			sub2 = s2['Physics']
	else:
		sub2 = s1['Maths']			
	scores.append(sub2)
	sub3 = s2['Biology']
	scores.append(sub3)
	if s1['Kiswahili'] >= s1['English']:
		subs['Kiswahili'] = s1['Kiswahili']
	else:
		subs['English'] = s1['English']	
	subs[group3[0][0]] = group3[0][1]		
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points

def clus16(s1,s2,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	sub1 = s2['Biology']
	scores.append(sub1)
	sub2 = s1['Maths']	
	scores.append(sub2)
	if group2[0][0] is 'Biology':
		if group2[1][1] >= group3[0][1]:
			sub3 = group2[1][1]
			if len(group2)>2:
				subs[group2[2][0]] = group2[2][1]
				subs[group3[0][0]] = group3[0][1]
		else:
			sub3 =group3[0][1]
			subs[group2[1][0]] = group2[1][1]
			if len(group3) > 1:
				subs[group3[1][0]] = group3[1][1]		
	else:
		if group2[0][1] >= group3[0][1]:
			sub3 =group2[0][1]
			subs[group2[1][0]] = group2[1][1]
			subs[group3[0][0]] = group3[0][1]
		else:	
			sub3 =group3[0][1]
			if len(group3) > 1:
				subs[group3[1][0]] = group3[1][1]
			subs[group2[0][0]] = group2[0][1]		
	scores.append(sub3)		
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points

def clus18(s1,s2,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	sub1 = s2['Biology']
	scores.append(sub1)
	sub2 = s2['Chemistry']	
	scores.append(sub2)
	if len(group2) == 3:
		if s1['Maths'] >= s2['Physics']:
			sub3 = s1['Maths']
			subs['Physics'] = s2['Physics'] 
		else:
			sub3 = s2['Physics']
	else:
		sub3 = s1['Maths']		
	scores.append(sub3)			
	if s1['Kiswahili'] >= s1['English']:
		subs['Kiswahili'] = s1['Kiswahili']
	else:
		subs['English'] = s1['English']
	subs[group3[0][0]] = group3[0][1]	
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points																

def clus20(s1,s2,s3,group1,group2,group3,group4,group5,total):
	subs,subs3 = {},{}
	scores,subj,subj3 = [],[],[]
	sub1 = s2['Biology']
	scores.append(sub1)
	sub2 = s2['Chemistry']	
	scores.append(sub2)
	subs3['Maths'] = s1['Maths']
	if 'Physics' in s2:
		subs3['Physics'] = s2['Physics']
	if 'Geography'in s3:
		subs3['Geography'] = s3['Geography']
	subj3 =	sorted(subs3.items(),key=lambda x: x[1],reverse=True)	
	sub3 = subj3[0][1]
	scores.append(sub3)

	if s1['Kiswahili'] >= s1['English']:
		subs['Kiswahili'] = s1['Kiswahili']
	else:
		subs['English'] = s1['English']	

	if subj3[0][0] is 'Physics':
		if group2[0][0] is 'Physics':
			subs[group2[1][0]] = group2[1][1]
		else:
			subs[group2[0][0]] = group2[0][1]
	else:
		subs[group2[0][0]] = group2[0][1]

	if subj3[0][0] is 'Geography':
		if len(group3) >= 2:
			subs[group3[1][0]] = group3[1][1]
	else:
		subs[group3[0][0]] = group3[0][1]						
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points

def clus21(s1,s2,s3,group1,group2,group3,group4,group5,total):
	subs = {}
	scores,subj = [],[]
	sub1 = s3['Geography']
	scores.append(sub1)
	sub2 = s1['Maths']	
	scores.append(sub2)
	sub3 = group2[0][1]
	scores.append(sub3)			
	subs[group2[1][0]] = group2[1][1]
	if len(group3) >= 2:
		subs[group3[1][0]] = group3[1][1]	
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
	scores.append(sub4)
	points = clusters(scores,total)
	return points

def clus222324(s1,s2,s3,s5,group1,group2,group3,group4,group5,total,subject):
	subs,subs3 = {},{}
	scores,subj,subj3 = [],[],[]
	sub1 = s5[subject]
	scores.append(sub1)
	if s1['Kiswahili'] >= s1['English']:
		sub2 = s1['Kiswahili']
	else:
		sub2 = s1['English']
	scores.append(sub2)	
	subs3['Maths'] = s1['Maths']
	subs3[group2[0][0]] = group2[0][1]
	subs3[group3[0][0]] = group3[0][1]
	subj3 =	sorted(subs3.items(),key=lambda x: x[1],reverse=True)
	sub3 = subj3[0][1]		
	scores.append(sub3)			
	if subj3[0][0] is group2[0][0]:
		subs[group2[1][0]] = group2[1][1]
	else:
		subs[group2[0][0]] = group2[0][1]
	if subj3[0][0] is group3[0][0]:
		if len(group3) >= 2:
			subs[group3[1][0]] = group3[1][1]
	else:
		subs[group3[0][0]] = group3[0][1]		
	if len(group4) > 0:
		subs[group4[0][0]] = group4[0][1]
	if len(group5) > 0:
		subs[group5[0][0]] = group5[0][1]
	subj =	sorted(subs.items(),key=lambda x: x[1],reverse=True)
	sub4 = subj[0][1]
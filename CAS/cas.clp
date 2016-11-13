(deftemplate direction-of-energy
	(slot choice0 (type STRING))
	(slot choice1 (type STRING))
	(slot choice2 (type STRING))
	(slot choice3 (type STRING))
	(slot choice4 (type STRING))
)
(deftemplate information-processing
	(slot choice0 (type STRING))
	(slot choice1 (type STRING))
	(slot choice2 (type STRING))
	(slot choice3 (type STRING))
	(slot choice4 (type STRING))
)
(deftemplate making-decisions
	(slot choice0 (type STRING))
	(slot choice1 (type STRING))
	(slot choice2 (type STRING))
	(slot choice3 (type STRING))
	(slot choice4 (type STRING))
)
(deftemplate organizing-information
	(slot choice0 (type STRING))
	(slot choice1 (type STRING))
	(slot choice2 (type STRING))
	(slot choice3 (type STRING))
	(slot choice4 (type STRING))
)
(deftemplate finale
	(slot result1 (type STRING))
	(slot result2 (type STRING))
	(slot result3 (type STRING))
	(slot result4 (type STRING))
)

(deffunction get-count (?ans $?answers)
	(bind ?count 0)
	(loop-for-count (?answer 1 5) do
		(if (eq ?ans (nth$ ?answer ?answers))
			then (bind ?count (+ ?count 1))))
	?count		
)
(defrule get-energy-type
	?f <- (direction-of-energy
			(choice0 ?choice0)
			(choice1 ?choice1)
			(choice2 ?choice2)
			(choice3 ?choice3)
			(choice4 ?choice4))
	=>
	(bind ?num (get-count "I" ?choice0 ?choice1 ?choice2 ?choice3 ?choice4))
	(bind ?num1 (- 5 ?num))
	(assert (introvert ?num))
	(assert (extrovert ?num1))
)
(defrule get-processing-type
	?f <- (information-processing
			(choice0 ?choice0)
			(choice1 ?choice1)
			(choice2 ?choice2)
			(choice3 ?choice3)
			(choice4 ?choice4))
	=>
	(bind ?num (get-count "S" ?choice0 ?choice1 ?choice2 ?choice3 ?choice4))
	(bind ?num1 (- 5 ?num))
	(assert (sensing ?num))
	(assert (intuitive ?num1))
)
(defrule get-decision-making-type
	?f <- (making-decisions
			(choice0 ?choice0)
			(choice1 ?choice1)
			(choice2 ?choice2)
			(choice3 ?choice3)
			(choice4 ?choice4))
	=>
	(bind ?num (get-count "T" ?choice0 ?choice1 ?choice2 ?choice3 ?choice4))
	(bind ?num1 (- 5 ?num))
	(assert (thinking ?num))
	(assert (feeling ?num1))
)
(defrule get-organizing-decision-type
	?f <- (organizing-information
			(choice0 ?choice0)
			(choice1 ?choice1)
			(choice2 ?choice2)
			(choice3 ?choice3)
			(choice4 ?choice4))
	=>
	(bind ?num (get-count "J" ?choice0 ?choice1 ?choice2 ?choice3 ?choice4))
	(bind ?num1 (- 5 ?num))
	(assert (judging ?num))
	(assert (perceiving ?num1))
)
(defrule get-personality-type
	(introvert ?num)
	(extrovert ?num1)
	(sensing ?num2)
	(intuitive ?num3)
	(thinking ?num4)
	(feeling ?num5)
	(judging ?num6)
	(perceiving ?num7)
	=>
	(if (> ?num ?num1) then (bind ?res1 'I') else (bind ?res1 'E'))
	(if (> ?num2 ?num3) then (bind ?res2 'S') else (bind ?res2 'N'))
	(if (> ?num4 ?num5) then (bind ?res3 'T') else (bind ?res3 'F'))
	(if (> ?num6 ?num7) then (bind ?res4 'J') else (bind ?res4 'P'))
	(assert (finale (result1 ?res1) (result2 ?res2) (result3 ?res3) (result4 ?res4)))
)


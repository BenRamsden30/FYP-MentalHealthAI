context("Testing for the UpdateEntry function.")

test_that("Testing of the Updateentry function",
          {
            #Initializing the result variable for "Harm"
            result <- list(ï..Condition = "Unknown",Loss.of.Interest = 0,Sleeping.Iregularities = 0
                            ,Mood.Swings = 0,Loss.Self.Esteem = 28,Weight.fluctuation = 0,
                            Detatchment.from.Reality = 0,Physical.Response = 32,Guilt = 5,
                            Suicidal.Thoughts.Tendincies = 16,
                            Inability.to.cope.with.daily.problems.stress = 0,
                            Confusion.reduced.ability.to.concentrate = 0, 
                            Impulsive.or.erratic.behaviour = 0)
            
            
            #Tests to see if the update works correctly for the work 
            expect_identical(UpdateEntry(9,test), result)
            
            #Initializing the result variable for "Suicide"
            result <- list(ï..Condition = "Unknown",Loss.of.Interest = 0,Sleeping.Iregularities = 0
                            ,Mood.Swings = 0,Loss.Self.Esteem = 15,Weight.fluctuation = 0,
                            Detatchment.from.Reality = 26,Physical.Response = 0,Guilt = 0,
                            Suicidal.Thoughts.Tendincies = 40,
                            Inability.to.cope.with.daily.problems.stress = 32,
                            Confusion.reduced.ability.to.concentrate = 0, 
                            Impulsive.or.erratic.behaviour = 0)
            
            #Tests to see if the update works correctly for the work 
            expect_identical(UpdateEntry(2,test), result)
            
            #Initializing the result variable for "Bored"
            result <- list(ï..Condition = "Unknown",Loss.of.Interest = 30,Sleeping.Iregularities = 0
                            ,Mood.Swings = 0,Loss.Self.Esteem = 0,Weight.fluctuation = 0,
                            Detatchment.from.Reality = 14,Physical.Response = 0,Guilt = 0,
                            Suicidal.Thoughts.Tendincies = 0,
                            Inability.to.cope.with.daily.problems.stress = 14,
                            Confusion.reduced.ability.to.concentrate = 0, 
                            Impulsive.or.erratic.behaviour = 0)
            
            #Tests to see if the update works correctly for the work 
            expect_identical(UpdateEntry(13,test), result)
            
            
            #Initializing the result variable for "Eating"
            result <- list(ï..Condition = "Unknown",Loss.of.Interest = 23,Sleeping.Iregularities = 26
                            ,Mood.Swings = 38,Loss.Self.Esteem = 20,Weight.fluctuation = 33,
                            Detatchment.from.Reality = 5,Physical.Response = 14,Guilt = 0,
                            Suicidal.Thoughts.Tendincies = 28,
                            Inability.to.cope.with.daily.problems.stress = 4,
                            Confusion.reduced.ability.to.concentrate = 36, 
                            Impulsive.or.erratic.behaviour = 38)
            
            #Tests to see if the update works correctly for the work 
            expect_identical(UpdateEntry(15,test), result)
            
          #Note that this function cannot be called without having a match with the Triggers.csv
          })
context("Testing AnalyzeEntry function")

test-AnalyzeEntry <- test_that("Testing for the analyze entry function.", {
  #Initializing the result variable for depression
  result <- list(ï..Condition = "Unknown",Loss.of.Interest = 0,Sleeping.Iregularities = 0
                  ,Mood.Swings = 0,Loss.Self.Esteem = 15,Weight.fluctuation = 0,
                  Detatchment.from.Reality = 26,Physical.Response = 0,Guilt = 0,
                  Suicidal.Thoughts.Tendincies = 40,
                  Inability.to.cope.with.daily.problems.stress = 32,
                  Confusion.reduced.ability.to.concentrate = 0, 
                  Impulsive.or.erratic.behaviour = 0)
  
  
  #Tests for depression with key word
  expect_identical(AnalyzeEntry("Hi i had thoughts of Suicide"), result)
  
  #Sets the result variable to expected output
  result2 <- list(ï..Condition = "Unknown",Loss.of.Interest = 23,Sleeping.Iregularities = 26
                   ,Mood.Swings = 38,Loss.Self.Esteem = 20,Weight.fluctuation = 33,
                   Detatchment.from.Reality = 5,Physical.Response = 14,Guilt = 0,
                   Suicidal.Thoughts.Tendincies = 28,
                   Inability.to.cope.with.daily.problems.stress = 4,
                   Confusion.reduced.ability.to.concentrate = 36, 
                   Impulsive.or.erratic.behaviour = 38)
  
  #Tests for eating disorders using a key word
  expect_identical(AnalyzeEntry("Hi i have not been eating much"), result2)
  
  #Sets the result variable to expected output
  result <- list(ï..Condition = "Unknown",Loss.of.Interest = 12,Sleeping.Iregularities = 23
                  ,Mood.Swings = 11,Loss.Self.Esteem = 18,Weight.fluctuation = 6,
                  Detatchment.from.Reality = 32,Physical.Response = 39,Guilt = 4,
                  Suicidal.Thoughts.Tendincies = 2,
                  Inability.to.cope.with.daily.problems.stress = 37,
                  Confusion.reduced.ability.to.concentrate = 15, 
                  Impulsive.or.erratic.behaviour = 22)
  
  #Testing for signs of anxiety
  expect_identical(AnalyzeEntry("I fear i may have anxeity as i have been very anxious and on edge as of recent."), result)
  
  #Sets the result variable to expected output
  result <- list(ï..Condition = "Unknown",Loss.of.Interest = 32,Sleeping.Iregularities = 1
                  ,Mood.Swings = 30,Loss.Self.Esteem = 2,Weight.fluctuation = 4,
                  Detatchment.from.Reality = 12,Physical.Response = 26,Guilt = 1,
                  Suicidal.Thoughts.Tendincies = 1,
                  Inability.to.cope.with.daily.problems.stress = 28,
                  Confusion.reduced.ability.to.concentrate = 30, 
                  Impulsive.or.erratic.behaviour = 22)
  
  #Tests for signs of ADHD
  expect_identical(AnalyzeEntry("I have been super active and not stopped recently."), result)
  
  
  #Sets the result variable to expected output
  result <- list(ï..Condition = "Unknown",Loss.of.Interest = 30,Sleeping.Iregularities = 0
                  ,Mood.Swings = 0,Loss.Self.Esteem = 0,Weight.fluctuation = 0,
                  Detatchment.from.Reality = 14,Physical.Response = 0,Guilt = 0,
                  Suicidal.Thoughts.Tendincies = 0,
                  Inability.to.cope.with.daily.problems.stress = 14,
                  Confusion.reduced.ability.to.concentrate = 0, 
                  Impulsive.or.erratic.behaviour = 0)
  
  
  #Tests for unknown if no triggers are found
  expect_identical(AnalyzeEntry("I am Bored"), result)
  
}
)


context("Testing PredictResult function")

test_that("Testing the PredictResult function",
{
  #Sets the value of condition to a profile of Depression ready for the test
  condition <- list(ï..Condition = "Unknown",Loss.of.Interest = 0,Sleeping.Iregularities = 0
                  ,Mood.Swings = 0,Loss.Self.Esteem = 15,Weight.fluctuation = 0,
                  Detatchment.from.Reality = 26,Physical.Response = 0,Guilt = 0,
                  Suicidal.Thoughts.Tendincies = 40,
                  Inability.to.cope.with.daily.problems.stress = 32,
                  Confusion.reduced.ability.to.concentrate = 0, 
                  Impulsive.or.erratic.behaviour = 0)
  
  #Tests against a Depression Profile.
  expect_identical(predict_result(fit,condition), "Depression")
  
  #Sets the value of condition to a profile of Eating Disorders ready for the test
  condition <- list(ï..Condition = "Unknown",Loss.of.Interest = 23,Sleeping.Iregularities = 26
                  ,Mood.Swings = 38,Loss.Self.Esteem = 20,Weight.fluctuation = 33,
                  Detatchment.from.Reality = 5,Physical.Response = 14,Guilt = 0,
                  Suicidal.Thoughts.Tendincies = 28,
                  Inability.to.cope.with.daily.problems.stress = 4,
                  Confusion.reduced.ability.to.concentrate = 36, 
                  Impulsive.or.erratic.behaviour = 38)
  
  #Tests against a Eating-Disorders Profile.
  expect_identical(predict_result(fit,condition), "Eating-Disorders")
  
  #Sets the value of condition to a profile of Anxiety ready for the test
  condition <- list(ï..Condition = "Unknown",Loss.of.Interest = 12,Sleeping.Iregularities = 23
                  ,Mood.Swings = 11,Loss.Self.Esteem = 18,Weight.fluctuation = 6,
                  Detatchment.from.Reality = 32,Physical.Response = 39,Guilt = 4,
                  Suicidal.Thoughts.Tendincies = 2,
                  Inability.to.cope.with.daily.problems.stress = 37,
                  Confusion.reduced.ability.to.concentrate = 15, 
                  Impulsive.or.erratic.behaviour = 22)
  
  #Tests against a Anxiety Profile.
  expect_identical(predict_result(fit,condition), "Anxeity")
  
  #Sets the value of condition to a profile of ADHD ready for the test
  condition <- list(ï..Condition = "Unknown",Loss.of.Interest = 32,Sleeping.Iregularities = 1
                  ,Mood.Swings = 30,Loss.Self.Esteem = 2,Weight.fluctuation = 4,
                  Detatchment.from.Reality = 12,Physical.Response = 26,Guilt = 1,
                  Suicidal.Thoughts.Tendincies = 1,
                  Inability.to.cope.with.daily.problems.stress = 28,
                  Confusion.reduced.ability.to.concentrate = 30, 
                  Impulsive.or.erratic.behaviour = 22)
  
  #Tests against a ADHD Profile.
  expect_identical(predict_result(fit,condition), "ADHD")
  
  #Sets the value of condition to a profile of an unknown ready for the test
  condition <- list(ï..Condition = "Unknown",Loss.of.Interest = 30,Sleeping.Iregularities = 0
                  ,Mood.Swings = 0,Loss.Self.Esteem = 0,Weight.fluctuation = 0,
                  Detatchment.from.Reality = 14,Physical.Response = 0,Guilt = 0,
                  Suicidal.Thoughts.Tendincies = 0,
                  Inability.to.cope.with.daily.problems.stress = 14,
                  Confusion.reduced.ability.to.concentrate = 0, 
                  Impulsive.or.erratic.behaviour = 0)
  
  #Tests against an Unknown Profile.
  expect_identical(predict_result(fit,condition), "Unknown")
  
})
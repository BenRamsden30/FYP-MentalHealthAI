context("Testing PredictResult function")

test_that("Testing the PredictResult function"),
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
  result <- list(ï..Condition = "Unknown",Loss.of.Interest = 23,Sleeping.Iregularities = 26
                  ,Mood.Swings = 38,Loss.Self.Esteem = 20,Weight.fluctuation = 33,
                  Detatchment.from.Reality = 5,Physical.Response = 14,Guilt = 0,
                  Suicidal.Thoughts.Tendincies = 28,
                  Inability.to.cope.with.daily.problems.stress = 4,
                  Confusion.reduced.ability.to.concentrate = 36, 
                  Impulsive.or.erratic.behaviour = 38)
  
}
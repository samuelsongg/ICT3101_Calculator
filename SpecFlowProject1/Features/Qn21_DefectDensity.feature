﻿Feature: UsingCalculatorDefectDensity
	In order to assess system quality metrics
	As a system quality engineer
	I want to calculate the defect density of a system

@DefectDensity
Scenario: Calculating defect density
	Given I have a calculator
	When I have entered 100 and 5000 into the calculator and press DefectDensity
	Then the defect density result should be "0.02"

@DefectDensity
Scenario: Calculating defect density with negative parameters
	Given I have a calculator
	When I have entered -100 and 5000 into the calculator and press DefectDensity
    Then a Defect Density exception should be thrown with the message "Parameters cannot be negative"
--CREATE DATABASE FMCIS
USE FMCIS
GO
;
------------------------------=================== ACCOUNTS ===================---------------------------------

CREATE TABLE AdminAcc
(
Username VARCHAR(50) NOT NULL PRIMARY KEY,
Pass VARCHAR(50),
Fname VARCHAR(50),
Lname VARCHAR(50),
AdminRole INT -- 1 = AccountingAdmin | 2 = I.T. Admin | 3 = FortMed Admin | 4 = All
)

CREATE TABLE Patient
(
AccountNo INT NOT NULL IDENTITY(100001,1) PRIMARY KEY,
Username VARCHAR(100) NOT NULL UNIQUE,
Pass VARCHAR(50),
Fname VARCHAR(50),
Lname VARCHAR(50),
Mname VARCHAR(50),
Gender VARCHAR(6),
DoB DATE, --Format: YYYY-MM-DD
CivilStatus VARCHAR (20),
Nationality VARCHAR (20),
Address1 VARCHAR(100),
City VARCHAR(50),
ZIP VARCHAR(20),
TelNo VARCHAR(20),
MobileNo VARCHAR(20),
Company VARCHAR(50),
Occupation VARCHAR(30),
Religion VARCHAR(30),
Remarks VARCHAR(200)
)
--There is a mistake here. What if a doctor is in two department? This will create a redundancy in the doctor's account (he/she will have to accounts.)
--The solution is to re-create the tbl.Doctor; remove the column Department, and tbl.Departments; insert a doctor(fk) and the department/code (it's okay to have two or more departments)
CREATE TABLE Doctor
(
AccountNo INT NOT NULL IDENTITY(1000,2) PRIMARY KEY,
Pass VARCHAR(50),
MDName VARCHAR(50),
Fname VARCHAR(50),
Mname VARCHAR(50),
Lname VARCHAR(50),
DoB DATE,
Gender VARCHAR(6),
Address1 VARCHAR(50),
Address2 VARCHAR(50),
Address3 VARCHAR(50),
ContactNo VARCHAR(20),
Email VARCHAR(50),
PRCLicenseNo VARCHAR(20),
Department INT FOREIGN KEY REFERENCES Departments(DepartmentID)
)

CREATE TABLE NurseMedTech
(
AccountNo INT NOT NULL IDENTITY(4000,2) PRIMARY KEY,
Pass VARCHAR(50),
RNMTName VARCHAR(50),
Fname VARCHAR(50),
Mname VARCHAR(50),
Lname VARCHAR(50),
DoB DATE,
Gender VARCHAR(6),
Address1 VARCHAR(50),
Address2 VARCHAR(50),
Address3 VARCHAR(50),
ContactNo VARCHAR(20),
Email VARCHAR(50),
PRCLicenseNo VARCHAR(20),
NM CHAR -- (N)urse/(M)edTech
)

CREATE TABLE Employee
(
AccountNo INT NOT NULL IDENTITY(10000,2) PRIMARY KEY,
Pass VARCHAR(50),
Fname VARCHAR(50),
Mname VARCHAR(50),
Lname VARCHAR(50),
DoB DATE,
Gender VARCHAR(6),
Address1 VARCHAR(50),
Address2 VARCHAR(50),
Address3 VARCHAR(50),
ContactNo VARCHAR(20),
Email VARCHAR(50),
Position VARCHAR(50)
)

;




------------------------------=================== RECEPTION / REGISTRATION ===================---------------------------------

CREATE TABLE ScheduledCheckUps
(
ScheduleID INT NOT NULL IDENTITY(100,1) PRIMARY KEY,
ScheduleDate DATE,
ScheduleTime TIME, --Format:8 positions minimum (hh:mm:ss) to 16 maximum (hh:mm:ss.nnnnnnn)
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
DoctorAccountNo INT FOREIGN KEY REFERENCES Doctor(AccountNo)
)

CREATE TABLE PatientAppointmentRequest
(
RequestID INT NOT NULL IDENTITY(100,1) PRIMARY KEY,
RequestDate DATE,
RequestTime TIME, --Format:8 positions minimum (hh:mm:ss) to 16 maximum (hh:mm:ss.nnnnnnn)
Symptoms VARCHAR(300),
Remarks VARCHAR(300),
ContactNo VARCHAR(20),
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo)
)

CREATE TABLE PatientQueue
(
QueueID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
PatientQueueNo INT NOT NULL,
QueueType CHAR, --(Y)ellow/(R)ed
QueueDate DATE,
Registered CHAR, --(Y)es/(N)o/(O)n-going/(C)anceled
PatientID INT FOREIGN KEY REFERENCES Patient(AccountNo)
)

CREATE TABLE Registration
(
RegistrationID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Notes VARCHAR(150),
Department VARCHAR(20),
NurseAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo),
DoctorAccountNo INT FOREIGN KEY REFERENCES Doctor(AccountNo),
QueueID INT FOREIGN KEY REFERENCES PatientQueue(QueueID)
)

CREATE TABLE BillingTransactions
(
BillingID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
TransactionNo INT NOT NULL,
TransactionDateTime DATETIME,
ServiceItem VARCHAR(100),
Price FLOAT,
PatientID INT FOREIGN KEY REFERENCES Patient(AccountNo),
EmployeeID INT FOREIGN KEY REFERENCES Employee(AccountNo)
)

CREATE TABLE DoctorsSchedule
(
ScheduleID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
Sunday BIT,
SundayStart TIME,
SundayEnd TIME,
Monday BIT,
MondayStart TIME,
MondayEnd TIME,
Tuesday BIT,
TuesdayStart TIME,
TuesdayEnd TIME,
Wednesday BIT,
WednesdayStart TIME,
WednesdayEnd TIME,
Thursday BIT,
ThursdayStart TIME,
ThursdayEnd TIME,
Friday BIT,
FridayStart TIME,
FridayEnd TIME,
Saturday BIT,
SaturdayStart TIME,
SaturdayEnd TIME,
DoctorAccountNo INT FOREIGN KEY REFERENCES Doctor(AccountNo)
)

CREATE TABLE TransactionDetail
(
TransactionDetailID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
TransactionName VARCHAR(300),
TransactionCode VARCHAR(50),
TransactionPrice FLOAT
)

;


------------------------------=================== MEDICAL RECORDS ===================---------------------------------

CREATE TABLE Departments
(
DepartmentID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
DepartmentCode VARCHAR(15),
DepartmentName VARCHAR(40)
)

CREATE TABLE MedicalRecordConsultation
(
ConsultationID INT NOT NULL IDENTITY(1000,1) PRIMARY KEY,
ConsultationDateTime DATETIME,
ChiefComplaint VARCHAR(1000),
Remarks VARCHAR(1000),
ExaminationAdvice VARCHAR(1000),
ExaminationResults VARCHAR(1000),
DiagnosisType VARCHAR(300),
DiagnosisResults VARCHAR(1000),
TreatmentPlan VARCHAR(1000),
Prescription VARCHAR(1000),
CaseSummary VARCHAR(1000),
ReferredTo VARCHAR(300),
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
DoctorAccountNo INT FOREIGN KEY REFERENCES Doctor(AccountNo)
)

;



------------------------------=================== LABORATORIES ===================---------------------------------

CREATE TABLE VitalSigns
(
VitalSignsID INT NOT NULL IDENTITY(1000,1) PRIMARY KEY,
VitalSignsDateTime DATETIME,
PulseRate FLOAT,
RespiratoryRate FLOAT,
TemperatureDegC FLOAT,
HeightCm FLOAT,
WeightKg FLOAT,
BloodPressuremmHg VARCHAR(10),
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
NurseMedTechAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo)
)

CREATE TABLE LabAudiometry
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
DatePerformed DATE,
AirRightEar250Hz INT,
AirRightEar500Hz INT,
AirRightEar750Hz INT,
AirRightEar1000Hz INT,
AirRightEar1500Hz INT,
AirRightEar2000Hz INT,
AirRightEar3000Hz INT,
AirRightEar4000Hz INT,
AirRightEar6000Hz INT,
AirRightEar8000Hz INT,
AirLeftEar250Hz INT,
AirLeftEar500Hz INT,
AirLeftEar750Hz INT,
AirLeftEar1000Hz INT,
AirLeftEar1500Hz INT,
AirLeftEar2000Hz INT,
AirLeftEar3000Hz INT,
AirLeftEar4000Hz INT,
AirLeftEar6000Hz INT,
AirLeftEar8000Hz INT,
Hearing VARCHAR(15),
Remarks VARCHAR(300),
RequestDoctor VARCHAR(100),
Audiologist VARCHAR(100),
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
NurseMedTechAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo)
)

CREATE TABLE LabBloodChemistry
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
DatePerformed DATE,
FBS FLOAT,
BUN FLOAT,
Creatine FLOAT,
BUA FLOAT,
Cholesterol FLOAT,
Triglycerides FLOAT,
HDL FLOAT,
LDL FLOAT,
VLDL FLOAT,
SGOT FLOAT,
SGPT FLOAT,
AlkalainePhosphatase FLOAT,
TotalBilirubin FLOAT,
DirectBilirubin FLOAT,
IndirectBilirubin FLOAT,
Albumim FLOAT,
Globulin FLOAT,
AGRatio FLOAT,
Sodium FLOAT,
Potassium FLOAT,
Chloride FLOAT,
Calcium FLOAT,
HbA1C FLOAT,
RandomBloodSugar FLOAT,
AcidPhosphatase FLOAT,
Lipase FLOAT,
GGTP FLOAT,
CPKMB FLOAT,
CO2 FLOAT,
Fructosamine FLOAT,
PPBS2hr FLOAT,
OGCT FLOAT,
LDH FLOAT,
CPKTotal FLOAT,
Magnesium FLOAT,
Phosporous FLOAT,
Amylase FLOAT,
Iron FLOAT,
OGTTFBS FLOAT,
OGTT1hr FLOAT,
OGTT2hr FLOAT,
OGTT3hr FLOAT,
Others VARCHAR(300),
ReqPhysician VARCHAR(100),
Pathologist VARCHAR(100),
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
NurseMedTechAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo)
)

CREATE TABLE LabCTScan
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
DatePerformed DATE,
PlateNo INT,
ClinicalDiag VARCHAR(300),
Code INT,
Findings VARCHAR(300),
Impression VARCHAR(300),
Remarks VARCHAR(300),
ReqPhysician VARCHAR(100),
Radiologist VARCHAR(100),
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
NurseMedTechAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo)
)

CREATE TABLE LabCytopathology
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
DatePerformed DATE,
SpecimenAdequacySatisfactory BIT,
SpecimenAdequacyLessThanOptimal BIT,
SpecimenAdequacyUnsatisfactory BIT,
SpecimenAdequacyUnsatisfactoryScantCellularity BIT,
SpecimenAdequacyUnsatisfactoryPoorFixation BIT,
SpecimenAdequacyUnsatisfactoryObscuringInflammation BIT,
SpecimenAdequacyUnsatisfactoryObscuringBlood BIT,
SpecimenAdequacyUnsatisfactoryExcessiveCytosis BIT,
GeneralCategorizationWithinNormalLimits BIT,
GeneralCategorizationBenignCellularChange BIT,
GeneralCategorizationFurtherActionRecommended BIT,
DescriptiveDiagnosisInfectionFungiConsistent BIT,
DescriptiveDiagnosisInfectionTrichomonasVaginalis BIT,
DescriptiveDiagnosisInfectionOther VARCHAR(50),
DescriptiveDiagnosisReactiveInflammation BIT,
DescriptiveDiagnosisReactiveEffectsOfIUD BIT,
DescriptiveDiagnosisReactiveRadiationEffect BIT,
DescriptiveDiagnosisReactiveChemotheraphyEffect BIT,
DescriptiveDiagnosisReactiveSquamousMetaplasis BIT,
EpithelialCellAbnormalitiesSquamousAtypia BIT,
EpithelialCellAbnormalitiesSquamousIntraepithelial BIT,
EpithelialCellAbnormalitiesSquamousIntraepithelialLowGrade BIT,
EpithelialCellAbnormalitiesSquamousIntraepithelialLowGradeHPV BIT,
EpithelialCellAbnormalitiesSquamousIntraepithelialLowGradeMildDysplasia BIT,
EpithelialCellAbnormalitiesSquamousIntraepithelialHighGrade BIT,
EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeModerateDysplasia BIT,
EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeSevereDysplasia BIT,
EpithelialCellAbnormalitiesSquamousIntraepithelialHighGradeCarcinomaInCitu BIT,
EpithelialCellAbnormalitiesEndometrialCellsPresent BIT,
EpithelialCellAbnormalitiesEndometrialCellsPresentOutOfPhase BIT,
EpithelialCellAbnormalitiesEndometrialCellsPresentInPostmenopaused BIT,
EpithelialCellAbnormalitiesEndometrialCellsPresentNoMenstrualHistory BIT,
EpithelialCellAbnormalitiesSquamousIntraepithelialAtypicalGlanduralCellsUndetermined BIT,
EpithelialCellAbnormalitiesSquamousIntraepithelialAdenocarcinoma BIT,
NonEpithelialMalignantNeoplasm VARCHAR(50),
HormonalEvaluationCompatible BIT,
HormonalEvaluationIncompatible BIT,
HormonalEvaluationEvaluationNoPossible BIT,
HormonalEvaluationEvaluationNoPossibleCervicalSpecimen BIT,
HormonalEvaluationEvaluationNoPossibleInflammation BIT,
HormonalEvaluationEvaluationNoPossibleInsufficientHistory BIT,
HormonalEvaluationOther VARCHAR(100),
ReqPhysician VARCHAR(100),
Pathologist VARCHAR(100),
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
NurseMedTechAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo)
)

CREATE TABLE LabDental
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
DatePerformed DATE,
UpperLeft1 VARCHAR(2),
UpperLeft2 VARCHAR(2),
UpperLeft3 VARCHAR(2),
UpperLeft4 VARCHAR(2),
UpperLeft5 VARCHAR(2),
UpperLeft6 VARCHAR(2),
UpperLeft7 VARCHAR(2),
UpperLeft8 VARCHAR(2),
LowerLeft1 VARCHAR(2),
LowerLeft2 VARCHAR(2),
LowerLeft3 VARCHAR(2),
LowerLeft4 VARCHAR(2),
LowerLeft5 VARCHAR(2),
LowerLeft6 VARCHAR(2),
LowerLeft7 VARCHAR(2),
LowerLeft8 VARCHAR(2),
UpperRight1 VARCHAR(2),
UpperRight2 VARCHAR(2),
UpperRight3 VARCHAR(2),
UpperRight4 VARCHAR(2),
UpperRight5 VARCHAR(2),
UpperRight6 VARCHAR(2),
UpperRight7 VARCHAR(2),
UpperRight8 VARCHAR(2),
LowerRight1 VARCHAR(2),
LowerRight2 VARCHAR(2),
LowerRight3 VARCHAR(2),
LowerRight4 VARCHAR(2),
LowerRight5 VARCHAR(2),
LowerRight6 VARCHAR(2),
LowerRight7 VARCHAR(2),
LowerRight8 VARCHAR(2),
SignificantFindings VARCHAR(300),
DentistAccountNo INT FOREIGN KEY REFERENCES Doctor(AccountNo),  -- !!!!!!!!! Special Case for Laboratory !!!!!!!!!!
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
)

CREATE TABLE LabDrugTest
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
DatePerformed DATE,
Purpose VARCHAR(50),
TestMethod VARCHAR(50),
TestResult VARCHAR(50),
DrugMetabolite1 VARCHAR(70),
DrugMetabolite2 VARCHAR(70),
DrugMetabolite3 VARCHAR(70),
DrugMetabolite4 VARCHAR(70),
DrugMetabolite5 VARCHAR(70),
DrugMetabolite6 VARCHAR(70),
DrugMetabolite7 VARCHAR(70),
DrugMetabolite8 VARCHAR(70),
DrugMetabolite9 VARCHAR(70),
DrugMetabolite10 VARCHAR(70),
Result1 VARCHAR(50),
Result2 VARCHAR(50),
Result3 VARCHAR(50),
Result4 VARCHAR(50),
Result5 VARCHAR(50),
Result6 VARCHAR(50),
Result7 VARCHAR(50),
Result8 VARCHAR(50),
Result9 VARCHAR(50),
Result10 VARCHAR(50),
Analyst VARCHAR(100),
HeadOfLaboratory VARCHAR(100),
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
NurseMedTechAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo)
)

CREATE TABLE LabFecalysis
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
DatePerformed DATE,
PhysicalCharacteristicsColor VARCHAR(50),
PhysicalCharacteristicsConsistency VARCHAR(50),
ChemicalTestOccultBlood VARCHAR(50),
ChemicalTestBilePigmen VARCHAR(50),
MicroscopicFindingsRedBloodCells VARCHAR(50),
MicroscopicFindingsPussCells VARCHAR(50),
MicroscopicFindingsOthers VARCHAR(50),
MicroscopicFindingsAscaris VARCHAR(50),
MicroscopicFindingsTrichuris VARCHAR(50),
MicroscopicFindingsHookworm VARCHAR(50),
MicroscopicFindingsEntamoebaHystolityca VARCHAR(50),
MicroscopicFindingsCysts VARCHAR(50),
MicroscopicFindingsTrophoziotes VARCHAR(50),
Remarks VARCHAR(200),
Leukocytes VARCHAR(50),
Erythrocytes VARCHAR(50),
FatGlobules VARCHAR(50),
StarchGranules VARCHAR(50),
Bacteria VARCHAR(50),
ReqPhysican VARCHAR(50),
Pathologist VARCHAR(50),
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
NurseMedTechAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo)
)

CREATE TABLE LabHaematology
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
DatePerformed DATE,
BloodType VARCHAR(5),
HGB FLOAT,
HCT FLOAT,
RCT FLOAT,
WBC FLOAT,
PLT FLOAT,
Segmenters FLOAT,
Stabs FLOAT,
Lymphocytes FLOAT,
Eosinophils FLOAT,
Monocytes FLOAT,
Basophils FLOAT,
ClottingTime FLOAT,
BleedingTime FLOAT,
ESR FLOAT,
Blast FLOAT,
RHType FLOAT,
MixedCells FLOAT,
MixedNo FLOAT,
PTT FLOAT,
PT FLOAT,
Control_ FLOAT,
PercActivity FLOAT,
INR FLOAT,
MCV FLOAT,
MCH FLOAT,
MCHC FLOAT,
RDW FLOAT,
MalarialSmear FLOAT,
Neutrophils FLOAT,
ReqPhysician VARCHAR(100),
Pathologist VARCHAR(100),
NurseMedTechAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo)
)

CREATE TABLE LabImmunology
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
DatePerformed DATE,
HepatitisHBsAGPatientCount FLOAT,
HepatitisHBsAGCutOffValue FLOAT,
HepatitisHBsAGRemarks VARCHAR(50),
HepatitisAntiHBSPatientCount FLOAT,
HepatitisAntiHBSCutOffValue FLOAT,
HepatitisAntiHBSRemarks VARCHAR(50),
HepatitisAntiHBCIgCPatientCount FLOAT,
HepatitisAntiHBCIgCCutOffValue FLOAT,
HepatitisAntiHBCIgCRemarks VARCHAR(50),
HepatitisAntiHBePatientCount FLOAT,
HepatitisAntiHBeCutOffValue FLOAT,
HepatitisAntiHBeRemarks VARCHAR(50),
HepatitisAntiHAVIgMPatientCount FLOAT,
HepatitisAntiHAVIgCutOffValue FLOAT,
HepatitisAntiHAVIgRemarks VARCHAR(50),
Findings VARCHAR(300),
ThyroidT3 FLOAT,
ThyroidT4 FLOAT,
ThyroidTSH FLOAT,
ThyroidFT3 FLOAT,
ThyroidFT4 FLOAT,
TumorAFPLiverResult VARCHAR(50),
TumorAFPLiverNormalValues VARCHAR(50),
TumorCEAColonResult VARCHAR(50),
TumorCEAColonNormalValues VARCHAR(50),
TumorCA125OvaryResult VARCHAR(50),
TumorCA125OvaryNormalValues VARCHAR(50),
TumorPSAResult VARCHAR(50),
TumorPSANormalValues VARCHAR(50),
TumorCA153BreastResult VARCHAR(50),
TumorCA153BreastNormalValues VARCHAR(50),
TumorCA199PancreasResult VARCHAR(50),
TumorCA199PancreasNormalValues VARCHAR(50),
TumorBHCGResult VARCHAR(50),
TumorBHCGNormalValues VARCHAR(50),
TumorCA724ColorectalResult VARCHAR(50),
TumorCA724ColorectalNormalValues VARCHAR(50),
HIVTestExamDate DATE,
OtherTestUsed VARCHAR(50),
PhysicianLicenseNo INT,
HIVProficiencyCertNoMedTech INT,
ExpiryDate DATE,
ReqPhysician VARCHAR(100),
Pathologist VARCHAR(100),
NurseMedTechAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo)
)

CREATE TABLE LabPhysicalExam
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
DatePerformed DATE,
PhysicalExamGeneralAppearanceNormal INT,
PhysicalExamSkinNormal INT,
PhysicalExamHeadAndScalpNormal INT,
PhysicalExamEyesNormal INT,
PhysicalExamPupilsNormal INT,
PhysicalExamEarsNormal INT,
PhysicalExamNoseAndSinusesNormal INT,
PhysicalExamMouthThroatNormal INT,
PhysicalExamNeckThyroidNormal INT,
PhysicalExamChestBreastAxillaNormal INT,
PhysicalExamHeartCardiovascularNormal INT,
PhysicalExamLungsRespiratoryNormal INT,
PhysicalExamAbdomenNormal INT,
PhysicalExamBackFlanksNormal INT,
PhysicalExamAnusRectumNormal INT,
PhysicalExamGenitoUrinarySystemNormal INT,
PhysicalExamInquinalsGenitalsNormal INT,
PhysicalExamMusculoSkeletalNormal INT,
PhysicalExamExtremetiesNormal INT,
PhysicalExamReflexesNormal INT,
PhysicalExamNeurologicalNervousNormal INT,
PhysicalExamENTNormal INT,
PhysicalExamGeneralAppearance VARCHAR(50),
PhysicalExamSkin VARCHAR(50),
PhysicalExamHeadAndScalp VARCHAR(50),
PhysicalExamEyes VARCHAR(50),
PhysicalExamPupils VARCHAR(50),
PhysicalExamEars VARCHAR(50),
PhysicalExamNoseAndSinuses VARCHAR(50),
PhysicalExamMouthThroat VARCHAR(50),
PhysicalExamNeckThyroid VARCHAR(50),
PhysicalExamChestBreastAxilla VARCHAR(50),
PhysicalExamHeartCardiovascular VARCHAR(50),
PhysicalExamLungsRespiratory VARCHAR(50),
PhysicalExamAbdomen VARCHAR(50),
PhysicalExamBackFlanks VARCHAR(50),
PhysicalExamAnusRectum VARCHAR(50),
PhysicalExamGenitoUrinarySystem VARCHAR(50),
PhysicalExamInquinalsGenitals VARCHAR(50),
PhysicalExamMusculoSkeletal VARCHAR(50),
PhysicalExamExtremeties VARCHAR(50),
PhysicalExamReflexes VARCHAR(50),
PhysicalExamNeurologicalNervous VARCHAR(50),
PhysicalExamENT VARCHAR(50),
PhysicalExamFarVisionUncorrectedOS20 VARCHAR(20),
PhysicalExamFarVisionUncorrectedOD20 VARCHAR(20),
PhysicalExamFarVisionCorrectedOS20 VARCHAR(20),
PhysicalExamFarVisionCorrectedOD20 VARCHAR(20),
PhysicalExamNearVisionUncorrectedOSJ VARCHAR(20),
PhysicalExamNearVisionUncorrectedODJ VARCHAR(20),
PhysicalExamNearVisionCorrectedOSJ VARCHAR(20),
PhysicalExamNearVisionCorrectedODJ VARCHAR(20),
PhysicalExamIshiharaColor VARCHAR(20),
PhysicalExamColorVision VARCHAR(20),
PhysicalExamLeftAS VARCHAR(20),
PhysicalExamRightAD VARCHAR(20),
PhysicalExamSatisfactoryHearing VARCHAR(20),
PhysicalExamHearingMettsStandardsSTCWCode VARCHAR(20),
PhysicalExamVividness VARCHAR(20),
PhysicalExamBodyBuilt VARCHAR(20),
PhysicalExamItems VARCHAR(20),
PhysicalExamVisualActivityStandard VARCHAR(20),
PhysicalExamFitForLookoutDuties VARCHAR(20),
PhysicalExamSatisfactorySight VARCHAR(20),
PhysicalExamColorVisionStandard VARCHAR(20),
PhysicalExamSatisfactoryPschologycalTest VARCHAR(20),
Recommendations VARCHAR(20),
ExamPhysician VARCHAR(100),
MedicalDirector VARCHAR(100),
NurseMedTechAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo)
)

CREATE TABLE LabPsychology
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
DatePerformed DATE,
Others VARCHAR(100),
IntellectualLevel VARCHAR(50),
Persevering INT,
SelfDisciplined INT,
Enthusiastic INT,
Venturesome INT,
Obedience INT,
CanWithstandIsolationAndBoredome INT,
CanWithstandExtremeNoise INT,
FacesReality INT,
Confidence INT,
TolerantToStress INT,
Relaxed INT,
Realistic INT,
FreeOfJealousy INT,
Adaptable INT,
PracticalMinded INT,
Assertive INT,
Independent INT,
Resourceful INT,
GoalOriented INT,
Psychologist VARCHAR(100)

)

CREATE TABLE LabUltrasound
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
DatePerformed DATE,
UltrasoundFindingsFatalNumber VARCHAR(50),
UltrasoundFindingsPlacentalLocationGrade VARCHAR(50),
UltrasoundFindingsFatalMovement VARCHAR(50),
UltrasoundFindingsFSex VARCHAR(50),
UltrasoundFindingsFatalLie VARCHAR(50),
UltrasoundFindingsAmnioticFluid VARCHAR(50),
UltrasoundFindingsCardiacActivity VARCHAR(50),
UltrasoundMeasurementLmpWeeksCRL VARCHAR(50),
UltrasoundMeasurementLmpWeeksCRLWeeks VARCHAR(50),
UltrasoundMeasurementLmpWeeksBPD VARCHAR(50),
UltrasoundMeasurementLmpWeeksBPDWeeks VARCHAR(50),
UltrasoundMeasurementLmpWeeksEFBW VARCHAR(50),
UltrasoundMeasurementLmpWeeksAverageGestationalAge VARCHAR(50),
UltrasoundMeasurementLmpWeeksEDC VARCHAR(50),
UltrasoundMeasurementLmpWeeksFL VARCHAR(50),
UltrasoundMeasurementLmpWeeksFLWeeks VARCHAR(50),
UltrasoundMeasurementLmpWeeksAC VARCHAR(50),
UltrasoundMeasurementLmpWeeksACWeeks VARCHAR(50),
Findings VARCHAR(300),
Sonologist VARCHAR(100),
NurseMedTechAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo)
)

CREATE TABLE LabUrinalysis
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
DatePerformed DATE,
PhysicalExaminationColor VARCHAR(50),
PhysicalExaminationTransparency VARCHAR(50),
PhysicalExaminationReaction VARCHAR(50),
PhysicalExaminationSpecificGravity VARCHAR(50),
MicroscopicExaminationPusCells VARCHAR(50),
MicroscopicExaminationRBC VARCHAR(50),
MicroscopicExaminationEpithelialCells VARCHAR(50),
MicroscopicExaminationMucusThreads VARCHAR(50),
MicroscopicExaminationBacteria VARCHAR(50),
MicroscopicExaminationYeastCells VARCHAR(50),
MicroscopicExaminationAmorphousUrates VARCHAR(50),
MicroscopicExaminationAmorphous VARCHAR(50),
MicroscopicExaminationCalciumOxalates VARCHAR(50),
MicroscopicExaminationTriplePhosphate VARCHAR(50),
MicroscopicExaminationUricAcid VARCHAR(50),
MicroscopicExaminationOthers VARCHAR(50),
ChemicalExaminationProtein VARCHAR(50),
ChemicalExaminationSugar VARCHAR(50),
ChemicalExaminationKetone VARCHAR(50),
ChemicalExaminationBlood VARCHAR(50),
ChemicalExaminationPus VARCHAR(50),
ChemicalExaminationRBC VARCHAR(50),
ChemicalExaminationNitrites VARCHAR(50),
ChemicalExaminationBilirubin VARCHAR(50),
ChemicalExaminationOthers VARCHAR(50),
OtherExaminationPregnancyTest VARCHAR(50),
OtherExaminationSpecimen VARCHAR(50),
OtherExaminationMethod VARCHAR(100),
OtherExaminationRemarks VARCHAR(300),
ReqPhysician VARCHAR(100),
Pathologist VARCHAR(100),
NurseMedTechAccountNo INT FOREIGN KEY REFERENCES NurseMedTech(AccountNo)
)

CREATE TABLE LabXray
(
CaseNo INT NOT NULL IDENTITY(10000,1) PRIMARY KEY,
PatientAccountNo INT FOREIGN KEY REFERENCES Patient(AccountNo),
DatePerformed DATE,
PlateNo INT,
ClinicDiag VARCHAR(50),
Code INT,
Examination VARCHAR(50),
ChestPA BIT,
Extremities BIT,
APLV BIT,
SpotView BIT,
LateralView BIT,
Others BIT,
Image1 VARBINARY(MAX),
Image2 VARBINARY(MAX),
Image3 VARBINARY(MAX),
Result VARCHAR(300),
Impression VARCHAR(300),
Remarks VARCHAR(300),
ReqPhysician VARCHAR(100),
Radiologist VARCHAR(100)
)

;


------------------------------=================== TEST QUERIES ===================---------------------------------

INSERT INTO Patient (Username, Pass, Fname, Lname, Mname, Gender, DoB, CivilStatus, Nationality, Address1, City, ZIP, TelNo, MobileNo, Company, Occupation, Religion, Remarks)
VALUES ('tonystark1', 'error02', 'Tony', 'Stark', '', 'Male', '1995-12-25', 'Single', 'American', '10880 Malibu Point', 'Malibu', '90265', '', '', 'Stark Industries', 'CEO / Superhero', '', 'Email: ironman@starkindustries.com' );

INSERT INTO NurseMedTech (Pass, RNMTName, Fname, Mname, Lname, DoB, Gender, Address1, Address2, Address3, ContactNo, Email, PRCLicenseNo, NM)
VALUES ('nursemedtechpass', 'Nurse Seri', 'Jkjhsdj', 'Khgghs', 'Gysdg', '1995-08-10', 'Male', '36 Dahlia St.,', 'Pembo', 'Makati City', '+639267412560', 'sdvgsdfsd@gmail.com', '245545457', 'N' );

INSERT INTO Doctor (Pass, Department, MDname, Fname, Mname, Lname, DoB, Gender, Address1, Address2, Address3, ContactNo, Email, PRCLicenseNo)
VALUES ('doctorpass', '22', 'Dr.Lee, Joseph', 'Joseph', '', 'Lee', '1995-12-25', 'Male', '', '', '', '', '', '0123456789' );

INSERT INTO Employee(Pass, Fname, Mname, Lname, DoB, Gender, Address1, Address2, Address3, ContactNo, Email, Position)
VALUES ('error4', 'Pau', 'Madrid', 'Muyc', '1995-08-10', 'Male', '36 Dahlia St.,', 'Pembo', 'Makati City', '+639267412560', 'alfredpaulusmuyco@gmail.com', 'Receptionist' );

INSERT INTO AdminAcc(Username, Pass, Fname, Lname, AdminRole)
VALUES ('2011112067', 'error9000', 'Alfred Paulus', 'Muyco', 4)

INSERT INTO PatientAppointmentRequest (PatientAccountNo, RequestDate, RequestTime, Symptoms, Remarks, ContactNo)
VALUES ('100001', '2016-06-24', '10:30:00', 'Headache', 'Internal Medicine', '+639267412560' );

INSERT INTO ScheduledCheckUps (PatientAccountNo, ScheduleDate, ScheduleTime, DoctorAccountNo)
VALUES ('100001', '2016-06-24', '10:30:00', '1000' );

--INSERT INTO MedicalRecordConsultation (ConsultationDateTime, PatientAccountNo, ChiefComplaint, Remarks, ExaminationAdvice, ExaminationResults, DiagnosisType, DiagnosisResults, TreatmentPlan, Prescription, CaseSummary, ReferredTo, DoctorAccountNo)
--VALUES (CONVERT(DATE,GETDATE(),101), CONVERT(TIME,GETDATE()), '100001', 'asdasfgafrgadg', 'sththsfhtsh', 'sfthsfhtfhsfh', 'sthstfhtfhst', 'tyiuiyoito', 'toitororu', 'ryuoiruyo', 'ryuoyruo', 'ryuouyroyr', 'ryuouryoyor', '1002');

INSERT INTO PatientQueue (PatientQueueNo, QueueType, QueueDate)
VALUES ('3', 'INIT', GETDATE())

INSERT INTO MedicalRecordConsultation (ConsultationDateTime, PatientAccountNo, ChiefComplaint, Remarks, ExaminationAdvice, ExaminationResults, DiagnosisType, DiagnosisResults, TreatmentPlan, Prescription, CaseSummary, ReferredTo, DoctorAccountNo)
VALUES (GETDATE(), '100001', 'asdasfgafrgadg', 'sththsfhtsh', 'sfthsfhtfhsfh', 'sthstfhtfhst', 'tyiuiyoito', 'toitororu', 'ryuoiruyo', 'ryuoyruo', 'ryuouyroyr', 'ryuouryoyor', '1000');

INSERT INTO VitalSigns(VitalSignsDateTime, PatientAccountNo, NurseMedTechAccountNo, PulseRate, RespiratoryRate, 
TemperatureDegC, HeightCm, WeightKg, BloodPressuremmHg)
VALUES ('2016-06-24 10:30:00', '100003', '4000', '60', '15', '37.2', '183', '100', '130/85')

INSERT INTO LabAudiometry (DatePerformed,AirRightEar250Hz,AirRightEar500Hz,AirRightEar750Hz,AirRightEar1000Hz,AirRightEar1500Hz,
AirRightEar2000Hz,AirRightEar3000Hz,AirRightEar4000Hz,AirRightEar6000Hz,AirRightEar8000Hz,AirLeftEar250Hz,AirLeftEar500Hz,
AirLeftEar750Hz,AirLeftEar1000Hz,AirLeftEar1500Hz,AirLeftEar2000Hz,AirLeftEar3000Hz,AirLeftEar4000Hz,AirLeftEar6000Hz,
AirLeftEar8000Hz,Hearing,Remarks,RequestDoctor,Audiologist,PatientAccountNo,NurseMedTechAccountNo)
VALUES ('2016-06-24 10:30:00',10,20,30,40,50,
60,70,80,90,100,110,120,
130,135,140,150,10,20,30,
40,'Normal','Normal','Dr. Strange', 'Dr. Helen Cho', 100002,4000)

INSERT INTO PatientAppointmentRequest (RequestDate,RequestTime,Symptoms,Remarks,ContactNo,PatientAccountNo)
VALUES ('2016-06-24', ' 10:30:00', 'Headache', 'I cant sleep', '09546464646546465', '100001' )

INSERT INTO BillingTransactions(TransactionNo, TransactionDateTime, ServiceItem, Price, PatientID, EmployeeID)
VALUES (@TransactionNo, @TransactionDateTime, @ServiceItem, @Price, @PatientID, @EmployeeID)

INSERT INTO PatientQueue (PatientQueueNo, QueueType, QueueDate, PatientID)
VALUES ('2', 'Y', '2016-08-07', '100003')

INSERT INTO Departments(DepartmentCode, DepartmentName)
VALUES ('ALLERG', 'ALLERGOLOGY')

INSERT INTO DoctorsSchedule(Sunday, SundayStart, SundayEnd, Monday, MondayStart, MondayEnd, 
Tuesday, TuesdayStart, TuesdayEnd, Wednesday, WednesdayStart, WednesdayEnd, Thursday, ThursdayStart, ThursdayEnd, 
Friday, FridayStart, FridayEnd, Saturday, SaturdayStart, SaturdayEnd, DoctorAccountNo)
VALUES ('1', '12:00', '14:00', '1', '10:00', '15:30', 
'1', '13:00', '20:00', '1', '10:00', '15:30', '1', '13:00', '20:00', 
'1', '10:00', '15:30', '0', '00:00', '00:00', '1002')

INSERT INTO TransactionDetail(TransactionName, TransactionCode, TransactionPrice)
VALUES ('Laboratory - Haematology', 'LabHaematology', '100.25')

;


UPDATE PatientQueue SET Registered = 'N' WHERE QueueID = 1

UPDATE Doctor SET Department = 3 WHERE AccountNo = 1002

UPDATE NurseMedTech SET RNMTName = 'Foo, Joy R.N.' WHERE AccountNo = 4000

UPDATE NurseMedTech SET NM = 'N' WHERE AccountNo = 4000

UPDATE AdminAcc SET AdminRole = 4 WHERE Username = 2011112067

UPDATE TransactionDetail SET TransactionPrice = 100.75 WHERE TransactionDetailID = 10

UPDATE DoctorsSchedule SET Sunday = '1', SundayStart = '', SundayEnd = '', Monday = '', MondayStart = '', MondayEnd = '', 
Tuesday = '', TuesdayStart = '', TuesdayEnd = '', Wednesday = '', WednesdayStart = '', WednesdayEnd = '', Thursday = '', ThursdayStart = '', ThursdayEnd = '', 
Friday = '', FridayStart = '', FridayEnd = '', Saturday = '', SaturdayStart = '', SaturdayEnd = '' WHERE DoctorAccountNo = '1004'

;



SELECT * FROM Patient WHERE Username = 'alfredpaulusmuyco1' AND Pass = 'fg]vGp'

SELECT * FROM Patient WHERE Username = 'tonystark1' AND Pass = 'error02'

--SELECT [e1.ScheduleDate] = CONVERT(VARCHAR(11),GETDATE(),106), e1.ScheduleTime, e2.Department, e2.MDname FROM ScheduledCheckUps e1 INNER JOIN Doctor e2 ON e1.DoctorAccountNo=e2.AccountNo 
--WHERE PatientAccountNo = 100001
SELECT CONVERT(VARCHAR(11),ScheduleDate,101) AS 'Schedule Date', e1.ScheduleTime AS 'Schedule Time', e2.Department, e2.MDname AS 'Doctor'
FROM ScheduledCheckUps e1 INNER JOIN Doctor e2 ON e1.DoctorAccountNo=e2.AccountNo

SELECT e1.ConsultationDateTime, e1.Prescription, e1.ChiefComplaint, e2.MDName 
FROM MedicalRecordConsultation e1 INNER JOIN Doctor e2 ON e1.DoctorAccountNo=e2.AccountNo WHERE ([PatientAccountNo] = 100001) ORDER BY [ConsultationDateTime] DESC

SELECT e1.RequestDate, e1.RequestTime, e1.Symptoms, e1.Remarks, e1.ContactNo, e2.Fname, e2.Lname, e2.Gender 
FROM PatientAppointmentRequest e1 INNER JOIN Patient e2 ON e1.PatientAccountNo = e2.AccountNo

SELECT [e1.ScheduleDate] = CONVERT(VARCHAR(11),ScheduleDate,101), e1.ScheduleTime, e2.Department, e2.MDname, e3.Fname, e3.Lname, e3.Gender 
FROM ScheduledCheckUps e1 INNER JOIN Doctor e2 ON e1.DoctorAccountNo=e2.AccountNo INNER JOIN Patient e3 ON e1.PatientAccountNo=e3.AccountNo

SELECT IDENT_CURRENT('MedicalRecordConsultation')+1 AS id

SELECT DATEDIFF(hour,DoB,GETDATE())/8766 AS Age FROM Patient WHERE AccountNo = 100001;

SELECT *, CONVERT(VARCHAR(11),DoB,101) AS Bdate, DATEDIFF(hour,DoB,GETDATE())/8766 AS Age FROM Patient WHERE AccountNo = 100001;

SELECT AccountNo AS 'Patient ID No.', Fname AS 'First Name', Mname AS 'Middle Name', Lname AS 'Last Name', Gender, DoB = CONVERT(VARCHAR(11),DoB,101), Username, Fname + ' ' + Mname + ' ' + Lname AS 'Full Name' FROM Patient 
WHERE (Fname LIKE '%alf%') OR (Mname LIKE '%alf%') OR (Lname LIKE '%alf%')

SELECT Fname + ' ' + Mname + ' ' + Lname AS 'FullName' FROM Patient
WHERE Fname + ' ' + Mname + ' ' + Lname LIKE '%Alfred Paulus Madrid Muyco%'

SELECT IDENT_CURRENT('PatientQueue')+1 AS CurrentPatientQueueNo

SELECT TOP 1 CONVERT(VARCHAR(11),QueueDate,101) AS QueueDate, PatientQueueNo FROM PatientQueue WHERE QueueType = 'Y' ORDER BY QueueID DESC

SELECT TOP 1 e1.*, e2.Fname, e2.Lname FROM PatientQueue e1 INNER JOIN Patient e2 ON e1.PatientID = e2.AccountNo 
WHERE (QueueType = 'Y' AND Registered = 'N') ORDER BY QueueID

SELECT e1.*, e2.MDName, e2.Department FROM DoctorsSchedule e1 INNER JOIN Doctor e2 ON e1.DoctorAccountNo = e2.AccountNo WHERE Department = 3 AND Monday = 1

SELECT TOP 1 AccountNo FROM Doctor ORDER BY AccountNo DESC

;



DELETE FROM Doctor WHERE AccountNo = '1000'

DELETE FROM PatientQueue WHERE QueueID = 7

DELETE FROM Patient WHERE AccountNo > 100001

DELETE FROM BillingTransactions WHERE BillingID >= 2

DELETE FROM TransactionDetail WHERE TransactionCode = 'LabCytopathology'

;


SELECT * FROM AdminAcc
SELECT * FROM Patient
SELECT * FROM Doctor
SELECT * FROM NurseMedTech
SELECT * FROM Employee

SELECT * FROM ScheduledCheckUps
SELECT * FROM PatientAppointmentRequest
SELECT * FROM PatientQueue
SELECT * FROM Registration
SELECT * FROM BillingTransactions
SELECT * FROM DoctorsSchedule
SELECT * FROM TransactionDetail

SELECT * FROM Departments
SELECT * FROM MedicalRecordConsultation
SELECT * FROM VitalSigns

SELECT * FROM LabAudiometry
SELECT * FROM LabBloodChemistry
SELECT * FROM LabCTScan
SELECT * FROM LabCytopathology
SELECT * FROM LabDental
SELECT * FROM LabDrugTest
SELECT * FROM LabFecalysis
SELECT * FROM LabHaematology
SELECT * FROM LabImmunology
SELECT * FROM LabPhysicalExam
SELECT * FROM LabPsychology
SELECT * FROM LabUltrasound
SELECT * FROM LabUrinalysis
SELECT * FROM LabXray

;

--DROP TABLE AdminAcc
--DROP TABLE Patient
--DROP TABLE Doctor
--DROP TABLE NurseMedTech
--DROP TABLE Employee
--DROP TABLE ScheduledCheckUps
--DROP TABLE PatientAppointmentRequest
--DROP TABLE PatientQueue
--DROP TABLE Registration
--DROP TABLE BillingTransactions
--DROP TABLE DoctorsSchedule
--DROP TABLE TransactionDetail
--DROP TABLE Departments
--DROP TABLE MedicalRecordConsultation
--DROP TABLE VitalSigns
--DROP TABLE LabAudiometry
--DROP TABLE LabBloodChemistry
--DROP TABLE LabCTScan
--DROP TABLE LabCytopathology
--DROP TABLE LabDental
--DROP TABLE LabDrugTest
--DROP TABLE LabFecalysis
--DROP TABLE LabHaematology
--DROP TABLE LabImmunology
--DROP TABLE LabPhysicalExam
--DROP TABLE LabPsychology
--DROP TABLE LabUltrasound
--DROP TABLE LabUrinalysis
--DROP TABLE LabXray

;



--ALTER TABLE NurseMedTech 
--ADD NM CHAR

--ALTER TABLE Doctor 
--ADD FOREIGN KEY (Department) REFERENCES Departments(DepartmentID)

--ALTER TABLE Doctor 
--ALTER COLUMN Department INT

--ALTER TABLE AdminAcc
--ADD AdminRole INT

;
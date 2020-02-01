ALL_SUBSYSTEMS+=ExoDiBosonResonances
subdirs_src_ExoDiBosonResonances = src_ExoDiBosonResonances_EDBRWLeptonicProducer src_ExoDiBosonResonances_EDBRTreeMaker src_ExoDiBosonResonances_EDBRCommon src_ExoDiBosonResonances_EDBRJets
ALL_PACKAGES += ExoDiBosonResonances/EDBRCommon
subdirs_src_ExoDiBosonResonances_EDBRCommon := src_ExoDiBosonResonances_EDBRCommon_python src_ExoDiBosonResonances_EDBRCommon_plugins
ifeq ($(strip $(PyExoDiBosonResonancesEDBRCommon)),)
PyExoDiBosonResonancesEDBRCommon := self/src/ExoDiBosonResonances/EDBRCommon/python
src_ExoDiBosonResonances_EDBRCommon_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/ExoDiBosonResonances/EDBRCommon/python)
PyExoDiBosonResonancesEDBRCommon_files := $(patsubst src/ExoDiBosonResonances/EDBRCommon/python/%,%,$(wildcard $(foreach dir,src/ExoDiBosonResonances/EDBRCommon/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyExoDiBosonResonancesEDBRCommon_LOC_USE := self  
PyExoDiBosonResonancesEDBRCommon_PACKAGE := self/src/ExoDiBosonResonances/EDBRCommon/python
ALL_PRODS += PyExoDiBosonResonancesEDBRCommon
PyExoDiBosonResonancesEDBRCommon_INIT_FUNC        += $$(eval $$(call PythonProduct,PyExoDiBosonResonancesEDBRCommon,src/ExoDiBosonResonances/EDBRCommon/python,src_ExoDiBosonResonances_EDBRCommon_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyExoDiBosonResonancesEDBRCommon,src/ExoDiBosonResonances/EDBRCommon/python))
endif
ALL_COMMONRULES += src_ExoDiBosonResonances_EDBRCommon_python
src_ExoDiBosonResonances_EDBRCommon_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ExoDiBosonResonances_EDBRCommon_python,src/ExoDiBosonResonances/EDBRCommon/python,PYTHON))
ALL_PACKAGES += ExoDiBosonResonances/EDBRJets
subdirs_src_ExoDiBosonResonances_EDBRJets := src_ExoDiBosonResonances_EDBRJets_python
ifeq ($(strip $(PyExoDiBosonResonancesEDBRJets)),)
PyExoDiBosonResonancesEDBRJets := self/src/ExoDiBosonResonances/EDBRJets/python
src_ExoDiBosonResonances_EDBRJets_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/ExoDiBosonResonances/EDBRJets/python)
PyExoDiBosonResonancesEDBRJets_files := $(patsubst src/ExoDiBosonResonances/EDBRJets/python/%,%,$(wildcard $(foreach dir,src/ExoDiBosonResonances/EDBRJets/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyExoDiBosonResonancesEDBRJets_LOC_USE := self  
PyExoDiBosonResonancesEDBRJets_PACKAGE := self/src/ExoDiBosonResonances/EDBRJets/python
ALL_PRODS += PyExoDiBosonResonancesEDBRJets
PyExoDiBosonResonancesEDBRJets_INIT_FUNC        += $$(eval $$(call PythonProduct,PyExoDiBosonResonancesEDBRJets,src/ExoDiBosonResonances/EDBRJets/python,src_ExoDiBosonResonances_EDBRJets_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyExoDiBosonResonancesEDBRJets,src/ExoDiBosonResonances/EDBRJets/python))
endif
ALL_COMMONRULES += src_ExoDiBosonResonances_EDBRJets_python
src_ExoDiBosonResonances_EDBRJets_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ExoDiBosonResonances_EDBRJets_python,src/ExoDiBosonResonances/EDBRJets/python,PYTHON))
ALL_PACKAGES += ExoDiBosonResonances/EDBRTreeMaker
subdirs_src_ExoDiBosonResonances_EDBRTreeMaker := src_ExoDiBosonResonances_EDBRTreeMaker_test src_ExoDiBosonResonances_EDBRTreeMaker_plugins
ALL_COMMONRULES += src_ExoDiBosonResonances_EDBRTreeMaker_test
src_ExoDiBosonResonances_EDBRTreeMaker_test_parent := ExoDiBosonResonances/EDBRTreeMaker
src_ExoDiBosonResonances_EDBRTreeMaker_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_ExoDiBosonResonances_EDBRTreeMaker_test,src/ExoDiBosonResonances/EDBRTreeMaker/test,TEST))
ALL_PACKAGES += ExoDiBosonResonances/EDBRWLeptonicProducer
subdirs_src_ExoDiBosonResonances_EDBRWLeptonicProducer := src_ExoDiBosonResonances_EDBRWLeptonicProducer_plugins
ALL_SUBSYSTEMS+=JMEAnalysis
subdirs_src_JMEAnalysis = src_JMEAnalysis_JetToolbox
ALL_PACKAGES += JMEAnalysis/JetToolbox
subdirs_src_JMEAnalysis_JetToolbox := 
ALL_PACKAGES += NNKit/misc
subdirs_src_NNKit_misc := src_NNKit_misc_include
ALL_SUBSYSTEMS+=L1Prefiring
subdirs_src_L1Prefiring = src_L1Prefiring_EventWeightProducer
ALL_PACKAGES += L1Prefiring/EventWeightProducer
subdirs_src_L1Prefiring_EventWeightProducer := src_L1Prefiring_EventWeightProducer_python src_L1Prefiring_EventWeightProducer_plugins
ifeq ($(strip $(PyL1PrefiringEventWeightProducer)),)
PyL1PrefiringEventWeightProducer := self/src/L1Prefiring/EventWeightProducer/python
src_L1Prefiring_EventWeightProducer_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/L1Prefiring/EventWeightProducer/python)
PyL1PrefiringEventWeightProducer_files := $(patsubst src/L1Prefiring/EventWeightProducer/python/%,%,$(wildcard $(foreach dir,src/L1Prefiring/EventWeightProducer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PyL1PrefiringEventWeightProducer_LOC_USE := self  
PyL1PrefiringEventWeightProducer_PACKAGE := self/src/L1Prefiring/EventWeightProducer/python
ALL_PRODS += PyL1PrefiringEventWeightProducer
PyL1PrefiringEventWeightProducer_INIT_FUNC        += $$(eval $$(call PythonProduct,PyL1PrefiringEventWeightProducer,src/L1Prefiring/EventWeightProducer/python,src_L1Prefiring_EventWeightProducer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PyL1PrefiringEventWeightProducer,src/L1Prefiring/EventWeightProducer/python))
endif
ALL_COMMONRULES += src_L1Prefiring_EventWeightProducer_python
src_L1Prefiring_EventWeightProducer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_L1Prefiring_EventWeightProducer_python,src/L1Prefiring/EventWeightProducer/python,PYTHON))
ALL_SUBSYSTEMS+=NNKit
subdirs_src_NNKit = src_NNKit_CommonTools src_NNKit_FatJetNN src_NNKit_FatJetInputs src_NNKit_BTagHelpers src_NNKit_data src_NNKit_misc
ALL_PACKAGES += NNKit/BTagHelpers
subdirs_src_NNKit_BTagHelpers := src_NNKit_BTagHelpers_src
ALL_PACKAGES += NNKit/CommonTools
subdirs_src_NNKit_CommonTools := src_NNKit_CommonTools_src
ALL_PACKAGES += NNKit/FatJetInputs
subdirs_src_NNKit_FatJetInputs := src_NNKit_FatJetInputs_src
ALL_PACKAGES += NNKit/FatJetNN
subdirs_src_NNKit_FatJetNN := src_NNKit_FatJetNN_test src_NNKit_FatJetNN_src src_NNKit_FatJetNN_plugins
ALL_COMMONRULES += src_NNKit_FatJetNN_test
src_NNKit_FatJetNN_test_parent := NNKit/FatJetNN
src_NNKit_FatJetNN_test_INIT_FUNC += $$(eval $$(call CommonProductRules,src_NNKit_FatJetNN_test,src/NNKit/FatJetNN/test,TEST))
ALL_PACKAGES += NNKit/data
subdirs_src_NNKit_data := 
ALL_SUBSYSTEMS+=data
subdirs_src_data = 

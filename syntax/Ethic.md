---
title: "Social Justice on Residential Solar"
author: "Yohan Min"
date: "June 12, 2019"
output:
  html_document:
    df_print: paged
    keep_md: yes
  word_document: default
  pdf_document: default
bibliography: ../../citation.bib
endnote: no
header-includes:
- \usepackage{setspace}\doublespacing
- \usepackage{float}
- \floatplacement{figure}{H}
- \usepackage[fontsize=12pt]{scrextend}
csl: journal-of-construction-engineering-and-management.csl
always_allow_html: yes
---



# Abstract 

Climate change has encouraged the development of clean energy polices. As a result, current rapid transition of energy systems has the potential to significantly impact the way communities respond undesirable events. Energy divide is one of the examples, which would be the result of uneven distribution of the clean energy technologies. Empirical analyses of residential solar in Seattle, revealed the pattern of uneven distribution. Social justice was questioned in this context because the uneven distribution confirmed that there were certain communities left out from the clean energy technologies while decentralized energy systems such as residential solar are more reliable in response to climate change. Prudentialism ethics by reconciliation of the current efficient oriented policies and social equity, could approach the issue. Resilience was discussed by focusing on "preparation" and "availability" of energy systems. Vulnerability was explained in terms of energy dependency and situational conditions. Furthermore, desirable characteristics of resilient energy systems were identified as integrated energy system (IES) and distributed energy resources (DERs) featuring integrated energy diversity and decentralized energy systems. Finally, community solar could encourage the social equity by increasing participation of vulnerable communities in clean energy technologies or those, who were unable to host solar systems. It is because community solar satisfies both utilitarianism and social justice by taking advantage of two features - IES and DERs - while taking into account energy dependency in a situational conditions and preparatory resilience in favor of energy availability. 

# Introduction

Undesirable challenges and events such as natural disasters and climate change have enhanced deploying sustainable and resilient energy infrastructures. It is because reliability of energy supply has proven to be important especially during emergency situations when, for example, medical services are in high demand. Furthermore, about 1.1 billion people lack access to electricity and 52 billion USD annual investment is needed for the Sustainable Development Goals (SDGs) [@ieaEnergyAccessOutlook2017]. Lack of electricity affects more vulnerable people such as patients. Hurricane Maria caused additional deaths in Puerto Rico, especially to those who relied on respirators powered by electricity in 2017 [@roblesOfficialTollPuerto2017]. It is known that Maria incurred the longest blackout with more than 100 days in the US history [@irfanPuertoRicoUS2018]. Respiratory patients are more vulnerable to power outages that mortality and respiratory hospital admissions increased significantly during the blackout [@linHealthImpactNew2011]. These studies and reports show that reliable power supply is essential to those vulnerable communities. 

To address climate change affecting people, it is necessary to have reliable energy services evenly distributed to all over the communities, particularly to those more vulnerable. Decentralized energy system is more reliable in terms of energy access and the low carbon challenges [@goldthauRethinkingGovernanceEnergy2014]. For example, micro-grids (decentralized energy system) at community level lead to more robust power systems [@wangVulnerabilityRobustnessCivil2017]. Integration of interdependent infrastructures including, but not limited to energy, water, and telecommunication, also bring out the better mitigation in response to extreme weather [@zimmermanConceptualModelingFramework2017]. 


## Energy divide 

Clean energy technologies (e.g., solar panels and electric vehicles) have been introduced and utilized all over the world seeking more reliable and sustainable energy systems in response to climate change. For instance, solar panel installations have increased on residential, commercial buildings and utility-scale farms encouraged by clean energy policies and incentives such as federal tax credits. This rapid transition to the new energy system could lead to undesirable impacts on some communities as shown in the case of telecommunication where the digital divide has excluded vulnerable groups of people from knowledge-based societies and economies [@chenGLOBALDIGITALDIVIDE2004]. If these deeply transformative changes in the power sector are not handled properly, an emerging electrical divide like the digital divide could appear [@capertonElectricalDivideNew2013]. In fact, European Union (EU) has already experienced that the uneven deployment of energy poverty and social distribution are correlated where spatial and social distribution is highly uneven [@bouzarovskiEnergyDivideIntegrating2017]. Committed leadership to implement a new policy in regard to the transition is required to avoid the uneven distribution of the power service.

## Social equity on residential solar in Seattle

Residential solar installations have rapidly increased in recent years with advancement of the clean energy policies and associated incentives. While numerous studies have been performed on various aspects of the policies designed to support solar installations, there is still a dearth of studies aimed at investigating the impact of such policies on the social equity. Two unanswered questions have emerged: (1) were there certain communities inadvertently left out from incentive opportunities? and (2) do those current policies help to encourage the social equity? To answer these questions, an empirical study performed a spatial analysis of the distribution of solar panel installed-buildings (residential solar hereafter) in terms of housing and socioeconomic characteristics based on census track in Seattle. In particular, this study explored patterns of residential house units (single family and multifamily) in terms of residential solar by examining spatial clustering, associations among variables through several data sources. The examined data entails the socioeconomic and housing characteristics based on the American Community Survey of the census.
 
Hotspot analysis identified the variables with respect to solar installations. An Intrinsic Auto-Regressive (ICAR) model addressed spatial autocorrelation using Bayesian method, Integrated Nested Laplace Approximations (INLA), where $Y_i$ is the number of residential solar, $E_i$ is the expected number of residential solar, $I_1$ and $I_2$ are the covariates, $S_i$ is the spatial random effect and $\epsilon_i$ is the non-spatial random effect, all in terms of a census track *i*. 

$$
\begin{aligned}
Y_i |\beta_{0},\beta_{1},\beta_{2},S_i,\epsilon_i & \sim_{ind} \mbox{Poisson}(E_i \mbox{e}^{\beta_{0}+\beta_{1}I_{1i}+\beta_{2}I_{2i}} \mbox{e}^{S_i + \epsilon_i}),\\ 
\epsilon_i | \sigma_\epsilon^{2} & \sim_{iid} \mbox{N}(0,\sigma_\epsilon^{2}),\\ 
S_1,...,S_n | \sigma_s^{2} & \sim ~~~ \mbox{ICAR}(\sigma_s^{2}). 
\end{aligned}
$$

Geographically weighted regression (GWR) identified sensitivities of the concerned covariates to census tracts in terms of solar installations where $\beta_1$ and $\beta_2$ are coefficient estimators, and $X_1$ and $X_2$ are the covariates in terms of a census track *s*. 
 
$$
\begin{aligned}
Y(s) = E(s)\mbox{e}^{(\beta_{0}+\beta_{1}(s)X_1(s)+\beta_{2}(s)X_2(s)+\epsilon(s))}
\end{aligned}
$$

Factor and cluster analyses revealed that how housing stability (homeownership), economic status, and income inequality are correlated with the solar installation. The analyses show that residential solar installations are (1) mostly correlated to housing stability (single family house unit and housing tenure) and (2) moderately correlated to economic status (income level and house value). The results answer the questions that there are certain communities left out from using renewable energy technologies due to the lack of resources (i.e., housing and finance). Since these communities are hard to join the incentivized programs such as 30% federal tax credits, it is necessary to address the issue by coming up with policies such that encouraging the underserved communities to take advantage of the clean energy technologies and incentives. 

<div class="figure">
<img src="./stat_files/figure-html/unnamed-chunk-6-1.png" alt="Residential solar density in Seattle" width="496" />
<p class="caption">Residential solar density in Seattle</p>
</div>


In addition, cluster and GWR model identified communities in Seattle more influenced by each socio-economic characteristic. As a result, three categorized groups in terms of housing stability and economic status were identified in addition to neighbors where residential solar installations are more sensitive to the economic status and the housing stability. 


<div class="figure">
<img src="./stat_files/figure-html/unnamed-chunk-22-1.png" alt="Three clustered regions and GWR residuals" width="645" />
<p class="caption">Three clustered regions and GWR residuals</p>
</div>


The results identified the underserved communities under limited resources (e.g., those who rent multi-family houses and have less finance to install solar systems) confirming the uneven distribution of technologies and raising the necessity of addressing the issues for the equitable distribution and access to clean energy.


# Ethical concerns 

The previous empirical analyses confirm that currently, there are communities left out from the benefit of one of clean energy technologies, residential solar. This raises an issue on social justice. From the utilitarian perspective, it is more efficient to use limited resources to maximize the global benefits thus, current distribution of residential solar as a result of the present clean energy policies, seems to get along with this ethical principle as opposed to the virtual ethic and social justice. In short, current clean energy policies or incentives are based on utilitarian ethics. For example, rebates, federal tax credits, performance payments, property tax exemptions, and sale tax exemptions are for those who are able to finance solar systems in addition to possessing their own houses. Opportunities to take part in the incentives are hard for those who can't afford clean energy technologies. 

To remedy the conflict of the two ethical principles - utilitarianism and social justice - reflective equilibrium needs to be constructed. There are two extremes, personal evaluation and ethical theory for the ethics in the built environment [@foxEthicsBuiltEnvironment2012]. The reconciliation of the two extreme ends could be discussed in reflective equilibrium, which takes into account of the procedure of moving between the personal evaluation and the ethical theory. John Rawls (1972) introduced the concept of reflective equilibrium as a method to draw attention rather than applying it. The method of responsive cohesion could refer to reflective equilibrium such that the both sides are working or cling together through a process of adjustment, adaptation, and reconciling their different objectives and challenges. Responsive cohesion features reconciliation of personal evaluation and ethical theory as well. This is similar to the relationship between theory and observations in terms of epistemology and science, where both theory and observations are interdependent and systemically giving feedbacks each other to emerge in a form of dynamic change. Responsive Cohesion is a kind of relation between 'things' (objects, ideas, people, processes or systems) and other 'things' or contexts, in which cohesion is achieved by the way they respond to each other [@foxEthicsBuiltEnvironment2012]. 

Responsive cohesion, in this context, could be associated with prudentialism ethics by taking advantage of a process of reconciling the different objectives of the both extreme principles. Prudentialism is a moral principle in accordance with precaution to prevent a specific negative effect. Prudentialism also considers power dynamics from a pragmatic aspect. Prudentialism ethics could be, in part, called responsive cohesion because it features reconciliation of the extreme ends by avoiding the negative effects. Prudentialism can accommodate several ethical principles to seek the reconciliation of the different ethical principles.

The prudentialism ethics, thus, could address the issue by reconciling efficiency oriented policies and social equity viewpoints to avoid the particular negative effect, which is a uneven residential solar distribution or energy divide. It is, first, necessary to understand energy resilience in terms of vulnerability in response to climate change before discussing how to reconcile the two extreme objectives - an efficiency oriented goal and social equity. 


## Resilience 

Climate change and its impact on urban systems have raised questions of how to improve resilient systems especially the ones related to energy. Some of researchers introduced indexes related to resilience for analyses, and the others created mathematical functions to interpret the current phenomenon and simulated to prove their hypotheses. Energy resilience research is still at its emerging stage that a few literatures have tried to define energy resilience. First, the common definition of resilience could be discussed in terms of resilience abilities (preparation, absorption, recovery, and adaptation). It is also addressed in terms of sustainability related dimensions (availability, accessibility, affordability, and acceptability). "Preparation" in resilience ability and "availability" in sustainable dimension are considered to be the most critical to address energy resilience [@sharifiPrinciplesCriteriaAssessing2016]. "Preparation" involves early adoption of planning and design measures to avoid potential disruptions. Preparation measure is known to be the most effective to improve the resilience. Furthermore, reserve margins, diverse energy sources, and monitoring systems could improve "availability" of energy services. 

## Vulnerability  

Vulnerability could be defined as being at risk of having limited capacity of power to protect one's interest. Vulnerability is, however, mainly interpreted in connection with weakness, dependency, powerlessness, deficiency, and passivity. This implicit bias leads to a problem in ethical response as it entails negative connotation [@gilsonEthicsVulnerabilityFeminist2013]. Vulnerability could be interpreted in two sources - "inherent" and "situational" [@mackenzieVulnerabilityNewEssays2013]. Our neediness and dependence on others incur inherent vulnerability. This applies to energy dependency in the modern society because energy is essential to the basic human needs to sustain life. Situational vulnerability is context dependent such that negative impact of energy poverty on a certain community, would be different from the impact on other communities, depending upon social, political, economic, and environmental situations. For example, effects of a same hurricane would be less in a community, which has more resilient energy systems. Thus, it is necessary to discuss characteristics of resilient energy systems in terms of energy dependency and situational conditions (social, political, economic, and environmental). 


# Characteristics for resilient energy systems

Community resilience could benefit from integrated energy diversity and decentralization in terms of reliable energy supply. Two emerging characteristics for energy resilience were presented: integrated energy system (IES) and distributed energy resources (DERs) [@linStudyResilienceIntegrated2016]. IES is related to interdependency and diversity of systems while DERs represent several renewable energy sources spread across regions. DERs could be interpreted as decentralized energy systems such as micro-grids. When systems are combined, the complexity becomes characterized and the emergent behavior of the system is hard to be expected. In the study, two measures for energy resilience were introduced: hardware hardening and operational resilience strategies. Hardware hardening happens to be costly and influences only a limited part of the whole system that is less effective. On the other hand, increasing diversity of energy supply, would increase the system resilience.

## Integrated energy system (IES)

Understanding interdependencies of infrastructures are essential to address vulnerability. For instance, a study shows that interdependencies in infrastructures including energy, are important to a system resilience, and space and time are critical to assess hazard impact of interdependent lifeline infrastructures [@wangVulnerabilityRobustnessCivil2017]. Furthermore, the study suggested that micro-grid at the community level, would increase robustness of the energy system in addition to hardening structure of power delivery components and increasing power generation redundancy. Robustness for power and telecommunication infrastructure was modeled in this study, in terms of resilience (Purple infra – human; Green infra – social, biological, hydrological, circulatory, and metabolic; Gray infra – lifelines; and modeling of interdependencies). Using state wide data, the study models the inoperability in terms of time (model parameters chosen by the goodness of fit). Time to recovery model estimates resource allocation pre-event. It found that peak wind speed and the corresponding parameters are not significant. Fragility models were developed by logistic regression. The same model for power was applied to telecommunication. Combined model (power and telecommunication) with the fragility model and single degree of freedom system (SDOF), may predict the restoration after hurricanes. Those models could be used to predict performance of the combined infrastructure systems in response to future storms. This study argues that social science involvement may be necessary to investigate from the community perspectives in addition to the infrastructure operators' perspectives.


## Distributed energy resources (DERs)

Homogeneous and a sole energy production system not only adversely affects communities due to the lack of reliable energy supply, but also harms the social and environmental value of the built environment. Decentralization of energy production and supply has played an important role to resilient community as it is more robust in response to disruptions. For example, a study shows controllable and islandable micro-grid systems (decentralized systems) would improve the resiliency of power grids in extreme conditions [@shahidehpourMicrogridsEnhancingPower2017]. The study introduced 4 indexes - K: expected number of line on outage; LOLP: loss of load probability not being supplied; EDNS: expected demand not supplied; and G: difficulty level of grid recovery to promote the resilience improvement by introducing micro-grids to the power grid system. On the other hand, centralized energy production may have contributed to vulnerability of the current urban form as most of subsystems of human activities are relying on the sole energy production. The more dependent to a sole energy production, the more vulnerable a system would face interruptions. 

Decentralized energy network, also, has enhanced the energy accessibility, and has been increasing due to efficient end-use appliance and low-cost photovoltaic supported by ICT (mobile phone) and virtual financial services [@alstoneDecentralizedEnergySystems2015]. There are still 1.3 billion people who currently lack access to electricity, and some barriers to mobilize the decentralized energy networks to local level. Governance of energy infrastructures in connection with polycentric governances will promote resilient energy systems [@goldthauRethinkingGovernanceEnergy2014]. It is because polycentric governances promote decentralized energy systems. Social science would be helpful to provide the reliable energy services as polycentric governance is critically related to socio-economic actors.

The investment of off-grid, one of the decentralized energy systems, however, features Unfavorable risk-return profiles and small investment volumes. Spatial diversity in a portfolio can reduce investment risks of private investments on resilient energy systems. Potential aggregation of small-scale renewable energy to investment is promising in that spatial diversification is helpful for derisking. Classification of risks, quantitative estimation of cost and derisking effects for aggregation of small-scale investments will help attracting private investment on off-grid. Barriers to private investment are financial, institutional and policy, and technical. Market risk could be decreased by portfolio with different geographies or industries. Systematic assessment is necessary for derisking related to regional disasters, policy change and regional industry [@malhotraScalingFinanceOffgrid2017]. 


# Community solar

A report from 2015 NREL estimates that about 50% of consumers and businesses are unable to host PV systems due to several reasons (e.g., not owning house, not enough finance, and not enough area to install rooftop solar) as confirmed by the previous empirical analyses in Seattle. By opening the market to these people, community solar or shared solar could represent 32%-49% of the distributed PV market in 2020, growing cumulative PV deployment in 2015-2020 by 5.5-11.0 GW and representing \$8.2-\$16.3 billion of cumulative investment [@feldmanSharedSolarCurrent2015]. Community solar models could work for those who can’t afford to install PV. Community solar (thanks to virtual net metering) is a purchasing arrangement in which multiple customers share the electricity or the economic benefits of solar power from a single array. An array is typically built in a single location, and individual customers sign up to own or lease parts of the array, or to purchase (or be credited for) some portion of the electricity generated by the array. Community solar may be located on public or jointly-owned property, and can be an easier way for customers to benefit from a local solar energy project.

Shared solar adoption should be considered in terms of political and economic barriers, which vary between states and program models. Those barriers are (1) occupants not owning the building, (2) lack of access to information, (3) difficulties with application submission, (4) stringent inspection requirements, (5) variation of solar incentives, (6) interconnection and net metering standards from state to state, (7) lack of regulatory clarity, and (8) lack of mandated or recommended guidance on program structure. Other barriers are the ownership as some community solar models only allow subscriptions while array owner could see a reduction in costs on the order of 50%. Securing available tax benefits is other barrier. Policy landscape depending on jurisdiction, will decide whether electricity costs will be credited to subscribers through net metering, or whether the utility will enter into a power purchase agreement (PPA) to purchase power directly from the energy producer [@augustineNextBigThing2016]. Furthermore, securities and Exchange Commission (SEC) requires for registration and disclosure of shared solar projects. SEC will regulate the projects depending on whether an interest in a shared solar project is a "security", which may impact the way a shared solar program operates [@feldmanSharedSolarCurrent2015]. 

Aggregation of community connections will reduce the barrier to grid-based service while designing local energy sharing community is unclear. A study analyzed several algorithms to find the optimal clustering of communities in terms of self-sufficiency, sharing cost, and stability [@yamagataElectricitySelfSufficientCommunity2016]. In the study, vehicle to community (V2C) was introduced with PV for energy generation and electric vehicle (EV) for energy storage where the energy is shared within the local community clustered. Trade-off between implementation and maintenance cost, and electricity self-sufficient was considered. This could be one of examples to design community for community based energy networks.


# Conclusion

Climate change has led to enhancement of clean energy polices, which has been encouraging deployment of sustainable and resilient energy systems. Sustainable energy systems are to mitigate climate change by reducing greenhouse gas emissions while resilient energy systems are to improve the systems more robust in response to climate change. Energy divide, which would be a direct result of the rapid transition of energy systems, could affect the community resilience by uneven distribution of services. Empirical analyses were performed to verify the current status of distribution of one of the clean energy technologies, residential solar in Seattle. The results revealed that (1) there is a clustering pattern in the distribution, (2) housing stability and economic status explain the uneven distribution, and (3) there are different neighbors, where residential solar installations are more sensitive to the housing stability and economic status. The analyses questioned ethical issue of social justice. Prudentialism ethics may address the issue by reconciling utilitarianism, or efficient oriented policies and social equity through understanding resilience and vulnerability. Finally, community solar could be helpful to encourage social equity by taking advantage of two features: integrated energy system (IES) and distributed energy resources (DERs) satisfying utilitarianism and social justice. 

Self-sufficient energy system or decentralized energy production has increased the resilience of human societies and communities. So has done energy diversity, which is compared to the biological diversity keeping ecosystem healthy and stable. Diversification effect lessens the volatility or risk of investment by having less correlated assets in the package. Likewise, energy diversity, in the context of diverse energy sources, would reduce the risk of human society, thus enhance the stability of the built environment. Decentralized and diversified energy systems would enhance the community resilience in terms of vulnerability and resilience in response to climate change. After all, community solar would address the ethical judgement. 


# References 

cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  antidepressants-vexarin---primary:
    run: antidepressants-vexarin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  antidepressants-suspension---primary:
    run: antidepressants-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: antidepressants-vexarin---primary/output
  antidepressants-500microgram---primary:
    run: antidepressants-500microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: antidepressants-suspension---primary/output
  antidepressants-200mg---primary:
    run: antidepressants-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: antidepressants-500microgram---primary/output
  antidepressants-500mg---primary:
    run: antidepressants-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: antidepressants-200mg---primary/output
  antidepressants-escitalopram---primary:
    run: antidepressants-escitalopram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: antidepressants-500mg---primary/output
  antidepressants-venlablue---primary:
    run: antidepressants-venlablue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: antidepressants-escitalopram---primary/output
  antidepressants-nortriptyline---primary:
    run: antidepressants-nortriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: antidepressants-venlablue---primary/output
  antidepressants-300mg---primary:
    run: antidepressants-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: antidepressants-nortriptyline---primary/output
  antidepressants-fluvoxamine---primary:
    run: antidepressants-fluvoxamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: antidepressants-300mg---primary/output
  antidepressants-mirtazapine---primary:
    run: antidepressants-mirtazapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: antidepressants-fluvoxamine---primary/output
  antidepressants-sertraline---primary:
    run: antidepressants-sertraline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: antidepressants-mirtazapine---primary/output
  antidepressants-tardcap---primary:
    run: antidepressants-tardcap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: antidepressants-sertraline---primary/output
  antidepressants-trazodone---primary:
    run: antidepressants-trazodone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: antidepressants-tardcap---primary/output
  antidepressants-viepax---primary:
    run: antidepressants-viepax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: antidepressants-trazodone---primary/output
  antidepressants-molipaxin---primary:
    run: antidepressants-molipaxin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: antidepressants-viepax---primary/output
  antidepressants-125mg---primary:
    run: antidepressants-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: antidepressants-molipaxin---primary/output
  antidepressants-atomoxetine---primary:
    run: antidepressants-atomoxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: antidepressants-125mg---primary/output
  antidepressants-tablet---primary:
    run: antidepressants-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: antidepressants-atomoxetine---primary/output
  antidepressants-tifaxin---primary:
    run: antidepressants-tifaxin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: antidepressants-tablet---primary/output
  antidepressants-anafranil---primary:
    run: antidepressants-anafranil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: antidepressants-tifaxin---primary/output
  antidepressants-moclobemide---primary:
    run: antidepressants-moclobemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: antidepressants-anafranil---primary/output
  antidepressants-225mg---primary:
    run: antidepressants-225mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: antidepressants-moclobemide---primary/output
  antidepressants-100mg---primary:
    run: antidepressants-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: antidepressants-225mg---primary/output
  antidepressants-lofepramine---primary:
    run: antidepressants-lofepramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: antidepressants-100mg---primary/output
  antidepressants-soltab---primary:
    run: antidepressants-soltab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: antidepressants-lofepramine---primary/output
  antidepressants-surmontil---primary:
    run: antidepressants-surmontil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: antidepressants-soltab---primary/output
  antidepressants-duloxetine---primary:
    run: antidepressants-duloxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: antidepressants-surmontil---primary/output
  antidepressants-amoxapine---primary:
    run: antidepressants-amoxapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: antidepressants-duloxetine---primary/output
  venlalic-antidepressants---primary:
    run: venlalic-antidepressants---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: antidepressants-amoxapine---primary/output
  antidepressants-modifiedrelease---primary:
    run: antidepressants-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: venlalic-antidepressants---primary/output
  antidepressants-strattera---primary:
    run: antidepressants-strattera---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: antidepressants-modifiedrelease---primary/output
  antidepressants-fentazin---primary:
    run: antidepressants-fentazin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: antidepressants-strattera---primary/output
  antidepressants-syrup---primary:
    run: antidepressants-syrup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: antidepressants-fentazin---primary/output
  dispersible-antidepressants---primary:
    run: dispersible-antidepressants---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: antidepressants-syrup---primary/output
  antidepressants-tryptizol---primary:
    run: antidepressants-tryptizol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: dispersible-antidepressants---primary/output
  antidepressants-prothiaden---primary:
    run: antidepressants-prothiaden---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: antidepressants-tryptizol---primary/output
  antidepressants-375mg---primary:
    run: antidepressants-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: antidepressants-prothiaden---primary/output
  antidepressants-protriptyline---primary:
    run: antidepressants-protriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: antidepressants-375mg---primary/output
  antidepressants-vencarm---primary:
    run: antidepressants-vencarm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: antidepressants-protriptyline---primary/output
  antidepressants-trimipramine---primary:
    run: antidepressants-trimipramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: antidepressants-vencarm---primary/output
  antidepressants-sugar---primary:
    run: antidepressants-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: antidepressants-trimipramine---primary/output
  antidepressants-butriptyline---primary:
    run: antidepressants-butriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: antidepressants-sugar---primary/output
  domical-antidepressants---primary:
    run: domical-antidepressants---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: antidepressants-butriptyline---primary/output
  antidepressants-seroxat---primary:
    run: antidepressants-seroxat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: domical-antidepressants---primary/output
  antidepressants-triptafen---primary:
    run: antidepressants-triptafen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: antidepressants-seroxat---primary/output
  antidepressants-vensir---primary:
    run: antidepressants-vensir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: antidepressants-triptafen---primary/output
  politid-antidepressants---primary:
    run: politid-antidepressants---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: antidepressants-vensir---primary/output
  antidepressants-cymbalta---primary:
    run: antidepressants-cymbalta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: politid-antidepressants---primary/output
  antidepressants-alventa---primary:
    run: antidepressants-alventa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: antidepressants-cymbalta---primary/output
  antidepressants-concentrate---primary:
    run: antidepressants-concentrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: antidepressants-alventa---primary/output
  antidepressants-tranylcypromine---primary:
    run: antidepressants-tranylcypromine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: antidepressants-concentrate---primary/output
  antidepressants-bolvidon---primary:
    run: antidepressants-bolvidon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: antidepressants-tranylcypromine---primary/output
  antidepressants-rodomel---primary:
    run: antidepressants-rodomel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: antidepressants-bolvidon---primary/output
  antidepressants-moditen---primary:
    run: antidepressants-moditen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: antidepressants-rodomel---primary/output
  antidepressants-efexor---primary:
    run: antidepressants-efexor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: antidepressants-moditen---primary/output
  antidepressants-allegron---primary:
    run: antidepressants-allegron---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: antidepressants-efexor---primary/output
  antidepressants-cipramil---primary:
    run: antidepressants-cipramil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: antidepressants-allegron---primary/output
  antidepressants-perphenazine---primary:
    run: antidepressants-perphenazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: antidepressants-cipramil---primary/output
  antidepressants-injection---primary:
    run: antidepressants-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: antidepressants-perphenazine---primary/output
  antidepressants-enanthate---primary:
    run: antidepressants-enanthate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: antidepressants-injection---primary/output
  antidepressants-brintellix---primary:
    run: antidepressants-brintellix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: antidepressants-enanthate---primary/output
  antidepressants-venzip---primary:
    run: antidepressants-venzip---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: antidepressants-brintellix---primary/output
  antidepressants-sinequan---primary:
    run: antidepressants-sinequan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: antidepressants-venzip---primary/output
  antidepressants-manerix---primary:
    run: antidepressants-manerix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: antidepressants-sinequan---primary/output
  antidepressants-amitriptyline---primary:
    run: antidepressants-amitriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: antidepressants-manerix---primary/output
  antidepressants-fluoxetine---primary:
    run: antidepressants-fluoxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: antidepressants-amitriptyline---primary/output
  tonpular-antidepressants---primary:
    run: tonpular-antidepressants---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: antidepressants-fluoxetine---primary/output
  antidepressants-doxepin---primary:
    run: antidepressants-doxepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: tonpular-antidepressants---primary/output
  antidepressants-tofranil---primary:
    run: antidepressants-tofranil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: antidepressants-doxepin---primary/output
  antidepressants-sinepin---primary:
    run: antidepressants-sinepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: antidepressants-tofranil---primary/output
  antidepressants-paroxetine---primary:
    run: antidepressants-paroxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: antidepressants-sinepin---primary/output
  antidepressants-vortioxetine---primary:
    run: antidepressants-vortioxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: antidepressants-paroxetine---primary/output
  antidepressants-cipralex---primary:
    run: antidepressants-cipralex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: antidepressants-vortioxetine---primary/output
  antidepressants-depefex---primary:
    run: antidepressants-depefex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: antidepressants-cipralex---primary/output
  antidepressants-venladex---primary:
    run: antidepressants-venladex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: antidepressants-depefex---primary/output
  antidepressants-nefazodone---primary:
    run: antidepressants-nefazodone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: antidepressants-venladex---primary/output
  antidepressants-dosulepin---primary:
    run: antidepressants-dosulepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: antidepressants-nefazodone---primary/output
  antidepressants-aventyl---primary:
    run: antidepressants-aventyl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: antidepressants-dosulepin---primary/output
  isocarboxazid-antidepressants---primary:
    run: isocarboxazid-antidepressants---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: antidepressants-aventyl---primary/output
  antidepressants-dutonin---primary:
    run: antidepressants-dutonin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: isocarboxazid-antidepressants---primary/output
  antidepressants-fluanxol---primary:
    run: antidepressants-fluanxol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: antidepressants-dutonin---primary/output
  antidepressants-iprindole---primary:
    run: antidepressants-iprindole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: antidepressants-fluanxol---primary/output
  antidepressants-imipramine---primary:
    run: antidepressants-imipramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: antidepressants-iprindole---primary/output
  antidepressants-solution---primary:
    run: antidepressants-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: antidepressants-imipramine---primary/output
  antidepressants-chlordiazepoxide---primary:
    run: antidepressants-chlordiazepoxide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: antidepressants-solution---primary/output
  antidepressants-decanoate---primary:
    run: antidepressants-decanoate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: antidepressants-chlordiazepoxide---primary/output
  antidepressants-prepadine---primary:
    run: antidepressants-prepadine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: antidepressants-decanoate---primary/output
  antidepressants-yentreve---primary:
    run: antidepressants-yentreve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: antidepressants-prepadine---primary/output
  antidepressants-lentizol---primary:
    run: antidepressants-lentizol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: antidepressants-yentreve---primary/output
  antidepressants-sunveniz---primary:
    run: antidepressants-sunveniz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: antidepressants-lentizol---primary/output
  antidepressants-venlaneo---primary:
    run: antidepressants-venlaneo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: antidepressants-sunveniz---primary/output
  antidepressants-venaxx---primary:
    run: antidepressants-venaxx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: antidepressants-venlaneo---primary/output
  antidepressants-faverin---primary:
    run: antidepressants-faverin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: antidepressants-venaxx---primary/output
  antidepressants-dothapax---primary:
    run: antidepressants-dothapax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: antidepressants-faverin---primary/output
  antidepressants-asendi---primary:
    run: antidepressants-asendi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: antidepressants-dothapax---primary/output
  antidepressants-mianserin---primary:
    run: antidepressants-mianserin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: antidepressants-asendi---primary/output
  antidepressants-limbitrol---primary:
    run: antidepressants-limbitrol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: antidepressants-mianserin---primary/output
  antidepressants-thaden---primary:
    run: antidepressants-thaden---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: antidepressants-limbitrol---primary/output
  antidepressants-norval---primary:
    run: antidepressants-norval---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: antidepressants-thaden---primary/output
  antidepressants-concordin---primary:
    run: antidepressants-concordin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: antidepressants-norval---primary/output
  antidepressants-150mg---primary:
    run: antidepressants-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: antidepressants-concordin---primary/output
  antidepressants-prozac---primary:
    run: antidepressants-prozac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: antidepressants-150mg---primary/output
  antidepressants-depalta---primary:
    run: antidepressants-depalta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: antidepressants-prozac---primary/output
  antidepressants-paxoran---primary:
    run: antidepressants-paxoran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: antidepressants-depalta---primary/output
  antidepressants-trifluoperazine---primary:
    run: antidepressants-trifluoperazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: antidepressants-paxoran---primary/output
  antidepressants-venlafaxine---primary:
    run: antidepressants-venlafaxine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: antidepressants-trifluoperazine---primary/output
  antidepressants-fluphenazine---primary:
    run: antidepressants-fluphenazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: antidepressants-venlafaxine---primary/output
  antidepressants-tryptophan---primary:
    run: antidepressants-tryptophan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: antidepressants-fluphenazine---primary/output
  antidepressants-liquid---primary:
    run: antidepressants-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: antidepressants-tryptophan---primary/output
  antidepressants-prondol---primary:
    run: antidepressants-prondol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: antidepressants-liquid---primary/output
  antidepressants-venlasov---primary:
    run: antidepressants-venlasov---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: antidepressants-prondol---primary/output
  antidepressants-gastroresistant---primary:
    run: antidepressants-gastroresistant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: antidepressants-venlasov---primary/output
  lustral-antidepressants---primary:
    run: lustral-antidepressants---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: antidepressants-gastroresistant---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: lustral-antidepressants---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

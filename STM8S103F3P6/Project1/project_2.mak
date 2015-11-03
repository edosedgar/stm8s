# ST Visual Debugger Generated MAKE File, based on project_2.stp

ifeq ($(CFG), )
CFG=Debug
$(warning ***No configuration specified. Defaulting to $(CFG)***)
endif

ToolsetRoot=D:\Program_Files\STMicroelectronics\st_toolset\asm
ToolsetBin=D:\Program_Files\STMicroelectronics\st_toolset\asm
ToolsetInc=D:\Program_Files\STMicroelectronics\st_toolset\asm\include
ToolsetLib=D:\Program_Files\STMicroelectronics\st_toolset\asm
ToolsetIncOpts=-I=D:\Program_Files\STMicroelectronics\st_toolset\asm\include 
ToolsetLibOpts=D:\Program_Files\STMicroelectronics\st_toolset\asm 
ObjectExt=obj
OutputExt=s19 hex fin
InputName=$(basename $(notdir $<))


# 
# Debug
# 
ifeq "$(CFG)" "Debug"


OutputPath=Debug
ProjectSFile=project_2
TargetSName=project_2
TargetFName=project_2.s19
IntermPath=$(dir $@)
ASMFLAGS_PRJ=$(ToolsetBin)\asm  -sym -li=$(IntermPath)$(InputName).lsr $< $(ToolsetIncOpts) -obj=$(IntermPath)$(InputName).$(ObjectExt)
ObjectFiles=$(OutputPath)\var.obj+$(OutputPath)\main.obj

all : $(OutputPath) project_2.s19

$(OutputPath) : 
	if not exist $(OutputPath)/ mkdir $(OutputPath)

Debug\var.$(ObjectExt) : 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(ASMFLAGS_PRJ)

Debug\main.$(ObjectExt) : main.asm var.asm 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(ASMFLAGS_PRJ)

project_2.s19 : $(OutputPath)\var.obj $(OutputPath)\main.obj
	$(ToolsetBin)\lyn  $(ObjectFiles), $(OutputPath)\$(TargetSName).cod, ; 
	$(ToolsetBin)\obsend  $(OutputPath)\$(TargetSName).cod,f,$(OutputPath)\$(TargetSName).s19,s
	$(ToolsetBin)\abslist  $(OutputPath)\var.lsr -exe $(OutputPath)\project_2.s19
	$(ToolsetBin)\abslist  $(OutputPath)\main.lsr -exe $(OutputPath)\project_2.s19

clean : 
	-@erase $(OutputPath)\var.obj
	-@erase $(OutputPath)\main.obj
	-@erase $(OutputPath)\project_2.s19
	-@erase $(OutputPath)\project_2.map
	-@erase $(OutputPath)\project_2.cod
	-@erase $(OutputPath)\project_2.grp
	-@erase $(OutputPath)\project_2.sym
	-@erase var.lst
	-@erase main.lst
endif

# 
# Release
# 
ifeq "$(CFG)" "Release"


OutputPath=Release
ProjectSFile=project_2
TargetSName=project_2
TargetFName=project_2.s19
IntermPath=$(dir $@)
ASMFLAGS_PRJ=$(ToolsetBin)\asm  -sym -li=$(IntermPath)$(InputName).lsr $< $(ToolsetIncOpts) -obj=$(IntermPath)$(InputName).$(ObjectExt)
ObjectFiles=$(OutputPath)\var.obj+$(OutputPath)\main.obj

all : $(OutputPath) project_2.s19

$(OutputPath) : 
	if not exist $(OutputPath)/ mkdir $(OutputPath)

Release\var.$(ObjectExt) : 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(ASMFLAGS_PRJ)

Release\main.$(ObjectExt) : main.asm var.asm 
	@if not exist $(dir $@)  mkdir $(dir $@)
	$(ASMFLAGS_PRJ)

project_2.s19 : $(OutputPath)\var.obj $(OutputPath)\main.obj
	$(ToolsetBin)\lyn  $(ObjectFiles), $(OutputPath)\$(TargetSName).cod, " " 
	$(ToolsetBin)\obsend  $(OutputPath)\$(TargetSName).cod,f,$(OutputPath)\$(TargetSName).s19,s
	$(ToolsetBin)\abslist  $(OutputPath)\var.lsr -exe $(OutputPath)\project_2.s19
	$(ToolsetBin)\abslist  $(OutputPath)\main.lsr -exe $(OutputPath)\project_2.s19

clean : 
	-@erase $(OutputPath)\var.obj
	-@erase $(OutputPath)\main.obj
	-@erase $(OutputPath)\project_2.s19
	-@erase $(OutputPath)\project_2.map
	-@erase $(OutputPath)\project_2.cod
	-@erase $(OutputPath)\project_2.grp
	-@erase $(OutputPath)\project_2.sym
	-@erase var.lst
	-@erase main.lst
endif

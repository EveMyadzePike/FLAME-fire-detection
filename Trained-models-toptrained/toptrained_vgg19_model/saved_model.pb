ц®
Ти
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Њ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.1-0-g85c8b2a817f8ыр
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	А*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
К
block1_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
Г
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
z
block1_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
К
block1_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
Г
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
z
block1_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
Л
block2_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*$
shared_nameblock2_conv1/kernel
Д
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@А*
dtype0
{
block2_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:А*
dtype0
М
block2_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock2_conv2/kernel
Е
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block2_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:А*
dtype0
М
block3_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv1/kernel
Е
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:А*
dtype0
М
block3_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv2/kernel
Е
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:А*
dtype0
М
block3_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv3/kernel
Е
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:А*
dtype0
М
block3_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock3_conv4/kernel
Е
'block3_conv4/kernel/Read/ReadVariableOpReadVariableOpblock3_conv4/kernel*(
_output_shapes
:АА*
dtype0
{
block3_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock3_conv4/bias
t
%block3_conv4/bias/Read/ReadVariableOpReadVariableOpblock3_conv4/bias*
_output_shapes	
:А*
dtype0
М
block4_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv1/kernel
Е
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:А*
dtype0
М
block4_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv2/kernel
Е
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:А*
dtype0
М
block4_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv3/kernel
Е
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:А*
dtype0
М
block4_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock4_conv4/kernel
Е
'block4_conv4/kernel/Read/ReadVariableOpReadVariableOpblock4_conv4/kernel*(
_output_shapes
:АА*
dtype0
{
block4_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock4_conv4/bias
t
%block4_conv4/bias/Read/ReadVariableOpReadVariableOpblock4_conv4/bias*
_output_shapes	
:А*
dtype0
М
block5_conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv1/kernel
Е
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:А*
dtype0
М
block5_conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv2/kernel
Е
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:А*
dtype0
М
block5_conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv3/kernel
Е
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:А*
dtype0
М
block5_conv4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*$
shared_nameblock5_conv4/kernel
Е
'block5_conv4/kernel/Read/ReadVariableOpReadVariableOpblock5_conv4/kernel*(
_output_shapes
:АА*
dtype0
{
block5_conv4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameblock5_conv4/bias
t
%block5_conv4/bias/Read/ReadVariableOpReadVariableOpblock5_conv4/bias*
_output_shapes	
:А*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
Г
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	А*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
Г
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	А*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Иs
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*√r
valueєrBґr Bѓr
ж
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
 
Ґ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer_with_weights-12
layer-17
layer_with_weights-13
layer-18
layer_with_weights-14
layer-19
 layer_with_weights-15
 layer-20
!layer-21
"regularization_losses
#	variables
$trainable_variables
%	keras_api
R
&regularization_losses
'	variables
(trainable_variables
)	keras_api
R
*regularization_losses
+	variables
,trainable_variables
-	keras_api
h

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
h
4iter

5beta_1

6beta_2
	7decay
8learning_rate.mЇ/mї.vЉ/vљ
 
Ж
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
O22
P23
Q24
R25
S26
T27
U28
V29
W30
X31
.32
/33

.0
/1
≠
regularization_losses
Ynon_trainable_variables
	variables
Zlayer_regularization_losses
	trainable_variables

[layers
\layer_metrics
]metrics
 
 
h

9kernel
:bias
^regularization_losses
_	variables
`trainable_variables
a	keras_api
h

;kernel
<bias
bregularization_losses
c	variables
dtrainable_variables
e	keras_api
R
fregularization_losses
g	variables
htrainable_variables
i	keras_api
h

=kernel
>bias
jregularization_losses
k	variables
ltrainable_variables
m	keras_api
h

?kernel
@bias
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
R
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
h

Akernel
Bbias
vregularization_losses
w	variables
xtrainable_variables
y	keras_api
h

Ckernel
Dbias
zregularization_losses
{	variables
|trainable_variables
}	keras_api
j

Ekernel
Fbias
~regularization_losses
	variables
Аtrainable_variables
Б	keras_api
l

Gkernel
Hbias
Вregularization_losses
Г	variables
Дtrainable_variables
Е	keras_api
V
Жregularization_losses
З	variables
Иtrainable_variables
Й	keras_api
l

Ikernel
Jbias
Кregularization_losses
Л	variables
Мtrainable_variables
Н	keras_api
l

Kkernel
Lbias
Оregularization_losses
П	variables
Рtrainable_variables
С	keras_api
l

Mkernel
Nbias
Тregularization_losses
У	variables
Фtrainable_variables
Х	keras_api
l

Okernel
Pbias
Цregularization_losses
Ч	variables
Шtrainable_variables
Щ	keras_api
V
Ъregularization_losses
Ы	variables
Ьtrainable_variables
Э	keras_api
l

Qkernel
Rbias
Юregularization_losses
Я	variables
†trainable_variables
°	keras_api
l

Skernel
Tbias
Ґregularization_losses
£	variables
§trainable_variables
•	keras_api
l

Ukernel
Vbias
¶regularization_losses
І	variables
®trainable_variables
©	keras_api
l

Wkernel
Xbias
™regularization_losses
Ђ	variables
ђtrainable_variables
≠	keras_api
V
Ѓregularization_losses
ѓ	variables
∞trainable_variables
±	keras_api
 
ц
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
O22
P23
Q24
R25
S26
T27
U28
V29
W30
X31
 
≤
"regularization_losses
≤non_trainable_variables
#	variables
 ≥layer_regularization_losses
$trainable_variables
іlayers
µlayer_metrics
ґmetrics
 
 
 
≤
&regularization_losses
Јnon_trainable_variables
'	variables
 Єlayer_regularization_losses
(trainable_variables
єlayers
Їlayer_metrics
їmetrics
 
 
 
≤
*regularization_losses
Љnon_trainable_variables
+	variables
 љlayer_regularization_losses
,trainable_variables
Њlayers
њlayer_metrics
јmetrics
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

.0
/1

.0
/1
≤
0regularization_losses
Ѕnon_trainable_variables
1	variables
 ¬layer_regularization_losses
2trainable_variables
√layers
ƒlayer_metrics
≈metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock1_conv1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock1_conv1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock1_conv2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock1_conv2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock2_conv1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock2_conv1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock2_conv2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock2_conv2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEblock3_conv1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEblock3_conv1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv2/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv2/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv3/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv3/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock3_conv4/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock3_conv4/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv1/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv1/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv2/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv2/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv3/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv3/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock4_conv4/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock4_conv4/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv1/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv1/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv2/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv2/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv3/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv3/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEblock5_conv4/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEblock5_conv4/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE
ц
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
O22
P23
Q24
R25
S26
T27
U28
V29
W30
X31
 
#
0
1
2
3
4
 

∆0
«1
 

90
:1
 
≤
^regularization_losses
»non_trainable_variables
_	variables
 …layer_regularization_losses
`trainable_variables
 layers
Ћlayer_metrics
ћmetrics
 

;0
<1
 
≤
bregularization_losses
Ќnon_trainable_variables
c	variables
 ќlayer_regularization_losses
dtrainable_variables
ѕlayers
–layer_metrics
—metrics
 
 
 
≤
fregularization_losses
“non_trainable_variables
g	variables
 ”layer_regularization_losses
htrainable_variables
‘layers
’layer_metrics
÷metrics
 

=0
>1
 
≤
jregularization_losses
„non_trainable_variables
k	variables
 Ўlayer_regularization_losses
ltrainable_variables
ўlayers
Џlayer_metrics
џmetrics
 

?0
@1
 
≤
nregularization_losses
№non_trainable_variables
o	variables
 Ёlayer_regularization_losses
ptrainable_variables
ёlayers
яlayer_metrics
аmetrics
 
 
 
≤
rregularization_losses
бnon_trainable_variables
s	variables
 вlayer_regularization_losses
ttrainable_variables
гlayers
дlayer_metrics
еmetrics
 

A0
B1
 
≤
vregularization_losses
жnon_trainable_variables
w	variables
 зlayer_regularization_losses
xtrainable_variables
иlayers
йlayer_metrics
кmetrics
 

C0
D1
 
≤
zregularization_losses
лnon_trainable_variables
{	variables
 мlayer_regularization_losses
|trainable_variables
нlayers
оlayer_metrics
пmetrics
 

E0
F1
 
≥
~regularization_losses
рnon_trainable_variables
	variables
 сlayer_regularization_losses
Аtrainable_variables
тlayers
уlayer_metrics
фmetrics
 

G0
H1
 
µ
Вregularization_losses
хnon_trainable_variables
Г	variables
 цlayer_regularization_losses
Дtrainable_variables
чlayers
шlayer_metrics
щmetrics
 
 
 
µ
Жregularization_losses
ъnon_trainable_variables
З	variables
 ыlayer_regularization_losses
Иtrainable_variables
ьlayers
эlayer_metrics
юmetrics
 

I0
J1
 
µ
Кregularization_losses
€non_trainable_variables
Л	variables
 Аlayer_regularization_losses
Мtrainable_variables
Бlayers
Вlayer_metrics
Гmetrics
 

K0
L1
 
µ
Оregularization_losses
Дnon_trainable_variables
П	variables
 Еlayer_regularization_losses
Рtrainable_variables
Жlayers
Зlayer_metrics
Иmetrics
 

M0
N1
 
µ
Тregularization_losses
Йnon_trainable_variables
У	variables
 Кlayer_regularization_losses
Фtrainable_variables
Лlayers
Мlayer_metrics
Нmetrics
 

O0
P1
 
µ
Цregularization_losses
Оnon_trainable_variables
Ч	variables
 Пlayer_regularization_losses
Шtrainable_variables
Рlayers
Сlayer_metrics
Тmetrics
 
 
 
µ
Ъregularization_losses
Уnon_trainable_variables
Ы	variables
 Фlayer_regularization_losses
Ьtrainable_variables
Хlayers
Цlayer_metrics
Чmetrics
 

Q0
R1
 
µ
Юregularization_losses
Шnon_trainable_variables
Я	variables
 Щlayer_regularization_losses
†trainable_variables
Ъlayers
Ыlayer_metrics
Ьmetrics
 

S0
T1
 
µ
Ґregularization_losses
Эnon_trainable_variables
£	variables
 Юlayer_regularization_losses
§trainable_variables
Яlayers
†layer_metrics
°metrics
 

U0
V1
 
µ
¶regularization_losses
Ґnon_trainable_variables
І	variables
 £layer_regularization_losses
®trainable_variables
§layers
•layer_metrics
¶metrics
 

W0
X1
 
µ
™regularization_losses
Іnon_trainable_variables
Ђ	variables
 ®layer_regularization_losses
ђtrainable_variables
©layers
™layer_metrics
Ђmetrics
 
 
 
µ
Ѓregularization_losses
ђnon_trainable_variables
ѓ	variables
 ≠layer_regularization_losses
∞trainable_variables
Ѓlayers
ѓlayer_metrics
∞metrics
ц
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
O22
P23
Q24
R25
S26
T27
U28
V29
W30
X31
 
¶
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
!21
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

±total

≤count
≥	variables
і	keras_api
I

µtotal

ґcount
Ј
_fn_kwargs
Є	variables
є	keras_api

90
:1
 
 
 
 

;0
<1
 
 
 
 
 
 
 
 
 

=0
>1
 
 
 
 

?0
@1
 
 
 
 
 
 
 
 
 

A0
B1
 
 
 
 

C0
D1
 
 
 
 

E0
F1
 
 
 
 

G0
H1
 
 
 
 
 
 
 
 
 

I0
J1
 
 
 
 

K0
L1
 
 
 
 

M0
N1
 
 
 
 

O0
P1
 
 
 
 
 
 
 
 
 

Q0
R1
 
 
 
 

S0
T1
 
 
 
 

U0
V1
 
 
 
 

W0
X1
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

±0
≤1

≥	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

µ0
ґ1

Є	variables
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
П
serving_default_input_11Placeholder*1
_output_shapes
:€€€€€€€€€юю*
dtype0*&
shape:€€€€€€€€€юю
У
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_11block1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock3_conv4/kernelblock3_conv4/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock4_conv4/kernelblock4_conv4/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasblock5_conv4/kernelblock5_conv4/biasdense/kernel
dense/bias*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_34954
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
«
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp'block1_conv1/kernel/Read/ReadVariableOp%block1_conv1/bias/Read/ReadVariableOp'block1_conv2/kernel/Read/ReadVariableOp%block1_conv2/bias/Read/ReadVariableOp'block2_conv1/kernel/Read/ReadVariableOp%block2_conv1/bias/Read/ReadVariableOp'block2_conv2/kernel/Read/ReadVariableOp%block2_conv2/bias/Read/ReadVariableOp'block3_conv1/kernel/Read/ReadVariableOp%block3_conv1/bias/Read/ReadVariableOp'block3_conv2/kernel/Read/ReadVariableOp%block3_conv2/bias/Read/ReadVariableOp'block3_conv3/kernel/Read/ReadVariableOp%block3_conv3/bias/Read/ReadVariableOp'block3_conv4/kernel/Read/ReadVariableOp%block3_conv4/bias/Read/ReadVariableOp'block4_conv1/kernel/Read/ReadVariableOp%block4_conv1/bias/Read/ReadVariableOp'block4_conv2/kernel/Read/ReadVariableOp%block4_conv2/bias/Read/ReadVariableOp'block4_conv3/kernel/Read/ReadVariableOp%block4_conv3/bias/Read/ReadVariableOp'block4_conv4/kernel/Read/ReadVariableOp%block4_conv4/bias/Read/ReadVariableOp'block5_conv1/kernel/Read/ReadVariableOp%block5_conv1/bias/Read/ReadVariableOp'block5_conv2/kernel/Read/ReadVariableOp%block5_conv2/bias/Read/ReadVariableOp'block5_conv3/kernel/Read/ReadVariableOp%block5_conv3/bias/Read/ReadVariableOp'block5_conv4/kernel/Read/ReadVariableOp%block5_conv4/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst*<
Tin5
321	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_36280
Ц	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateblock1_conv1/kernelblock1_conv1/biasblock1_conv2/kernelblock1_conv2/biasblock2_conv1/kernelblock2_conv1/biasblock2_conv2/kernelblock2_conv2/biasblock3_conv1/kernelblock3_conv1/biasblock3_conv2/kernelblock3_conv2/biasblock3_conv3/kernelblock3_conv3/biasblock3_conv4/kernelblock3_conv4/biasblock4_conv1/kernelblock4_conv1/biasblock4_conv2/kernelblock4_conv2/biasblock4_conv3/kernelblock4_conv3/biasblock4_conv4/kernelblock4_conv4/biasblock5_conv1/kernelblock5_conv1/biasblock5_conv2/kernelblock5_conv2/biasblock5_conv3/kernelblock5_conv3/biasblock5_conv4/kernelblock5_conv4/biastotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense/kernel/vAdam/dense/bias/v*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_36431™€
л
—
%__inference_vgg19_layer_call_fn_35749

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_341502
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*≤
_input_shapes†
Э:€€€€€€€€€юю::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
Х
C
'__inference_dropout_layer_call_fn_35776

inputs
identityƒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_344552
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
°
Г
@__inference_model_layer_call_and_return_conditional_losses_34651

inputs
vgg19_34578
vgg19_34580
vgg19_34582
vgg19_34584
vgg19_34586
vgg19_34588
vgg19_34590
vgg19_34592
vgg19_34594
vgg19_34596
vgg19_34598
vgg19_34600
vgg19_34602
vgg19_34604
vgg19_34606
vgg19_34608
vgg19_34610
vgg19_34612
vgg19_34614
vgg19_34616
vgg19_34618
vgg19_34620
vgg19_34622
vgg19_34624
vgg19_34626
vgg19_34628
vgg19_34630
vgg19_34632
vgg19_34634
vgg19_34636
vgg19_34638
vgg19_34640
dense_34645
dense_34647
identityИҐdense/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐvgg19/StatefulPartitionedCall–
vgg19/StatefulPartitionedCallStatefulPartitionedCallinputsvgg19_34578vgg19_34580vgg19_34582vgg19_34584vgg19_34586vgg19_34588vgg19_34590vgg19_34592vgg19_34594vgg19_34596vgg19_34598vgg19_34600vgg19_34602vgg19_34604vgg19_34606vgg19_34608vgg19_34610vgg19_34612vgg19_34614vgg19_34616vgg19_34618vgg19_34620vgg19_34622vgg19_34624vgg19_34626vgg19_34628vgg19_34630vgg19_34632vgg19_34634vgg19_34636vgg19_34638vgg19_34640*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_341502
vgg19/StatefulPartitionedCallІ
(global_average_pooling2d/PartitionedCallPartitionedCall&vgg19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_342242*
(global_average_pooling2d/PartitionedCallЧ
dropout/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_344502!
dropout/StatefulPartitionedCallІ
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_34645dense_34647*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_344792
dense/StatefulPartitionedCall№
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^vgg19/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Ї
_input_shapes®
•:€€€€€€€€€юю::::::::::::::::::::::::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2>
vgg19/StatefulPartitionedCallvgg19/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
ь
b
F__inference_block5_pool_layer_call_and_return_conditional_losses_33363

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Џ

а
G__inference_block3_conv4_layer_call_and_return_conditional_losses_35947

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€??А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€??А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€??А
 
_user_specified_nameinputs
ь
b
F__inference_block1_pool_layer_call_and_return_conditional_losses_33315

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ё

а
G__inference_block1_conv2_layer_call_and_return_conditional_losses_33411

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
Relu°
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€юю@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:€€€€€€€€€юю@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€юю@
 
_user_specified_nameinputs
¶
G
+__inference_block1_pool_layer_call_fn_33321

inputs
identityк
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_333152
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Шh
–
@__inference_vgg19_layer_call_and_return_conditional_losses_33900
input_7
block1_conv1_33814
block1_conv1_33816
block1_conv2_33819
block1_conv2_33821
block2_conv1_33825
block2_conv1_33827
block2_conv2_33830
block2_conv2_33832
block3_conv1_33836
block3_conv1_33838
block3_conv2_33841
block3_conv2_33843
block3_conv3_33846
block3_conv3_33848
block3_conv4_33851
block3_conv4_33853
block4_conv1_33857
block4_conv1_33859
block4_conv2_33862
block4_conv2_33864
block4_conv3_33867
block4_conv3_33869
block4_conv4_33872
block4_conv4_33874
block5_conv1_33878
block5_conv1_33880
block5_conv2_33883
block5_conv2_33885
block5_conv3_33888
block5_conv3_33890
block5_conv4_33893
block5_conv4_33895
identityИҐ$block1_conv1/StatefulPartitionedCallҐ$block1_conv2/StatefulPartitionedCallҐ$block2_conv1/StatefulPartitionedCallҐ$block2_conv2/StatefulPartitionedCallҐ$block3_conv1/StatefulPartitionedCallҐ$block3_conv2/StatefulPartitionedCallҐ$block3_conv3/StatefulPartitionedCallҐ$block3_conv4/StatefulPartitionedCallҐ$block4_conv1/StatefulPartitionedCallҐ$block4_conv2/StatefulPartitionedCallҐ$block4_conv3/StatefulPartitionedCallҐ$block4_conv4/StatefulPartitionedCallҐ$block5_conv1/StatefulPartitionedCallҐ$block5_conv2/StatefulPartitionedCallҐ$block5_conv3/StatefulPartitionedCallҐ$block5_conv4/StatefulPartitionedCall≥
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_7block1_conv1_33814block1_conv1_33816*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_333842&
$block1_conv1/StatefulPartitionedCallў
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_33819block1_conv2_33821*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_334112&
$block1_conv2/StatefulPartitionedCallО
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_333152
block1_pool/PartitionedCallѕ
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_33825block2_conv1_33827*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_334392&
$block2_conv1/StatefulPartitionedCallЎ
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_33830block2_conv2_33832*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_334662&
$block2_conv2/StatefulPartitionedCallП
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_333272
block2_pool/PartitionedCallѕ
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_33836block3_conv1_33838*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_334942&
$block3_conv1/StatefulPartitionedCallЎ
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_33841block3_conv2_33843*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_335212&
$block3_conv2/StatefulPartitionedCallЎ
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_33846block3_conv3_33848*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_335482&
$block3_conv3/StatefulPartitionedCallЎ
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_33851block3_conv4_33853*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv4_layer_call_and_return_conditional_losses_335752&
$block3_conv4/StatefulPartitionedCallП
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_333392
block3_pool/PartitionedCallѕ
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_33857block4_conv1_33859*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_336032&
$block4_conv1/StatefulPartitionedCallЎ
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_33862block4_conv2_33864*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_336302&
$block4_conv2/StatefulPartitionedCallЎ
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_33867block4_conv3_33869*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_336572&
$block4_conv3/StatefulPartitionedCallЎ
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_33872block4_conv4_33874*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv4_layer_call_and_return_conditional_losses_336842&
$block4_conv4/StatefulPartitionedCallП
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_333512
block4_pool/PartitionedCallѕ
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_33878block5_conv1_33880*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_337122&
$block5_conv1/StatefulPartitionedCallЎ
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_33883block5_conv2_33885*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_337392&
$block5_conv2/StatefulPartitionedCallЎ
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_33888block5_conv3_33890*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_337662&
$block5_conv3/StatefulPartitionedCallЎ
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_33893block5_conv4_33895*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv4_layer_call_and_return_conditional_losses_337932&
$block5_conv4/StatefulPartitionedCallП
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_333632
block5_pool/PartitionedCallс
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*≤
_input_shapes†
Э:€€€€€€€€€юю::::::::::::::::::::::::::::::::2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€юю
!
_user_specified_name	input_7
Џ

а
G__inference_block4_conv3_layer_call_and_return_conditional_losses_33657

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ

а
G__inference_block4_conv4_layer_call_and_return_conditional_losses_33684

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ

а
G__inference_block2_conv2_layer_call_and_return_conditional_losses_33466

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ё

а
G__inference_block1_conv1_layer_call_and_return_conditional_losses_33384

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
Relu°
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€юю@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:€€€€€€€€€юю::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
…
`
B__inference_dropout_layer_call_and_return_conditional_losses_34455

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Л
T
8__inference_global_average_pooling2d_layer_call_fn_34230

inputs
identityЁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_342242
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
З
a
B__inference_dropout_layer_call_and_return_conditional_losses_35761

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/yњ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
К
Б
,__inference_block4_conv1_layer_call_fn_35976

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_336032
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Э
с
%__inference_model_layer_call_fn_35369

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32
identityИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_348002
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Ї
_input_shapes®
•:€€€€€€€€€юю::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
ЁЉ
с
!__inference__traced_restore_36431
file_prefix!
assignvariableop_dense_kernel!
assignvariableop_1_dense_bias 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate*
&assignvariableop_7_block1_conv1_kernel(
$assignvariableop_8_block1_conv1_bias*
&assignvariableop_9_block1_conv2_kernel)
%assignvariableop_10_block1_conv2_bias+
'assignvariableop_11_block2_conv1_kernel)
%assignvariableop_12_block2_conv1_bias+
'assignvariableop_13_block2_conv2_kernel)
%assignvariableop_14_block2_conv2_bias+
'assignvariableop_15_block3_conv1_kernel)
%assignvariableop_16_block3_conv1_bias+
'assignvariableop_17_block3_conv2_kernel)
%assignvariableop_18_block3_conv2_bias+
'assignvariableop_19_block3_conv3_kernel)
%assignvariableop_20_block3_conv3_bias+
'assignvariableop_21_block3_conv4_kernel)
%assignvariableop_22_block3_conv4_bias+
'assignvariableop_23_block4_conv1_kernel)
%assignvariableop_24_block4_conv1_bias+
'assignvariableop_25_block4_conv2_kernel)
%assignvariableop_26_block4_conv2_bias+
'assignvariableop_27_block4_conv3_kernel)
%assignvariableop_28_block4_conv3_bias+
'assignvariableop_29_block4_conv4_kernel)
%assignvariableop_30_block4_conv4_bias+
'assignvariableop_31_block5_conv1_kernel)
%assignvariableop_32_block5_conv1_bias+
'assignvariableop_33_block5_conv2_kernel)
%assignvariableop_34_block5_conv2_bias+
'assignvariableop_35_block5_conv3_kernel)
%assignvariableop_36_block5_conv3_bias+
'assignvariableop_37_block5_conv4_kernel)
%assignvariableop_38_block5_conv4_bias
assignvariableop_39_total
assignvariableop_40_count
assignvariableop_41_total_1
assignvariableop_42_count_1+
'assignvariableop_43_adam_dense_kernel_m)
%assignvariableop_44_adam_dense_bias_m+
'assignvariableop_45_adam_dense_kernel_v)
%assignvariableop_46_adam_dense_bias_v
identity_48ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9і
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*ј
valueґB≥0B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesо
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЮ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*÷
_output_shapes√
ј::::::::::::::::::::::::::::::::::::::::::::::::*>
dtypes4
220	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЬ
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ґ
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2°
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3£
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ґ
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6™
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ђ
AssignVariableOp_7AssignVariableOp&assignvariableop_7_block1_conv1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8©
AssignVariableOp_8AssignVariableOp$assignvariableop_8_block1_conv1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ђ
AssignVariableOp_9AssignVariableOp&assignvariableop_9_block1_conv2_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10≠
AssignVariableOp_10AssignVariableOp%assignvariableop_10_block1_conv2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11ѓ
AssignVariableOp_11AssignVariableOp'assignvariableop_11_block2_conv1_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12≠
AssignVariableOp_12AssignVariableOp%assignvariableop_12_block2_conv1_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13ѓ
AssignVariableOp_13AssignVariableOp'assignvariableop_13_block2_conv2_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14≠
AssignVariableOp_14AssignVariableOp%assignvariableop_14_block2_conv2_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15ѓ
AssignVariableOp_15AssignVariableOp'assignvariableop_15_block3_conv1_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16≠
AssignVariableOp_16AssignVariableOp%assignvariableop_16_block3_conv1_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17ѓ
AssignVariableOp_17AssignVariableOp'assignvariableop_17_block3_conv2_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18≠
AssignVariableOp_18AssignVariableOp%assignvariableop_18_block3_conv2_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19ѓ
AssignVariableOp_19AssignVariableOp'assignvariableop_19_block3_conv3_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20≠
AssignVariableOp_20AssignVariableOp%assignvariableop_20_block3_conv3_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21ѓ
AssignVariableOp_21AssignVariableOp'assignvariableop_21_block3_conv4_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22≠
AssignVariableOp_22AssignVariableOp%assignvariableop_22_block3_conv4_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23ѓ
AssignVariableOp_23AssignVariableOp'assignvariableop_23_block4_conv1_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24≠
AssignVariableOp_24AssignVariableOp%assignvariableop_24_block4_conv1_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25ѓ
AssignVariableOp_25AssignVariableOp'assignvariableop_25_block4_conv2_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26≠
AssignVariableOp_26AssignVariableOp%assignvariableop_26_block4_conv2_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27ѓ
AssignVariableOp_27AssignVariableOp'assignvariableop_27_block4_conv3_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28≠
AssignVariableOp_28AssignVariableOp%assignvariableop_28_block4_conv3_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29ѓ
AssignVariableOp_29AssignVariableOp'assignvariableop_29_block4_conv4_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30≠
AssignVariableOp_30AssignVariableOp%assignvariableop_30_block4_conv4_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31ѓ
AssignVariableOp_31AssignVariableOp'assignvariableop_31_block5_conv1_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32≠
AssignVariableOp_32AssignVariableOp%assignvariableop_32_block5_conv1_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33ѓ
AssignVariableOp_33AssignVariableOp'assignvariableop_33_block5_conv2_kernelIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34≠
AssignVariableOp_34AssignVariableOp%assignvariableop_34_block5_conv2_biasIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35ѓ
AssignVariableOp_35AssignVariableOp'assignvariableop_35_block5_conv3_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36≠
AssignVariableOp_36AssignVariableOp%assignvariableop_36_block5_conv3_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37ѓ
AssignVariableOp_37AssignVariableOp'assignvariableop_37_block5_conv4_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38≠
AssignVariableOp_38AssignVariableOp%assignvariableop_38_block5_conv4_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39°
AssignVariableOp_39AssignVariableOpassignvariableop_39_totalIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOpassignvariableop_40_countIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41£
AssignVariableOp_41AssignVariableOpassignvariableop_41_total_1Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42£
AssignVariableOp_42AssignVariableOpassignvariableop_42_count_1Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43ѓ
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_dense_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44≠
AssignVariableOp_44AssignVariableOp%assignvariableop_44_adam_dense_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45ѓ
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_dense_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46≠
AssignVariableOp_46AssignVariableOp%assignvariableop_46_adam_dense_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_469
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpи
Identity_47Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_47џ
Identity_48IdentityIdentity_47:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_48"#
identity_48Identity_48:output:0*”
_input_shapesЅ
Њ: :::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Џ

а
G__inference_block2_conv2_layer_call_and_return_conditional_losses_35867

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ

а
G__inference_block3_conv4_layer_call_and_return_conditional_losses_33575

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€??А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€??А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€??А
 
_user_specified_nameinputs
£
у
%__inference_model_layer_call_fn_34871
input_11
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32
identityИҐStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_348002
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Ї
_input_shapes®
•:€€€€€€€€€юю::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:€€€€€€€€€юю
"
_user_specified_name
input_11
о
“
%__inference_vgg19_layer_call_fn_34217
input_7
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identityИҐStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_341502
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*≤
_input_shapes†
Э:€€€€€€€€€юю::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€юю
!
_user_specified_name	input_7
¶
G
+__inference_block2_pool_layer_call_fn_33333

inputs
identityк
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_333272
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є
o
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_34224

inputs
identityБ
Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
З
a
B__inference_dropout_layer_call_and_return_conditional_losses_34450

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/yњ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
€
г
@__inference_model_layer_call_and_return_conditional_losses_34572
input_11
vgg19_34499
vgg19_34501
vgg19_34503
vgg19_34505
vgg19_34507
vgg19_34509
vgg19_34511
vgg19_34513
vgg19_34515
vgg19_34517
vgg19_34519
vgg19_34521
vgg19_34523
vgg19_34525
vgg19_34527
vgg19_34529
vgg19_34531
vgg19_34533
vgg19_34535
vgg19_34537
vgg19_34539
vgg19_34541
vgg19_34543
vgg19_34545
vgg19_34547
vgg19_34549
vgg19_34551
vgg19_34553
vgg19_34555
vgg19_34557
vgg19_34559
vgg19_34561
dense_34566
dense_34568
identityИҐdense/StatefulPartitionedCallҐvgg19/StatefulPartitionedCall“
vgg19/StatefulPartitionedCallStatefulPartitionedCallinput_11vgg19_34499vgg19_34501vgg19_34503vgg19_34505vgg19_34507vgg19_34509vgg19_34511vgg19_34513vgg19_34515vgg19_34517vgg19_34519vgg19_34521vgg19_34523vgg19_34525vgg19_34527vgg19_34529vgg19_34531vgg19_34533vgg19_34535vgg19_34537vgg19_34539vgg19_34541vgg19_34543vgg19_34545vgg19_34547vgg19_34549vgg19_34551vgg19_34553vgg19_34555vgg19_34557vgg19_34559vgg19_34561*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_341502
vgg19/StatefulPartitionedCallІ
(global_average_pooling2d/PartitionedCallPartitionedCall&vgg19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_342242*
(global_average_pooling2d/PartitionedCall€
dropout/PartitionedCallPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_344552
dropout/PartitionedCallЯ
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_34566dense_34568*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_344792
dense/StatefulPartitionedCallЇ
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^vgg19/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Ї
_input_shapes®
•:€€€€€€€€€юю::::::::::::::::::::::::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2>
vgg19/StatefulPartitionedCallvgg19/StatefulPartitionedCall:[ W
1
_output_shapes
:€€€€€€€€€юю
"
_user_specified_name
input_11
Џ

а
G__inference_block4_conv1_layer_call_and_return_conditional_losses_35967

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
л
—
%__inference_vgg19_layer_call_fn_35680

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_339922
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*≤
_input_shapes†
Э:€€€€€€€€€юю::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
К
Б
,__inference_block5_conv4_layer_call_fn_36116

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv4_layer_call_and_return_conditional_losses_337932
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ё

а
G__inference_block1_conv1_layer_call_and_return_conditional_losses_35807

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
Relu°
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€юю@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:€€€€€€€€€юю::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
ь
b
F__inference_block4_pool_layer_call_and_return_conditional_losses_33351

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Џ

а
G__inference_block5_conv2_layer_call_and_return_conditional_losses_33739

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Э
с
%__inference_model_layer_call_fn_35296

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32
identityИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_346512
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Ї
_input_shapes®
•:€€€€€€€€€юю::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
®Ё
—
@__inference_model_layer_call_and_return_conditional_losses_35092

inputs5
1vgg19_block1_conv1_conv2d_readvariableop_resource6
2vgg19_block1_conv1_biasadd_readvariableop_resource5
1vgg19_block1_conv2_conv2d_readvariableop_resource6
2vgg19_block1_conv2_biasadd_readvariableop_resource5
1vgg19_block2_conv1_conv2d_readvariableop_resource6
2vgg19_block2_conv1_biasadd_readvariableop_resource5
1vgg19_block2_conv2_conv2d_readvariableop_resource6
2vgg19_block2_conv2_biasadd_readvariableop_resource5
1vgg19_block3_conv1_conv2d_readvariableop_resource6
2vgg19_block3_conv1_biasadd_readvariableop_resource5
1vgg19_block3_conv2_conv2d_readvariableop_resource6
2vgg19_block3_conv2_biasadd_readvariableop_resource5
1vgg19_block3_conv3_conv2d_readvariableop_resource6
2vgg19_block3_conv3_biasadd_readvariableop_resource5
1vgg19_block3_conv4_conv2d_readvariableop_resource6
2vgg19_block3_conv4_biasadd_readvariableop_resource5
1vgg19_block4_conv1_conv2d_readvariableop_resource6
2vgg19_block4_conv1_biasadd_readvariableop_resource5
1vgg19_block4_conv2_conv2d_readvariableop_resource6
2vgg19_block4_conv2_biasadd_readvariableop_resource5
1vgg19_block4_conv3_conv2d_readvariableop_resource6
2vgg19_block4_conv3_biasadd_readvariableop_resource5
1vgg19_block4_conv4_conv2d_readvariableop_resource6
2vgg19_block4_conv4_biasadd_readvariableop_resource5
1vgg19_block5_conv1_conv2d_readvariableop_resource6
2vgg19_block5_conv1_biasadd_readvariableop_resource5
1vgg19_block5_conv2_conv2d_readvariableop_resource6
2vgg19_block5_conv2_biasadd_readvariableop_resource5
1vgg19_block5_conv3_conv2d_readvariableop_resource6
2vgg19_block5_conv3_biasadd_readvariableop_resource5
1vgg19_block5_conv4_conv2d_readvariableop_resource6
2vgg19_block5_conv4_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐ)vgg19/block1_conv1/BiasAdd/ReadVariableOpҐ(vgg19/block1_conv1/Conv2D/ReadVariableOpҐ)vgg19/block1_conv2/BiasAdd/ReadVariableOpҐ(vgg19/block1_conv2/Conv2D/ReadVariableOpҐ)vgg19/block2_conv1/BiasAdd/ReadVariableOpҐ(vgg19/block2_conv1/Conv2D/ReadVariableOpҐ)vgg19/block2_conv2/BiasAdd/ReadVariableOpҐ(vgg19/block2_conv2/Conv2D/ReadVariableOpҐ)vgg19/block3_conv1/BiasAdd/ReadVariableOpҐ(vgg19/block3_conv1/Conv2D/ReadVariableOpҐ)vgg19/block3_conv2/BiasAdd/ReadVariableOpҐ(vgg19/block3_conv2/Conv2D/ReadVariableOpҐ)vgg19/block3_conv3/BiasAdd/ReadVariableOpҐ(vgg19/block3_conv3/Conv2D/ReadVariableOpҐ)vgg19/block3_conv4/BiasAdd/ReadVariableOpҐ(vgg19/block3_conv4/Conv2D/ReadVariableOpҐ)vgg19/block4_conv1/BiasAdd/ReadVariableOpҐ(vgg19/block4_conv1/Conv2D/ReadVariableOpҐ)vgg19/block4_conv2/BiasAdd/ReadVariableOpҐ(vgg19/block4_conv2/Conv2D/ReadVariableOpҐ)vgg19/block4_conv3/BiasAdd/ReadVariableOpҐ(vgg19/block4_conv3/Conv2D/ReadVariableOpҐ)vgg19/block4_conv4/BiasAdd/ReadVariableOpҐ(vgg19/block4_conv4/Conv2D/ReadVariableOpҐ)vgg19/block5_conv1/BiasAdd/ReadVariableOpҐ(vgg19/block5_conv1/Conv2D/ReadVariableOpҐ)vgg19/block5_conv2/BiasAdd/ReadVariableOpҐ(vgg19/block5_conv2/Conv2D/ReadVariableOpҐ)vgg19/block5_conv3/BiasAdd/ReadVariableOpҐ(vgg19/block5_conv3/Conv2D/ReadVariableOpҐ)vgg19/block5_conv4/BiasAdd/ReadVariableOpҐ(vgg19/block5_conv4/Conv2D/ReadVariableOpќ
(vgg19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02*
(vgg19/block1_conv1/Conv2D/ReadVariableOpё
vgg19/block1_conv1/Conv2DConv2Dinputs0vgg19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2
vgg19/block1_conv1/Conv2D≈
)vgg19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg19/block1_conv1/BiasAdd/ReadVariableOp÷
vgg19/block1_conv1/BiasAddBiasAdd"vgg19/block1_conv1/Conv2D:output:01vgg19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
vgg19/block1_conv1/BiasAddЫ
vgg19/block1_conv1/ReluRelu#vgg19/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
vgg19/block1_conv1/Reluќ
(vgg19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(vgg19/block1_conv2/Conv2D/ReadVariableOpэ
vgg19/block1_conv2/Conv2DConv2D%vgg19/block1_conv1/Relu:activations:00vgg19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2
vgg19/block1_conv2/Conv2D≈
)vgg19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg19/block1_conv2/BiasAdd/ReadVariableOp÷
vgg19/block1_conv2/BiasAddBiasAdd"vgg19/block1_conv2/Conv2D:output:01vgg19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
vgg19/block1_conv2/BiasAddЫ
vgg19/block1_conv2/ReluRelu#vgg19/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
vgg19/block1_conv2/Relu’
vgg19/block1_pool/MaxPoolMaxPool%vgg19/block1_conv2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
vgg19/block1_pool/MaxPoolѕ
(vgg19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02*
(vgg19/block2_conv1/Conv2D/ReadVariableOpщ
vgg19/block2_conv1/Conv2DConv2D"vgg19/block1_pool/MaxPool:output:00vgg19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block2_conv1/Conv2D∆
)vgg19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block2_conv1/BiasAdd/ReadVariableOp’
vgg19/block2_conv1/BiasAddBiasAdd"vgg19/block2_conv1/Conv2D:output:01vgg19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block2_conv1/BiasAddЪ
vgg19/block2_conv1/ReluRelu#vgg19/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block2_conv1/Relu–
(vgg19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block2_conv2/Conv2D/ReadVariableOpь
vgg19/block2_conv2/Conv2DConv2D%vgg19/block2_conv1/Relu:activations:00vgg19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block2_conv2/Conv2D∆
)vgg19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block2_conv2/BiasAdd/ReadVariableOp’
vgg19/block2_conv2/BiasAddBiasAdd"vgg19/block2_conv2/Conv2D:output:01vgg19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block2_conv2/BiasAddЪ
vgg19/block2_conv2/ReluRelu#vgg19/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block2_conv2/Relu÷
vgg19/block2_pool/MaxPoolMaxPool%vgg19/block2_conv2/Relu:activations:0*0
_output_shapes
:€€€€€€€€€??А*
ksize
*
paddingVALID*
strides
2
vgg19/block2_pool/MaxPool–
(vgg19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block3_conv1/Conv2D/ReadVariableOpщ
vgg19/block3_conv1/Conv2DConv2D"vgg19/block2_pool/MaxPool:output:00vgg19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
vgg19/block3_conv1/Conv2D∆
)vgg19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block3_conv1/BiasAdd/ReadVariableOp’
vgg19/block3_conv1/BiasAddBiasAdd"vgg19/block3_conv1/Conv2D:output:01vgg19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv1/BiasAddЪ
vgg19/block3_conv1/ReluRelu#vgg19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv1/Relu–
(vgg19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block3_conv2/Conv2D/ReadVariableOpь
vgg19/block3_conv2/Conv2DConv2D%vgg19/block3_conv1/Relu:activations:00vgg19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
vgg19/block3_conv2/Conv2D∆
)vgg19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block3_conv2/BiasAdd/ReadVariableOp’
vgg19/block3_conv2/BiasAddBiasAdd"vgg19/block3_conv2/Conv2D:output:01vgg19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv2/BiasAddЪ
vgg19/block3_conv2/ReluRelu#vgg19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv2/Relu–
(vgg19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block3_conv3/Conv2D/ReadVariableOpь
vgg19/block3_conv3/Conv2DConv2D%vgg19/block3_conv2/Relu:activations:00vgg19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
vgg19/block3_conv3/Conv2D∆
)vgg19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block3_conv3/BiasAdd/ReadVariableOp’
vgg19/block3_conv3/BiasAddBiasAdd"vgg19/block3_conv3/Conv2D:output:01vgg19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv3/BiasAddЪ
vgg19/block3_conv3/ReluRelu#vgg19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv3/Relu–
(vgg19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block3_conv4/Conv2D/ReadVariableOpь
vgg19/block3_conv4/Conv2DConv2D%vgg19/block3_conv3/Relu:activations:00vgg19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
vgg19/block3_conv4/Conv2D∆
)vgg19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block3_conv4/BiasAdd/ReadVariableOp’
vgg19/block3_conv4/BiasAddBiasAdd"vgg19/block3_conv4/Conv2D:output:01vgg19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv4/BiasAddЪ
vgg19/block3_conv4/ReluRelu#vgg19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv4/Relu÷
vgg19/block3_pool/MaxPoolMaxPool%vgg19/block3_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
vgg19/block3_pool/MaxPool–
(vgg19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block4_conv1/Conv2D/ReadVariableOpщ
vgg19/block4_conv1/Conv2DConv2D"vgg19/block3_pool/MaxPool:output:00vgg19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block4_conv1/Conv2D∆
)vgg19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block4_conv1/BiasAdd/ReadVariableOp’
vgg19/block4_conv1/BiasAddBiasAdd"vgg19/block4_conv1/Conv2D:output:01vgg19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv1/BiasAddЪ
vgg19/block4_conv1/ReluRelu#vgg19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv1/Relu–
(vgg19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block4_conv2/Conv2D/ReadVariableOpь
vgg19/block4_conv2/Conv2DConv2D%vgg19/block4_conv1/Relu:activations:00vgg19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block4_conv2/Conv2D∆
)vgg19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block4_conv2/BiasAdd/ReadVariableOp’
vgg19/block4_conv2/BiasAddBiasAdd"vgg19/block4_conv2/Conv2D:output:01vgg19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv2/BiasAddЪ
vgg19/block4_conv2/ReluRelu#vgg19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv2/Relu–
(vgg19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block4_conv3/Conv2D/ReadVariableOpь
vgg19/block4_conv3/Conv2DConv2D%vgg19/block4_conv2/Relu:activations:00vgg19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block4_conv3/Conv2D∆
)vgg19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block4_conv3/BiasAdd/ReadVariableOp’
vgg19/block4_conv3/BiasAddBiasAdd"vgg19/block4_conv3/Conv2D:output:01vgg19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv3/BiasAddЪ
vgg19/block4_conv3/ReluRelu#vgg19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv3/Relu–
(vgg19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block4_conv4/Conv2D/ReadVariableOpь
vgg19/block4_conv4/Conv2DConv2D%vgg19/block4_conv3/Relu:activations:00vgg19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block4_conv4/Conv2D∆
)vgg19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block4_conv4/BiasAdd/ReadVariableOp’
vgg19/block4_conv4/BiasAddBiasAdd"vgg19/block4_conv4/Conv2D:output:01vgg19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv4/BiasAddЪ
vgg19/block4_conv4/ReluRelu#vgg19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv4/Relu÷
vgg19/block4_pool/MaxPoolMaxPool%vgg19/block4_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
vgg19/block4_pool/MaxPool–
(vgg19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block5_conv1/Conv2D/ReadVariableOpщ
vgg19/block5_conv1/Conv2DConv2D"vgg19/block4_pool/MaxPool:output:00vgg19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block5_conv1/Conv2D∆
)vgg19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block5_conv1/BiasAdd/ReadVariableOp’
vgg19/block5_conv1/BiasAddBiasAdd"vgg19/block5_conv1/Conv2D:output:01vgg19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv1/BiasAddЪ
vgg19/block5_conv1/ReluRelu#vgg19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv1/Relu–
(vgg19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block5_conv2/Conv2D/ReadVariableOpь
vgg19/block5_conv2/Conv2DConv2D%vgg19/block5_conv1/Relu:activations:00vgg19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block5_conv2/Conv2D∆
)vgg19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block5_conv2/BiasAdd/ReadVariableOp’
vgg19/block5_conv2/BiasAddBiasAdd"vgg19/block5_conv2/Conv2D:output:01vgg19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv2/BiasAddЪ
vgg19/block5_conv2/ReluRelu#vgg19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv2/Relu–
(vgg19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block5_conv3/Conv2D/ReadVariableOpь
vgg19/block5_conv3/Conv2DConv2D%vgg19/block5_conv2/Relu:activations:00vgg19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block5_conv3/Conv2D∆
)vgg19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block5_conv3/BiasAdd/ReadVariableOp’
vgg19/block5_conv3/BiasAddBiasAdd"vgg19/block5_conv3/Conv2D:output:01vgg19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv3/BiasAddЪ
vgg19/block5_conv3/ReluRelu#vgg19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv3/Relu–
(vgg19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block5_conv4/Conv2D/ReadVariableOpь
vgg19/block5_conv4/Conv2DConv2D%vgg19/block5_conv3/Relu:activations:00vgg19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block5_conv4/Conv2D∆
)vgg19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block5_conv4/BiasAdd/ReadVariableOp’
vgg19/block5_conv4/BiasAddBiasAdd"vgg19/block5_conv4/Conv2D:output:01vgg19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv4/BiasAddЪ
vgg19/block5_conv4/ReluRelu#vgg19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv4/Relu÷
vgg19/block5_pool/MaxPoolMaxPool%vgg19/block5_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
vgg19/block5_pool/MaxPool≥
/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      21
/global_average_pooling2d/Mean/reduction_indices„
global_average_pooling2d/MeanMean"vgg19/block5_pool/MaxPool:output:08global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
global_average_pooling2d/Means
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Constђ
dropout/dropout/MulMul&global_average_pooling2d/Mean:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/dropout/MulД
dropout/dropout/ShapeShape&global_average_pooling2d/Mean:output:0*
T0*
_output_shapes
:2
dropout/dropout/ShapeЌ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/yя
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/dropout/GreaterEqualШ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€А2
dropout/dropout/CastЫ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/dropout/Mul_1†
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMuldropout/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/SigmoidТ
IdentityIdentitydense/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*^vgg19/block1_conv1/BiasAdd/ReadVariableOp)^vgg19/block1_conv1/Conv2D/ReadVariableOp*^vgg19/block1_conv2/BiasAdd/ReadVariableOp)^vgg19/block1_conv2/Conv2D/ReadVariableOp*^vgg19/block2_conv1/BiasAdd/ReadVariableOp)^vgg19/block2_conv1/Conv2D/ReadVariableOp*^vgg19/block2_conv2/BiasAdd/ReadVariableOp)^vgg19/block2_conv2/Conv2D/ReadVariableOp*^vgg19/block3_conv1/BiasAdd/ReadVariableOp)^vgg19/block3_conv1/Conv2D/ReadVariableOp*^vgg19/block3_conv2/BiasAdd/ReadVariableOp)^vgg19/block3_conv2/Conv2D/ReadVariableOp*^vgg19/block3_conv3/BiasAdd/ReadVariableOp)^vgg19/block3_conv3/Conv2D/ReadVariableOp*^vgg19/block3_conv4/BiasAdd/ReadVariableOp)^vgg19/block3_conv4/Conv2D/ReadVariableOp*^vgg19/block4_conv1/BiasAdd/ReadVariableOp)^vgg19/block4_conv1/Conv2D/ReadVariableOp*^vgg19/block4_conv2/BiasAdd/ReadVariableOp)^vgg19/block4_conv2/Conv2D/ReadVariableOp*^vgg19/block4_conv3/BiasAdd/ReadVariableOp)^vgg19/block4_conv3/Conv2D/ReadVariableOp*^vgg19/block4_conv4/BiasAdd/ReadVariableOp)^vgg19/block4_conv4/Conv2D/ReadVariableOp*^vgg19/block5_conv1/BiasAdd/ReadVariableOp)^vgg19/block5_conv1/Conv2D/ReadVariableOp*^vgg19/block5_conv2/BiasAdd/ReadVariableOp)^vgg19/block5_conv2/Conv2D/ReadVariableOp*^vgg19/block5_conv3/BiasAdd/ReadVariableOp)^vgg19/block5_conv3/Conv2D/ReadVariableOp*^vgg19/block5_conv4/BiasAdd/ReadVariableOp)^vgg19/block5_conv4/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Ї
_input_shapes®
•:€€€€€€€€€юю::::::::::::::::::::::::::::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2V
)vgg19/block1_conv1/BiasAdd/ReadVariableOp)vgg19/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block1_conv1/Conv2D/ReadVariableOp(vgg19/block1_conv1/Conv2D/ReadVariableOp2V
)vgg19/block1_conv2/BiasAdd/ReadVariableOp)vgg19/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block1_conv2/Conv2D/ReadVariableOp(vgg19/block1_conv2/Conv2D/ReadVariableOp2V
)vgg19/block2_conv1/BiasAdd/ReadVariableOp)vgg19/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block2_conv1/Conv2D/ReadVariableOp(vgg19/block2_conv1/Conv2D/ReadVariableOp2V
)vgg19/block2_conv2/BiasAdd/ReadVariableOp)vgg19/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block2_conv2/Conv2D/ReadVariableOp(vgg19/block2_conv2/Conv2D/ReadVariableOp2V
)vgg19/block3_conv1/BiasAdd/ReadVariableOp)vgg19/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv1/Conv2D/ReadVariableOp(vgg19/block3_conv1/Conv2D/ReadVariableOp2V
)vgg19/block3_conv2/BiasAdd/ReadVariableOp)vgg19/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv2/Conv2D/ReadVariableOp(vgg19/block3_conv2/Conv2D/ReadVariableOp2V
)vgg19/block3_conv3/BiasAdd/ReadVariableOp)vgg19/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv3/Conv2D/ReadVariableOp(vgg19/block3_conv3/Conv2D/ReadVariableOp2V
)vgg19/block3_conv4/BiasAdd/ReadVariableOp)vgg19/block3_conv4/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv4/Conv2D/ReadVariableOp(vgg19/block3_conv4/Conv2D/ReadVariableOp2V
)vgg19/block4_conv1/BiasAdd/ReadVariableOp)vgg19/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv1/Conv2D/ReadVariableOp(vgg19/block4_conv1/Conv2D/ReadVariableOp2V
)vgg19/block4_conv2/BiasAdd/ReadVariableOp)vgg19/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv2/Conv2D/ReadVariableOp(vgg19/block4_conv2/Conv2D/ReadVariableOp2V
)vgg19/block4_conv3/BiasAdd/ReadVariableOp)vgg19/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv3/Conv2D/ReadVariableOp(vgg19/block4_conv3/Conv2D/ReadVariableOp2V
)vgg19/block4_conv4/BiasAdd/ReadVariableOp)vgg19/block4_conv4/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv4/Conv2D/ReadVariableOp(vgg19/block4_conv4/Conv2D/ReadVariableOp2V
)vgg19/block5_conv1/BiasAdd/ReadVariableOp)vgg19/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv1/Conv2D/ReadVariableOp(vgg19/block5_conv1/Conv2D/ReadVariableOp2V
)vgg19/block5_conv2/BiasAdd/ReadVariableOp)vgg19/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv2/Conv2D/ReadVariableOp(vgg19/block5_conv2/Conv2D/ReadVariableOp2V
)vgg19/block5_conv3/BiasAdd/ReadVariableOp)vgg19/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv3/Conv2D/ReadVariableOp(vgg19/block5_conv3/Conv2D/ReadVariableOp2V
)vgg19/block5_conv4/BiasAdd/ReadVariableOp)vgg19/block5_conv4/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv4/Conv2D/ReadVariableOp(vgg19/block5_conv4/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
…
`
B__inference_dropout_layer_call_and_return_conditional_losses_35766

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
К
Б
,__inference_block5_conv3_layer_call_fn_36096

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_337662
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
К
Б
,__inference_block4_conv3_layer_call_fn_36016

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_336572
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ

а
G__inference_block4_conv2_layer_call_and_return_conditional_losses_35987

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
О
Б
,__inference_block1_conv1_layer_call_fn_35816

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_333842
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:€€€€€€€€€юю@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:€€€€€€€€€юю::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
„

а
G__inference_block2_conv1_layer_call_and_return_conditional_losses_35847

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ў
z
%__inference_dense_layer_call_fn_35796

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_344792
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
°
`
'__inference_dropout_layer_call_fn_35771

inputs
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_344502
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*'
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
К
Б
,__inference_block4_conv4_layer_call_fn_36036

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv4_layer_call_and_return_conditional_losses_336842
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ш‘
—
@__inference_model_layer_call_and_return_conditional_losses_35223

inputs5
1vgg19_block1_conv1_conv2d_readvariableop_resource6
2vgg19_block1_conv1_biasadd_readvariableop_resource5
1vgg19_block1_conv2_conv2d_readvariableop_resource6
2vgg19_block1_conv2_biasadd_readvariableop_resource5
1vgg19_block2_conv1_conv2d_readvariableop_resource6
2vgg19_block2_conv1_biasadd_readvariableop_resource5
1vgg19_block2_conv2_conv2d_readvariableop_resource6
2vgg19_block2_conv2_biasadd_readvariableop_resource5
1vgg19_block3_conv1_conv2d_readvariableop_resource6
2vgg19_block3_conv1_biasadd_readvariableop_resource5
1vgg19_block3_conv2_conv2d_readvariableop_resource6
2vgg19_block3_conv2_biasadd_readvariableop_resource5
1vgg19_block3_conv3_conv2d_readvariableop_resource6
2vgg19_block3_conv3_biasadd_readvariableop_resource5
1vgg19_block3_conv4_conv2d_readvariableop_resource6
2vgg19_block3_conv4_biasadd_readvariableop_resource5
1vgg19_block4_conv1_conv2d_readvariableop_resource6
2vgg19_block4_conv1_biasadd_readvariableop_resource5
1vgg19_block4_conv2_conv2d_readvariableop_resource6
2vgg19_block4_conv2_biasadd_readvariableop_resource5
1vgg19_block4_conv3_conv2d_readvariableop_resource6
2vgg19_block4_conv3_biasadd_readvariableop_resource5
1vgg19_block4_conv4_conv2d_readvariableop_resource6
2vgg19_block4_conv4_biasadd_readvariableop_resource5
1vgg19_block5_conv1_conv2d_readvariableop_resource6
2vgg19_block5_conv1_biasadd_readvariableop_resource5
1vgg19_block5_conv2_conv2d_readvariableop_resource6
2vgg19_block5_conv2_biasadd_readvariableop_resource5
1vgg19_block5_conv3_conv2d_readvariableop_resource6
2vgg19_block5_conv3_biasadd_readvariableop_resource5
1vgg19_block5_conv4_conv2d_readvariableop_resource6
2vgg19_block5_conv4_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐ)vgg19/block1_conv1/BiasAdd/ReadVariableOpҐ(vgg19/block1_conv1/Conv2D/ReadVariableOpҐ)vgg19/block1_conv2/BiasAdd/ReadVariableOpҐ(vgg19/block1_conv2/Conv2D/ReadVariableOpҐ)vgg19/block2_conv1/BiasAdd/ReadVariableOpҐ(vgg19/block2_conv1/Conv2D/ReadVariableOpҐ)vgg19/block2_conv2/BiasAdd/ReadVariableOpҐ(vgg19/block2_conv2/Conv2D/ReadVariableOpҐ)vgg19/block3_conv1/BiasAdd/ReadVariableOpҐ(vgg19/block3_conv1/Conv2D/ReadVariableOpҐ)vgg19/block3_conv2/BiasAdd/ReadVariableOpҐ(vgg19/block3_conv2/Conv2D/ReadVariableOpҐ)vgg19/block3_conv3/BiasAdd/ReadVariableOpҐ(vgg19/block3_conv3/Conv2D/ReadVariableOpҐ)vgg19/block3_conv4/BiasAdd/ReadVariableOpҐ(vgg19/block3_conv4/Conv2D/ReadVariableOpҐ)vgg19/block4_conv1/BiasAdd/ReadVariableOpҐ(vgg19/block4_conv1/Conv2D/ReadVariableOpҐ)vgg19/block4_conv2/BiasAdd/ReadVariableOpҐ(vgg19/block4_conv2/Conv2D/ReadVariableOpҐ)vgg19/block4_conv3/BiasAdd/ReadVariableOpҐ(vgg19/block4_conv3/Conv2D/ReadVariableOpҐ)vgg19/block4_conv4/BiasAdd/ReadVariableOpҐ(vgg19/block4_conv4/Conv2D/ReadVariableOpҐ)vgg19/block5_conv1/BiasAdd/ReadVariableOpҐ(vgg19/block5_conv1/Conv2D/ReadVariableOpҐ)vgg19/block5_conv2/BiasAdd/ReadVariableOpҐ(vgg19/block5_conv2/Conv2D/ReadVariableOpҐ)vgg19/block5_conv3/BiasAdd/ReadVariableOpҐ(vgg19/block5_conv3/Conv2D/ReadVariableOpҐ)vgg19/block5_conv4/BiasAdd/ReadVariableOpҐ(vgg19/block5_conv4/Conv2D/ReadVariableOpќ
(vgg19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02*
(vgg19/block1_conv1/Conv2D/ReadVariableOpё
vgg19/block1_conv1/Conv2DConv2Dinputs0vgg19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2
vgg19/block1_conv1/Conv2D≈
)vgg19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg19/block1_conv1/BiasAdd/ReadVariableOp÷
vgg19/block1_conv1/BiasAddBiasAdd"vgg19/block1_conv1/Conv2D:output:01vgg19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
vgg19/block1_conv1/BiasAddЫ
vgg19/block1_conv1/ReluRelu#vgg19/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
vgg19/block1_conv1/Reluќ
(vgg19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02*
(vgg19/block1_conv2/Conv2D/ReadVariableOpэ
vgg19/block1_conv2/Conv2DConv2D%vgg19/block1_conv1/Relu:activations:00vgg19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2
vgg19/block1_conv2/Conv2D≈
)vgg19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)vgg19/block1_conv2/BiasAdd/ReadVariableOp÷
vgg19/block1_conv2/BiasAddBiasAdd"vgg19/block1_conv2/Conv2D:output:01vgg19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
vgg19/block1_conv2/BiasAddЫ
vgg19/block1_conv2/ReluRelu#vgg19/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
vgg19/block1_conv2/Relu’
vgg19/block1_pool/MaxPoolMaxPool%vgg19/block1_conv2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
vgg19/block1_pool/MaxPoolѕ
(vgg19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02*
(vgg19/block2_conv1/Conv2D/ReadVariableOpщ
vgg19/block2_conv1/Conv2DConv2D"vgg19/block1_pool/MaxPool:output:00vgg19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block2_conv1/Conv2D∆
)vgg19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block2_conv1/BiasAdd/ReadVariableOp’
vgg19/block2_conv1/BiasAddBiasAdd"vgg19/block2_conv1/Conv2D:output:01vgg19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block2_conv1/BiasAddЪ
vgg19/block2_conv1/ReluRelu#vgg19/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block2_conv1/Relu–
(vgg19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block2_conv2/Conv2D/ReadVariableOpь
vgg19/block2_conv2/Conv2DConv2D%vgg19/block2_conv1/Relu:activations:00vgg19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block2_conv2/Conv2D∆
)vgg19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block2_conv2/BiasAdd/ReadVariableOp’
vgg19/block2_conv2/BiasAddBiasAdd"vgg19/block2_conv2/Conv2D:output:01vgg19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block2_conv2/BiasAddЪ
vgg19/block2_conv2/ReluRelu#vgg19/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block2_conv2/Relu÷
vgg19/block2_pool/MaxPoolMaxPool%vgg19/block2_conv2/Relu:activations:0*0
_output_shapes
:€€€€€€€€€??А*
ksize
*
paddingVALID*
strides
2
vgg19/block2_pool/MaxPool–
(vgg19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block3_conv1/Conv2D/ReadVariableOpщ
vgg19/block3_conv1/Conv2DConv2D"vgg19/block2_pool/MaxPool:output:00vgg19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
vgg19/block3_conv1/Conv2D∆
)vgg19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block3_conv1/BiasAdd/ReadVariableOp’
vgg19/block3_conv1/BiasAddBiasAdd"vgg19/block3_conv1/Conv2D:output:01vgg19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv1/BiasAddЪ
vgg19/block3_conv1/ReluRelu#vgg19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv1/Relu–
(vgg19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block3_conv2/Conv2D/ReadVariableOpь
vgg19/block3_conv2/Conv2DConv2D%vgg19/block3_conv1/Relu:activations:00vgg19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
vgg19/block3_conv2/Conv2D∆
)vgg19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block3_conv2/BiasAdd/ReadVariableOp’
vgg19/block3_conv2/BiasAddBiasAdd"vgg19/block3_conv2/Conv2D:output:01vgg19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv2/BiasAddЪ
vgg19/block3_conv2/ReluRelu#vgg19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv2/Relu–
(vgg19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block3_conv3/Conv2D/ReadVariableOpь
vgg19/block3_conv3/Conv2DConv2D%vgg19/block3_conv2/Relu:activations:00vgg19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
vgg19/block3_conv3/Conv2D∆
)vgg19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block3_conv3/BiasAdd/ReadVariableOp’
vgg19/block3_conv3/BiasAddBiasAdd"vgg19/block3_conv3/Conv2D:output:01vgg19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv3/BiasAddЪ
vgg19/block3_conv3/ReluRelu#vgg19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv3/Relu–
(vgg19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp1vgg19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block3_conv4/Conv2D/ReadVariableOpь
vgg19/block3_conv4/Conv2DConv2D%vgg19/block3_conv3/Relu:activations:00vgg19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
vgg19/block3_conv4/Conv2D∆
)vgg19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block3_conv4/BiasAdd/ReadVariableOp’
vgg19/block3_conv4/BiasAddBiasAdd"vgg19/block3_conv4/Conv2D:output:01vgg19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv4/BiasAddЪ
vgg19/block3_conv4/ReluRelu#vgg19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
vgg19/block3_conv4/Relu÷
vgg19/block3_pool/MaxPoolMaxPool%vgg19/block3_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
vgg19/block3_pool/MaxPool–
(vgg19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block4_conv1/Conv2D/ReadVariableOpщ
vgg19/block4_conv1/Conv2DConv2D"vgg19/block3_pool/MaxPool:output:00vgg19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block4_conv1/Conv2D∆
)vgg19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block4_conv1/BiasAdd/ReadVariableOp’
vgg19/block4_conv1/BiasAddBiasAdd"vgg19/block4_conv1/Conv2D:output:01vgg19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv1/BiasAddЪ
vgg19/block4_conv1/ReluRelu#vgg19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv1/Relu–
(vgg19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block4_conv2/Conv2D/ReadVariableOpь
vgg19/block4_conv2/Conv2DConv2D%vgg19/block4_conv1/Relu:activations:00vgg19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block4_conv2/Conv2D∆
)vgg19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block4_conv2/BiasAdd/ReadVariableOp’
vgg19/block4_conv2/BiasAddBiasAdd"vgg19/block4_conv2/Conv2D:output:01vgg19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv2/BiasAddЪ
vgg19/block4_conv2/ReluRelu#vgg19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv2/Relu–
(vgg19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block4_conv3/Conv2D/ReadVariableOpь
vgg19/block4_conv3/Conv2DConv2D%vgg19/block4_conv2/Relu:activations:00vgg19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block4_conv3/Conv2D∆
)vgg19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block4_conv3/BiasAdd/ReadVariableOp’
vgg19/block4_conv3/BiasAddBiasAdd"vgg19/block4_conv3/Conv2D:output:01vgg19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv3/BiasAddЪ
vgg19/block4_conv3/ReluRelu#vgg19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv3/Relu–
(vgg19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp1vgg19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block4_conv4/Conv2D/ReadVariableOpь
vgg19/block4_conv4/Conv2DConv2D%vgg19/block4_conv3/Relu:activations:00vgg19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block4_conv4/Conv2D∆
)vgg19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block4_conv4/BiasAdd/ReadVariableOp’
vgg19/block4_conv4/BiasAddBiasAdd"vgg19/block4_conv4/Conv2D:output:01vgg19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv4/BiasAddЪ
vgg19/block4_conv4/ReluRelu#vgg19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block4_conv4/Relu÷
vgg19/block4_pool/MaxPoolMaxPool%vgg19/block4_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
vgg19/block4_pool/MaxPool–
(vgg19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block5_conv1/Conv2D/ReadVariableOpщ
vgg19/block5_conv1/Conv2DConv2D"vgg19/block4_pool/MaxPool:output:00vgg19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block5_conv1/Conv2D∆
)vgg19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block5_conv1/BiasAdd/ReadVariableOp’
vgg19/block5_conv1/BiasAddBiasAdd"vgg19/block5_conv1/Conv2D:output:01vgg19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv1/BiasAddЪ
vgg19/block5_conv1/ReluRelu#vgg19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv1/Relu–
(vgg19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block5_conv2/Conv2D/ReadVariableOpь
vgg19/block5_conv2/Conv2DConv2D%vgg19/block5_conv1/Relu:activations:00vgg19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block5_conv2/Conv2D∆
)vgg19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block5_conv2/BiasAdd/ReadVariableOp’
vgg19/block5_conv2/BiasAddBiasAdd"vgg19/block5_conv2/Conv2D:output:01vgg19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv2/BiasAddЪ
vgg19/block5_conv2/ReluRelu#vgg19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv2/Relu–
(vgg19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block5_conv3/Conv2D/ReadVariableOpь
vgg19/block5_conv3/Conv2DConv2D%vgg19/block5_conv2/Relu:activations:00vgg19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block5_conv3/Conv2D∆
)vgg19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block5_conv3/BiasAdd/ReadVariableOp’
vgg19/block5_conv3/BiasAddBiasAdd"vgg19/block5_conv3/Conv2D:output:01vgg19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv3/BiasAddЪ
vgg19/block5_conv3/ReluRelu#vgg19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv3/Relu–
(vgg19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp1vgg19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02*
(vgg19/block5_conv4/Conv2D/ReadVariableOpь
vgg19/block5_conv4/Conv2DConv2D%vgg19/block5_conv3/Relu:activations:00vgg19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
vgg19/block5_conv4/Conv2D∆
)vgg19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp2vgg19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02+
)vgg19/block5_conv4/BiasAdd/ReadVariableOp’
vgg19/block5_conv4/BiasAddBiasAdd"vgg19/block5_conv4/Conv2D:output:01vgg19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv4/BiasAddЪ
vgg19/block5_conv4/ReluRelu#vgg19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
vgg19/block5_conv4/Relu÷
vgg19/block5_pool/MaxPoolMaxPool%vgg19/block5_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
vgg19/block5_pool/MaxPool≥
/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      21
/global_average_pooling2d/Mean/reduction_indices„
global_average_pooling2d/MeanMean"vgg19/block5_pool/MaxPool:output:08global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
global_average_pooling2d/MeanЛ
dropout/IdentityIdentity&global_average_pooling2d/Mean:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dropout/Identity†
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/SigmoidТ
IdentityIdentitydense/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*^vgg19/block1_conv1/BiasAdd/ReadVariableOp)^vgg19/block1_conv1/Conv2D/ReadVariableOp*^vgg19/block1_conv2/BiasAdd/ReadVariableOp)^vgg19/block1_conv2/Conv2D/ReadVariableOp*^vgg19/block2_conv1/BiasAdd/ReadVariableOp)^vgg19/block2_conv1/Conv2D/ReadVariableOp*^vgg19/block2_conv2/BiasAdd/ReadVariableOp)^vgg19/block2_conv2/Conv2D/ReadVariableOp*^vgg19/block3_conv1/BiasAdd/ReadVariableOp)^vgg19/block3_conv1/Conv2D/ReadVariableOp*^vgg19/block3_conv2/BiasAdd/ReadVariableOp)^vgg19/block3_conv2/Conv2D/ReadVariableOp*^vgg19/block3_conv3/BiasAdd/ReadVariableOp)^vgg19/block3_conv3/Conv2D/ReadVariableOp*^vgg19/block3_conv4/BiasAdd/ReadVariableOp)^vgg19/block3_conv4/Conv2D/ReadVariableOp*^vgg19/block4_conv1/BiasAdd/ReadVariableOp)^vgg19/block4_conv1/Conv2D/ReadVariableOp*^vgg19/block4_conv2/BiasAdd/ReadVariableOp)^vgg19/block4_conv2/Conv2D/ReadVariableOp*^vgg19/block4_conv3/BiasAdd/ReadVariableOp)^vgg19/block4_conv3/Conv2D/ReadVariableOp*^vgg19/block4_conv4/BiasAdd/ReadVariableOp)^vgg19/block4_conv4/Conv2D/ReadVariableOp*^vgg19/block5_conv1/BiasAdd/ReadVariableOp)^vgg19/block5_conv1/Conv2D/ReadVariableOp*^vgg19/block5_conv2/BiasAdd/ReadVariableOp)^vgg19/block5_conv2/Conv2D/ReadVariableOp*^vgg19/block5_conv3/BiasAdd/ReadVariableOp)^vgg19/block5_conv3/Conv2D/ReadVariableOp*^vgg19/block5_conv4/BiasAdd/ReadVariableOp)^vgg19/block5_conv4/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Ї
_input_shapes®
•:€€€€€€€€€юю::::::::::::::::::::::::::::::::::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2V
)vgg19/block1_conv1/BiasAdd/ReadVariableOp)vgg19/block1_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block1_conv1/Conv2D/ReadVariableOp(vgg19/block1_conv1/Conv2D/ReadVariableOp2V
)vgg19/block1_conv2/BiasAdd/ReadVariableOp)vgg19/block1_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block1_conv2/Conv2D/ReadVariableOp(vgg19/block1_conv2/Conv2D/ReadVariableOp2V
)vgg19/block2_conv1/BiasAdd/ReadVariableOp)vgg19/block2_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block2_conv1/Conv2D/ReadVariableOp(vgg19/block2_conv1/Conv2D/ReadVariableOp2V
)vgg19/block2_conv2/BiasAdd/ReadVariableOp)vgg19/block2_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block2_conv2/Conv2D/ReadVariableOp(vgg19/block2_conv2/Conv2D/ReadVariableOp2V
)vgg19/block3_conv1/BiasAdd/ReadVariableOp)vgg19/block3_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv1/Conv2D/ReadVariableOp(vgg19/block3_conv1/Conv2D/ReadVariableOp2V
)vgg19/block3_conv2/BiasAdd/ReadVariableOp)vgg19/block3_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv2/Conv2D/ReadVariableOp(vgg19/block3_conv2/Conv2D/ReadVariableOp2V
)vgg19/block3_conv3/BiasAdd/ReadVariableOp)vgg19/block3_conv3/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv3/Conv2D/ReadVariableOp(vgg19/block3_conv3/Conv2D/ReadVariableOp2V
)vgg19/block3_conv4/BiasAdd/ReadVariableOp)vgg19/block3_conv4/BiasAdd/ReadVariableOp2T
(vgg19/block3_conv4/Conv2D/ReadVariableOp(vgg19/block3_conv4/Conv2D/ReadVariableOp2V
)vgg19/block4_conv1/BiasAdd/ReadVariableOp)vgg19/block4_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv1/Conv2D/ReadVariableOp(vgg19/block4_conv1/Conv2D/ReadVariableOp2V
)vgg19/block4_conv2/BiasAdd/ReadVariableOp)vgg19/block4_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv2/Conv2D/ReadVariableOp(vgg19/block4_conv2/Conv2D/ReadVariableOp2V
)vgg19/block4_conv3/BiasAdd/ReadVariableOp)vgg19/block4_conv3/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv3/Conv2D/ReadVariableOp(vgg19/block4_conv3/Conv2D/ReadVariableOp2V
)vgg19/block4_conv4/BiasAdd/ReadVariableOp)vgg19/block4_conv4/BiasAdd/ReadVariableOp2T
(vgg19/block4_conv4/Conv2D/ReadVariableOp(vgg19/block4_conv4/Conv2D/ReadVariableOp2V
)vgg19/block5_conv1/BiasAdd/ReadVariableOp)vgg19/block5_conv1/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv1/Conv2D/ReadVariableOp(vgg19/block5_conv1/Conv2D/ReadVariableOp2V
)vgg19/block5_conv2/BiasAdd/ReadVariableOp)vgg19/block5_conv2/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv2/Conv2D/ReadVariableOp(vgg19/block5_conv2/Conv2D/ReadVariableOp2V
)vgg19/block5_conv3/BiasAdd/ReadVariableOp)vgg19/block5_conv3/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv3/Conv2D/ReadVariableOp(vgg19/block5_conv3/Conv2D/ReadVariableOp2V
)vgg19/block5_conv4/BiasAdd/ReadVariableOp)vgg19/block5_conv4/BiasAdd/ReadVariableOp2T
(vgg19/block5_conv4/Conv2D/ReadVariableOp(vgg19/block5_conv4/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
Џ

а
G__inference_block5_conv4_layer_call_and_return_conditional_losses_36107

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
К
Б
,__inference_block5_conv2_layer_call_fn_36076

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_337392
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Хh
ѕ
@__inference_vgg19_layer_call_and_return_conditional_losses_34150

inputs
block1_conv1_34064
block1_conv1_34066
block1_conv2_34069
block1_conv2_34071
block2_conv1_34075
block2_conv1_34077
block2_conv2_34080
block2_conv2_34082
block3_conv1_34086
block3_conv1_34088
block3_conv2_34091
block3_conv2_34093
block3_conv3_34096
block3_conv3_34098
block3_conv4_34101
block3_conv4_34103
block4_conv1_34107
block4_conv1_34109
block4_conv2_34112
block4_conv2_34114
block4_conv3_34117
block4_conv3_34119
block4_conv4_34122
block4_conv4_34124
block5_conv1_34128
block5_conv1_34130
block5_conv2_34133
block5_conv2_34135
block5_conv3_34138
block5_conv3_34140
block5_conv4_34143
block5_conv4_34145
identityИҐ$block1_conv1/StatefulPartitionedCallҐ$block1_conv2/StatefulPartitionedCallҐ$block2_conv1/StatefulPartitionedCallҐ$block2_conv2/StatefulPartitionedCallҐ$block3_conv1/StatefulPartitionedCallҐ$block3_conv2/StatefulPartitionedCallҐ$block3_conv3/StatefulPartitionedCallҐ$block3_conv4/StatefulPartitionedCallҐ$block4_conv1/StatefulPartitionedCallҐ$block4_conv2/StatefulPartitionedCallҐ$block4_conv3/StatefulPartitionedCallҐ$block4_conv4/StatefulPartitionedCallҐ$block5_conv1/StatefulPartitionedCallҐ$block5_conv2/StatefulPartitionedCallҐ$block5_conv3/StatefulPartitionedCallҐ$block5_conv4/StatefulPartitionedCall≤
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_34064block1_conv1_34066*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_333842&
$block1_conv1/StatefulPartitionedCallў
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_34069block1_conv2_34071*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_334112&
$block1_conv2/StatefulPartitionedCallО
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_333152
block1_pool/PartitionedCallѕ
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_34075block2_conv1_34077*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_334392&
$block2_conv1/StatefulPartitionedCallЎ
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_34080block2_conv2_34082*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_334662&
$block2_conv2/StatefulPartitionedCallП
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_333272
block2_pool/PartitionedCallѕ
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_34086block3_conv1_34088*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_334942&
$block3_conv1/StatefulPartitionedCallЎ
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_34091block3_conv2_34093*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_335212&
$block3_conv2/StatefulPartitionedCallЎ
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_34096block3_conv3_34098*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_335482&
$block3_conv3/StatefulPartitionedCallЎ
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_34101block3_conv4_34103*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv4_layer_call_and_return_conditional_losses_335752&
$block3_conv4/StatefulPartitionedCallП
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_333392
block3_pool/PartitionedCallѕ
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_34107block4_conv1_34109*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_336032&
$block4_conv1/StatefulPartitionedCallЎ
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_34112block4_conv2_34114*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_336302&
$block4_conv2/StatefulPartitionedCallЎ
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_34117block4_conv3_34119*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_336572&
$block4_conv3/StatefulPartitionedCallЎ
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_34122block4_conv4_34124*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv4_layer_call_and_return_conditional_losses_336842&
$block4_conv4/StatefulPartitionedCallП
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_333512
block4_pool/PartitionedCallѕ
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_34128block5_conv1_34130*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_337122&
$block5_conv1/StatefulPartitionedCallЎ
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_34133block5_conv2_34135*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_337392&
$block5_conv2/StatefulPartitionedCallЎ
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_34138block5_conv3_34140*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_337662&
$block5_conv3/StatefulPartitionedCallЎ
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_34143block5_conv4_34145*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv4_layer_call_and_return_conditional_losses_337932&
$block5_conv4/StatefulPartitionedCallП
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_333632
block5_pool/PartitionedCallс
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*≤
_input_shapes†
Э:€€€€€€€€€юю::::::::::::::::::::::::::::::::2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
Џ

а
G__inference_block5_conv2_layer_call_and_return_conditional_losses_36067

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
—к
Ћ
 __inference__wrapped_model_33309
input_11;
7model_vgg19_block1_conv1_conv2d_readvariableop_resource<
8model_vgg19_block1_conv1_biasadd_readvariableop_resource;
7model_vgg19_block1_conv2_conv2d_readvariableop_resource<
8model_vgg19_block1_conv2_biasadd_readvariableop_resource;
7model_vgg19_block2_conv1_conv2d_readvariableop_resource<
8model_vgg19_block2_conv1_biasadd_readvariableop_resource;
7model_vgg19_block2_conv2_conv2d_readvariableop_resource<
8model_vgg19_block2_conv2_biasadd_readvariableop_resource;
7model_vgg19_block3_conv1_conv2d_readvariableop_resource<
8model_vgg19_block3_conv1_biasadd_readvariableop_resource;
7model_vgg19_block3_conv2_conv2d_readvariableop_resource<
8model_vgg19_block3_conv2_biasadd_readvariableop_resource;
7model_vgg19_block3_conv3_conv2d_readvariableop_resource<
8model_vgg19_block3_conv3_biasadd_readvariableop_resource;
7model_vgg19_block3_conv4_conv2d_readvariableop_resource<
8model_vgg19_block3_conv4_biasadd_readvariableop_resource;
7model_vgg19_block4_conv1_conv2d_readvariableop_resource<
8model_vgg19_block4_conv1_biasadd_readvariableop_resource;
7model_vgg19_block4_conv2_conv2d_readvariableop_resource<
8model_vgg19_block4_conv2_biasadd_readvariableop_resource;
7model_vgg19_block4_conv3_conv2d_readvariableop_resource<
8model_vgg19_block4_conv3_biasadd_readvariableop_resource;
7model_vgg19_block4_conv4_conv2d_readvariableop_resource<
8model_vgg19_block4_conv4_biasadd_readvariableop_resource;
7model_vgg19_block5_conv1_conv2d_readvariableop_resource<
8model_vgg19_block5_conv1_biasadd_readvariableop_resource;
7model_vgg19_block5_conv2_conv2d_readvariableop_resource<
8model_vgg19_block5_conv2_biasadd_readvariableop_resource;
7model_vgg19_block5_conv3_conv2d_readvariableop_resource<
8model_vgg19_block5_conv3_biasadd_readvariableop_resource;
7model_vgg19_block5_conv4_conv2d_readvariableop_resource<
8model_vgg19_block5_conv4_biasadd_readvariableop_resource.
*model_dense_matmul_readvariableop_resource/
+model_dense_biasadd_readvariableop_resource
identityИҐ"model/dense/BiasAdd/ReadVariableOpҐ!model/dense/MatMul/ReadVariableOpҐ/model/vgg19/block1_conv1/BiasAdd/ReadVariableOpҐ.model/vgg19/block1_conv1/Conv2D/ReadVariableOpҐ/model/vgg19/block1_conv2/BiasAdd/ReadVariableOpҐ.model/vgg19/block1_conv2/Conv2D/ReadVariableOpҐ/model/vgg19/block2_conv1/BiasAdd/ReadVariableOpҐ.model/vgg19/block2_conv1/Conv2D/ReadVariableOpҐ/model/vgg19/block2_conv2/BiasAdd/ReadVariableOpҐ.model/vgg19/block2_conv2/Conv2D/ReadVariableOpҐ/model/vgg19/block3_conv1/BiasAdd/ReadVariableOpҐ.model/vgg19/block3_conv1/Conv2D/ReadVariableOpҐ/model/vgg19/block3_conv2/BiasAdd/ReadVariableOpҐ.model/vgg19/block3_conv2/Conv2D/ReadVariableOpҐ/model/vgg19/block3_conv3/BiasAdd/ReadVariableOpҐ.model/vgg19/block3_conv3/Conv2D/ReadVariableOpҐ/model/vgg19/block3_conv4/BiasAdd/ReadVariableOpҐ.model/vgg19/block3_conv4/Conv2D/ReadVariableOpҐ/model/vgg19/block4_conv1/BiasAdd/ReadVariableOpҐ.model/vgg19/block4_conv1/Conv2D/ReadVariableOpҐ/model/vgg19/block4_conv2/BiasAdd/ReadVariableOpҐ.model/vgg19/block4_conv2/Conv2D/ReadVariableOpҐ/model/vgg19/block4_conv3/BiasAdd/ReadVariableOpҐ.model/vgg19/block4_conv3/Conv2D/ReadVariableOpҐ/model/vgg19/block4_conv4/BiasAdd/ReadVariableOpҐ.model/vgg19/block4_conv4/Conv2D/ReadVariableOpҐ/model/vgg19/block5_conv1/BiasAdd/ReadVariableOpҐ.model/vgg19/block5_conv1/Conv2D/ReadVariableOpҐ/model/vgg19/block5_conv2/BiasAdd/ReadVariableOpҐ.model/vgg19/block5_conv2/Conv2D/ReadVariableOpҐ/model/vgg19/block5_conv3/BiasAdd/ReadVariableOpҐ.model/vgg19/block5_conv3/Conv2D/ReadVariableOpҐ/model/vgg19/block5_conv4/BiasAdd/ReadVariableOpҐ.model/vgg19/block5_conv4/Conv2D/ReadVariableOpа
.model/vgg19/block1_conv1/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype020
.model/vgg19/block1_conv1/Conv2D/ReadVariableOpт
model/vgg19/block1_conv1/Conv2DConv2Dinput_116model/vgg19/block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2!
model/vgg19/block1_conv1/Conv2D„
/model/vgg19/block1_conv1/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/model/vgg19/block1_conv1/BiasAdd/ReadVariableOpо
 model/vgg19/block1_conv1/BiasAddBiasAdd(model/vgg19/block1_conv1/Conv2D:output:07model/vgg19/block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2"
 model/vgg19/block1_conv1/BiasAdd≠
model/vgg19/block1_conv1/ReluRelu)model/vgg19/block1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
model/vgg19/block1_conv1/Reluа
.model/vgg19/block1_conv2/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype020
.model/vgg19/block1_conv2/Conv2D/ReadVariableOpХ
model/vgg19/block1_conv2/Conv2DConv2D+model/vgg19/block1_conv1/Relu:activations:06model/vgg19/block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2!
model/vgg19/block1_conv2/Conv2D„
/model/vgg19/block1_conv2/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype021
/model/vgg19/block1_conv2/BiasAdd/ReadVariableOpо
 model/vgg19/block1_conv2/BiasAddBiasAdd(model/vgg19/block1_conv2/Conv2D:output:07model/vgg19/block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2"
 model/vgg19/block1_conv2/BiasAdd≠
model/vgg19/block1_conv2/ReluRelu)model/vgg19/block1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
model/vgg19/block1_conv2/Reluз
model/vgg19/block1_pool/MaxPoolMaxPool+model/vgg19/block1_conv2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2!
model/vgg19/block1_pool/MaxPoolб
.model/vgg19/block2_conv1/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype020
.model/vgg19/block2_conv1/Conv2D/ReadVariableOpС
model/vgg19/block2_conv1/Conv2DConv2D(model/vgg19/block1_pool/MaxPool:output:06model/vgg19/block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2!
model/vgg19/block2_conv1/Conv2DЎ
/model/vgg19/block2_conv1/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block2_conv1/BiasAdd/ReadVariableOpн
 model/vgg19/block2_conv1/BiasAddBiasAdd(model/vgg19/block2_conv1/Conv2D:output:07model/vgg19/block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 model/vgg19/block2_conv1/BiasAddђ
model/vgg19/block2_conv1/ReluRelu)model/vgg19/block2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
model/vgg19/block2_conv1/Reluв
.model/vgg19/block2_conv2/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block2_conv2/Conv2D/ReadVariableOpФ
model/vgg19/block2_conv2/Conv2DConv2D+model/vgg19/block2_conv1/Relu:activations:06model/vgg19/block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2!
model/vgg19/block2_conv2/Conv2DЎ
/model/vgg19/block2_conv2/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block2_conv2/BiasAdd/ReadVariableOpн
 model/vgg19/block2_conv2/BiasAddBiasAdd(model/vgg19/block2_conv2/Conv2D:output:07model/vgg19/block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 model/vgg19/block2_conv2/BiasAddђ
model/vgg19/block2_conv2/ReluRelu)model/vgg19/block2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
model/vgg19/block2_conv2/Reluи
model/vgg19/block2_pool/MaxPoolMaxPool+model/vgg19/block2_conv2/Relu:activations:0*0
_output_shapes
:€€€€€€€€€??А*
ksize
*
paddingVALID*
strides
2!
model/vgg19/block2_pool/MaxPoolв
.model/vgg19/block3_conv1/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block3_conv1/Conv2D/ReadVariableOpС
model/vgg19/block3_conv1/Conv2DConv2D(model/vgg19/block2_pool/MaxPool:output:06model/vgg19/block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2!
model/vgg19/block3_conv1/Conv2DЎ
/model/vgg19/block3_conv1/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block3_conv1/BiasAdd/ReadVariableOpн
 model/vgg19/block3_conv1/BiasAddBiasAdd(model/vgg19/block3_conv1/Conv2D:output:07model/vgg19/block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2"
 model/vgg19/block3_conv1/BiasAddђ
model/vgg19/block3_conv1/ReluRelu)model/vgg19/block3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
model/vgg19/block3_conv1/Reluв
.model/vgg19/block3_conv2/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block3_conv2/Conv2D/ReadVariableOpФ
model/vgg19/block3_conv2/Conv2DConv2D+model/vgg19/block3_conv1/Relu:activations:06model/vgg19/block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2!
model/vgg19/block3_conv2/Conv2DЎ
/model/vgg19/block3_conv2/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block3_conv2/BiasAdd/ReadVariableOpн
 model/vgg19/block3_conv2/BiasAddBiasAdd(model/vgg19/block3_conv2/Conv2D:output:07model/vgg19/block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2"
 model/vgg19/block3_conv2/BiasAddђ
model/vgg19/block3_conv2/ReluRelu)model/vgg19/block3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
model/vgg19/block3_conv2/Reluв
.model/vgg19/block3_conv3/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block3_conv3/Conv2D/ReadVariableOpФ
model/vgg19/block3_conv3/Conv2DConv2D+model/vgg19/block3_conv2/Relu:activations:06model/vgg19/block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2!
model/vgg19/block3_conv3/Conv2DЎ
/model/vgg19/block3_conv3/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block3_conv3/BiasAdd/ReadVariableOpн
 model/vgg19/block3_conv3/BiasAddBiasAdd(model/vgg19/block3_conv3/Conv2D:output:07model/vgg19/block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2"
 model/vgg19/block3_conv3/BiasAddђ
model/vgg19/block3_conv3/ReluRelu)model/vgg19/block3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
model/vgg19/block3_conv3/Reluв
.model/vgg19/block3_conv4/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block3_conv4/Conv2D/ReadVariableOpФ
model/vgg19/block3_conv4/Conv2DConv2D+model/vgg19/block3_conv3/Relu:activations:06model/vgg19/block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2!
model/vgg19/block3_conv4/Conv2DЎ
/model/vgg19/block3_conv4/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block3_conv4/BiasAdd/ReadVariableOpн
 model/vgg19/block3_conv4/BiasAddBiasAdd(model/vgg19/block3_conv4/Conv2D:output:07model/vgg19/block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2"
 model/vgg19/block3_conv4/BiasAddђ
model/vgg19/block3_conv4/ReluRelu)model/vgg19/block3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
model/vgg19/block3_conv4/Reluи
model/vgg19/block3_pool/MaxPoolMaxPool+model/vgg19/block3_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2!
model/vgg19/block3_pool/MaxPoolв
.model/vgg19/block4_conv1/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block4_conv1/Conv2D/ReadVariableOpС
model/vgg19/block4_conv1/Conv2DConv2D(model/vgg19/block3_pool/MaxPool:output:06model/vgg19/block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2!
model/vgg19/block4_conv1/Conv2DЎ
/model/vgg19/block4_conv1/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block4_conv1/BiasAdd/ReadVariableOpн
 model/vgg19/block4_conv1/BiasAddBiasAdd(model/vgg19/block4_conv1/Conv2D:output:07model/vgg19/block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 model/vgg19/block4_conv1/BiasAddђ
model/vgg19/block4_conv1/ReluRelu)model/vgg19/block4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
model/vgg19/block4_conv1/Reluв
.model/vgg19/block4_conv2/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block4_conv2/Conv2D/ReadVariableOpФ
model/vgg19/block4_conv2/Conv2DConv2D+model/vgg19/block4_conv1/Relu:activations:06model/vgg19/block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2!
model/vgg19/block4_conv2/Conv2DЎ
/model/vgg19/block4_conv2/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block4_conv2/BiasAdd/ReadVariableOpн
 model/vgg19/block4_conv2/BiasAddBiasAdd(model/vgg19/block4_conv2/Conv2D:output:07model/vgg19/block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 model/vgg19/block4_conv2/BiasAddђ
model/vgg19/block4_conv2/ReluRelu)model/vgg19/block4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
model/vgg19/block4_conv2/Reluв
.model/vgg19/block4_conv3/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block4_conv3/Conv2D/ReadVariableOpФ
model/vgg19/block4_conv3/Conv2DConv2D+model/vgg19/block4_conv2/Relu:activations:06model/vgg19/block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2!
model/vgg19/block4_conv3/Conv2DЎ
/model/vgg19/block4_conv3/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block4_conv3/BiasAdd/ReadVariableOpн
 model/vgg19/block4_conv3/BiasAddBiasAdd(model/vgg19/block4_conv3/Conv2D:output:07model/vgg19/block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 model/vgg19/block4_conv3/BiasAddђ
model/vgg19/block4_conv3/ReluRelu)model/vgg19/block4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
model/vgg19/block4_conv3/Reluв
.model/vgg19/block4_conv4/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block4_conv4/Conv2D/ReadVariableOpФ
model/vgg19/block4_conv4/Conv2DConv2D+model/vgg19/block4_conv3/Relu:activations:06model/vgg19/block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2!
model/vgg19/block4_conv4/Conv2DЎ
/model/vgg19/block4_conv4/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block4_conv4/BiasAdd/ReadVariableOpн
 model/vgg19/block4_conv4/BiasAddBiasAdd(model/vgg19/block4_conv4/Conv2D:output:07model/vgg19/block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 model/vgg19/block4_conv4/BiasAddђ
model/vgg19/block4_conv4/ReluRelu)model/vgg19/block4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
model/vgg19/block4_conv4/Reluи
model/vgg19/block4_pool/MaxPoolMaxPool+model/vgg19/block4_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2!
model/vgg19/block4_pool/MaxPoolв
.model/vgg19/block5_conv1/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block5_conv1/Conv2D/ReadVariableOpС
model/vgg19/block5_conv1/Conv2DConv2D(model/vgg19/block4_pool/MaxPool:output:06model/vgg19/block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2!
model/vgg19/block5_conv1/Conv2DЎ
/model/vgg19/block5_conv1/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block5_conv1/BiasAdd/ReadVariableOpн
 model/vgg19/block5_conv1/BiasAddBiasAdd(model/vgg19/block5_conv1/Conv2D:output:07model/vgg19/block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 model/vgg19/block5_conv1/BiasAddђ
model/vgg19/block5_conv1/ReluRelu)model/vgg19/block5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
model/vgg19/block5_conv1/Reluв
.model/vgg19/block5_conv2/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block5_conv2/Conv2D/ReadVariableOpФ
model/vgg19/block5_conv2/Conv2DConv2D+model/vgg19/block5_conv1/Relu:activations:06model/vgg19/block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2!
model/vgg19/block5_conv2/Conv2DЎ
/model/vgg19/block5_conv2/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block5_conv2/BiasAdd/ReadVariableOpн
 model/vgg19/block5_conv2/BiasAddBiasAdd(model/vgg19/block5_conv2/Conv2D:output:07model/vgg19/block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 model/vgg19/block5_conv2/BiasAddђ
model/vgg19/block5_conv2/ReluRelu)model/vgg19/block5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
model/vgg19/block5_conv2/Reluв
.model/vgg19/block5_conv3/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block5_conv3/Conv2D/ReadVariableOpФ
model/vgg19/block5_conv3/Conv2DConv2D+model/vgg19/block5_conv2/Relu:activations:06model/vgg19/block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2!
model/vgg19/block5_conv3/Conv2DЎ
/model/vgg19/block5_conv3/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block5_conv3/BiasAdd/ReadVariableOpн
 model/vgg19/block5_conv3/BiasAddBiasAdd(model/vgg19/block5_conv3/Conv2D:output:07model/vgg19/block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 model/vgg19/block5_conv3/BiasAddђ
model/vgg19/block5_conv3/ReluRelu)model/vgg19/block5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
model/vgg19/block5_conv3/Reluв
.model/vgg19/block5_conv4/Conv2D/ReadVariableOpReadVariableOp7model_vgg19_block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype020
.model/vgg19/block5_conv4/Conv2D/ReadVariableOpФ
model/vgg19/block5_conv4/Conv2DConv2D+model/vgg19/block5_conv3/Relu:activations:06model/vgg19/block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2!
model/vgg19/block5_conv4/Conv2DЎ
/model/vgg19/block5_conv4/BiasAdd/ReadVariableOpReadVariableOp8model_vgg19_block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype021
/model/vgg19/block5_conv4/BiasAdd/ReadVariableOpн
 model/vgg19/block5_conv4/BiasAddBiasAdd(model/vgg19/block5_conv4/Conv2D:output:07model/vgg19/block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2"
 model/vgg19/block5_conv4/BiasAddђ
model/vgg19/block5_conv4/ReluRelu)model/vgg19/block5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
model/vgg19/block5_conv4/Reluи
model/vgg19/block5_pool/MaxPoolMaxPool+model/vgg19/block5_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2!
model/vgg19/block5_pool/MaxPoolњ
5model/global_average_pooling2d/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      27
5model/global_average_pooling2d/Mean/reduction_indicesп
#model/global_average_pooling2d/MeanMean(model/vgg19/block5_pool/MaxPool:output:0>model/global_average_pooling2d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2%
#model/global_average_pooling2d/MeanЭ
model/dropout/IdentityIdentity,model/global_average_pooling2d/Mean:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
model/dropout/Identity≤
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02#
!model/dense/MatMul/ReadVariableOp∞
model/dense/MatMulMatMulmodel/dropout/Identity:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/dense/MatMul∞
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"model/dense/BiasAdd/ReadVariableOp±
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/dense/BiasAddЕ
model/dense/SigmoidSigmoidmodel/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/dense/Sigmoidд
IdentityIdentitymodel/dense/Sigmoid:y:0#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp0^model/vgg19/block1_conv1/BiasAdd/ReadVariableOp/^model/vgg19/block1_conv1/Conv2D/ReadVariableOp0^model/vgg19/block1_conv2/BiasAdd/ReadVariableOp/^model/vgg19/block1_conv2/Conv2D/ReadVariableOp0^model/vgg19/block2_conv1/BiasAdd/ReadVariableOp/^model/vgg19/block2_conv1/Conv2D/ReadVariableOp0^model/vgg19/block2_conv2/BiasAdd/ReadVariableOp/^model/vgg19/block2_conv2/Conv2D/ReadVariableOp0^model/vgg19/block3_conv1/BiasAdd/ReadVariableOp/^model/vgg19/block3_conv1/Conv2D/ReadVariableOp0^model/vgg19/block3_conv2/BiasAdd/ReadVariableOp/^model/vgg19/block3_conv2/Conv2D/ReadVariableOp0^model/vgg19/block3_conv3/BiasAdd/ReadVariableOp/^model/vgg19/block3_conv3/Conv2D/ReadVariableOp0^model/vgg19/block3_conv4/BiasAdd/ReadVariableOp/^model/vgg19/block3_conv4/Conv2D/ReadVariableOp0^model/vgg19/block4_conv1/BiasAdd/ReadVariableOp/^model/vgg19/block4_conv1/Conv2D/ReadVariableOp0^model/vgg19/block4_conv2/BiasAdd/ReadVariableOp/^model/vgg19/block4_conv2/Conv2D/ReadVariableOp0^model/vgg19/block4_conv3/BiasAdd/ReadVariableOp/^model/vgg19/block4_conv3/Conv2D/ReadVariableOp0^model/vgg19/block4_conv4/BiasAdd/ReadVariableOp/^model/vgg19/block4_conv4/Conv2D/ReadVariableOp0^model/vgg19/block5_conv1/BiasAdd/ReadVariableOp/^model/vgg19/block5_conv1/Conv2D/ReadVariableOp0^model/vgg19/block5_conv2/BiasAdd/ReadVariableOp/^model/vgg19/block5_conv2/Conv2D/ReadVariableOp0^model/vgg19/block5_conv3/BiasAdd/ReadVariableOp/^model/vgg19/block5_conv3/Conv2D/ReadVariableOp0^model/vgg19/block5_conv4/BiasAdd/ReadVariableOp/^model/vgg19/block5_conv4/Conv2D/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Ї
_input_shapes®
•:€€€€€€€€€юю::::::::::::::::::::::::::::::::::2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2b
/model/vgg19/block1_conv1/BiasAdd/ReadVariableOp/model/vgg19/block1_conv1/BiasAdd/ReadVariableOp2`
.model/vgg19/block1_conv1/Conv2D/ReadVariableOp.model/vgg19/block1_conv1/Conv2D/ReadVariableOp2b
/model/vgg19/block1_conv2/BiasAdd/ReadVariableOp/model/vgg19/block1_conv2/BiasAdd/ReadVariableOp2`
.model/vgg19/block1_conv2/Conv2D/ReadVariableOp.model/vgg19/block1_conv2/Conv2D/ReadVariableOp2b
/model/vgg19/block2_conv1/BiasAdd/ReadVariableOp/model/vgg19/block2_conv1/BiasAdd/ReadVariableOp2`
.model/vgg19/block2_conv1/Conv2D/ReadVariableOp.model/vgg19/block2_conv1/Conv2D/ReadVariableOp2b
/model/vgg19/block2_conv2/BiasAdd/ReadVariableOp/model/vgg19/block2_conv2/BiasAdd/ReadVariableOp2`
.model/vgg19/block2_conv2/Conv2D/ReadVariableOp.model/vgg19/block2_conv2/Conv2D/ReadVariableOp2b
/model/vgg19/block3_conv1/BiasAdd/ReadVariableOp/model/vgg19/block3_conv1/BiasAdd/ReadVariableOp2`
.model/vgg19/block3_conv1/Conv2D/ReadVariableOp.model/vgg19/block3_conv1/Conv2D/ReadVariableOp2b
/model/vgg19/block3_conv2/BiasAdd/ReadVariableOp/model/vgg19/block3_conv2/BiasAdd/ReadVariableOp2`
.model/vgg19/block3_conv2/Conv2D/ReadVariableOp.model/vgg19/block3_conv2/Conv2D/ReadVariableOp2b
/model/vgg19/block3_conv3/BiasAdd/ReadVariableOp/model/vgg19/block3_conv3/BiasAdd/ReadVariableOp2`
.model/vgg19/block3_conv3/Conv2D/ReadVariableOp.model/vgg19/block3_conv3/Conv2D/ReadVariableOp2b
/model/vgg19/block3_conv4/BiasAdd/ReadVariableOp/model/vgg19/block3_conv4/BiasAdd/ReadVariableOp2`
.model/vgg19/block3_conv4/Conv2D/ReadVariableOp.model/vgg19/block3_conv4/Conv2D/ReadVariableOp2b
/model/vgg19/block4_conv1/BiasAdd/ReadVariableOp/model/vgg19/block4_conv1/BiasAdd/ReadVariableOp2`
.model/vgg19/block4_conv1/Conv2D/ReadVariableOp.model/vgg19/block4_conv1/Conv2D/ReadVariableOp2b
/model/vgg19/block4_conv2/BiasAdd/ReadVariableOp/model/vgg19/block4_conv2/BiasAdd/ReadVariableOp2`
.model/vgg19/block4_conv2/Conv2D/ReadVariableOp.model/vgg19/block4_conv2/Conv2D/ReadVariableOp2b
/model/vgg19/block4_conv3/BiasAdd/ReadVariableOp/model/vgg19/block4_conv3/BiasAdd/ReadVariableOp2`
.model/vgg19/block4_conv3/Conv2D/ReadVariableOp.model/vgg19/block4_conv3/Conv2D/ReadVariableOp2b
/model/vgg19/block4_conv4/BiasAdd/ReadVariableOp/model/vgg19/block4_conv4/BiasAdd/ReadVariableOp2`
.model/vgg19/block4_conv4/Conv2D/ReadVariableOp.model/vgg19/block4_conv4/Conv2D/ReadVariableOp2b
/model/vgg19/block5_conv1/BiasAdd/ReadVariableOp/model/vgg19/block5_conv1/BiasAdd/ReadVariableOp2`
.model/vgg19/block5_conv1/Conv2D/ReadVariableOp.model/vgg19/block5_conv1/Conv2D/ReadVariableOp2b
/model/vgg19/block5_conv2/BiasAdd/ReadVariableOp/model/vgg19/block5_conv2/BiasAdd/ReadVariableOp2`
.model/vgg19/block5_conv2/Conv2D/ReadVariableOp.model/vgg19/block5_conv2/Conv2D/ReadVariableOp2b
/model/vgg19/block5_conv3/BiasAdd/ReadVariableOp/model/vgg19/block5_conv3/BiasAdd/ReadVariableOp2`
.model/vgg19/block5_conv3/Conv2D/ReadVariableOp.model/vgg19/block5_conv3/Conv2D/ReadVariableOp2b
/model/vgg19/block5_conv4/BiasAdd/ReadVariableOp/model/vgg19/block5_conv4/BiasAdd/ReadVariableOp2`
.model/vgg19/block5_conv4/Conv2D/ReadVariableOp.model/vgg19/block5_conv4/Conv2D/ReadVariableOp:[ W
1
_output_shapes
:€€€€€€€€€юю
"
_user_specified_name
input_11
К
Б
,__inference_block3_conv3_layer_call_fn_35936

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_335482
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€??А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€??А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€??А
 
_user_specified_nameinputs
єY
л
__inference__traced_save_36280
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop2
.savev2_block1_conv1_kernel_read_readvariableop0
,savev2_block1_conv1_bias_read_readvariableop2
.savev2_block1_conv2_kernel_read_readvariableop0
,savev2_block1_conv2_bias_read_readvariableop2
.savev2_block2_conv1_kernel_read_readvariableop0
,savev2_block2_conv1_bias_read_readvariableop2
.savev2_block2_conv2_kernel_read_readvariableop0
,savev2_block2_conv2_bias_read_readvariableop2
.savev2_block3_conv1_kernel_read_readvariableop0
,savev2_block3_conv1_bias_read_readvariableop2
.savev2_block3_conv2_kernel_read_readvariableop0
,savev2_block3_conv2_bias_read_readvariableop2
.savev2_block3_conv3_kernel_read_readvariableop0
,savev2_block3_conv3_bias_read_readvariableop2
.savev2_block3_conv4_kernel_read_readvariableop0
,savev2_block3_conv4_bias_read_readvariableop2
.savev2_block4_conv1_kernel_read_readvariableop0
,savev2_block4_conv1_bias_read_readvariableop2
.savev2_block4_conv2_kernel_read_readvariableop0
,savev2_block4_conv2_bias_read_readvariableop2
.savev2_block4_conv3_kernel_read_readvariableop0
,savev2_block4_conv3_bias_read_readvariableop2
.savev2_block4_conv4_kernel_read_readvariableop0
,savev2_block4_conv4_bias_read_readvariableop2
.savev2_block5_conv1_kernel_read_readvariableop0
,savev2_block5_conv1_bias_read_readvariableop2
.savev2_block5_conv2_kernel_read_readvariableop0
,savev2_block5_conv2_bias_read_readvariableop2
.savev2_block5_conv3_kernel_read_readvariableop0
,savev2_block5_conv3_bias_read_readvariableop2
.savev2_block5_conv4_kernel_read_readvariableop0
,savev2_block5_conv4_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЃ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*ј
valueґB≥0B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesи
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices≠
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop.savev2_block1_conv1_kernel_read_readvariableop,savev2_block1_conv1_bias_read_readvariableop.savev2_block1_conv2_kernel_read_readvariableop,savev2_block1_conv2_bias_read_readvariableop.savev2_block2_conv1_kernel_read_readvariableop,savev2_block2_conv1_bias_read_readvariableop.savev2_block2_conv2_kernel_read_readvariableop,savev2_block2_conv2_bias_read_readvariableop.savev2_block3_conv1_kernel_read_readvariableop,savev2_block3_conv1_bias_read_readvariableop.savev2_block3_conv2_kernel_read_readvariableop,savev2_block3_conv2_bias_read_readvariableop.savev2_block3_conv3_kernel_read_readvariableop,savev2_block3_conv3_bias_read_readvariableop.savev2_block3_conv4_kernel_read_readvariableop,savev2_block3_conv4_bias_read_readvariableop.savev2_block4_conv1_kernel_read_readvariableop,savev2_block4_conv1_bias_read_readvariableop.savev2_block4_conv2_kernel_read_readvariableop,savev2_block4_conv2_bias_read_readvariableop.savev2_block4_conv3_kernel_read_readvariableop,savev2_block4_conv3_bias_read_readvariableop.savev2_block4_conv4_kernel_read_readvariableop,savev2_block4_conv4_bias_read_readvariableop.savev2_block5_conv1_kernel_read_readvariableop,savev2_block5_conv1_bias_read_readvariableop.savev2_block5_conv2_kernel_read_readvariableop,savev2_block5_conv2_bias_read_readvariableop.savev2_block5_conv3_kernel_read_readvariableop,savev2_block5_conv3_bias_read_readvariableop.savev2_block5_conv4_kernel_read_readvariableop,savev2_block5_conv4_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *>
dtypes4
220	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*З
_input_shapesх
т: :	А:: : : : : :@:@:@@:@:@А:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А:АА:А: : : : :	А::	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 	

_output_shapes
:@:,
(
&
_output_shapes
:@@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:. *
(
_output_shapes
:АА:!!

_output_shapes	
:А:."*
(
_output_shapes
:АА:!#

_output_shapes	
:А:.$*
(
_output_shapes
:АА:!%

_output_shapes	
:А:.&*
(
_output_shapes
:АА:!'

_output_shapes	
:А:(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :%,!

_output_shapes
:	А: -

_output_shapes
::%.!

_output_shapes
:	А: /

_output_shapes
::0

_output_shapes
: 
Џ

а
G__inference_block3_conv3_layer_call_and_return_conditional_losses_35927

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€??А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€??А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€??А
 
_user_specified_nameinputs
¶
G
+__inference_block3_pool_layer_call_fn_33345

inputs
identityк
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_333392
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Џ

а
G__inference_block3_conv1_layer_call_and_return_conditional_losses_35887

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€??А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€??А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€??А
 
_user_specified_nameinputs
п	
ў
@__inference_dense_layer_call_and_return_conditional_losses_34479

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ

а
G__inference_block4_conv4_layer_call_and_return_conditional_losses_36027

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Б
с
#__inference_signature_wrapper_34954
input_11
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_333092
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Ї
_input_shapes®
•:€€€€€€€€€юю::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:€€€€€€€€€юю
"
_user_specified_name
input_11
К
Б
,__inference_block3_conv4_layer_call_fn_35956

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv4_layer_call_and_return_conditional_losses_335752
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€??А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€??А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€??А
 
_user_specified_nameinputs
К
Б
,__inference_block5_conv1_layer_call_fn_36056

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_337122
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
„

а
G__inference_block2_conv1_layer_call_and_return_conditional_losses_33439

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
И
Б
,__inference_block2_conv1_layer_call_fn_35856

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_334392
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Џ

а
G__inference_block3_conv2_layer_call_and_return_conditional_losses_33521

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€??А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€??А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€??А
 
_user_specified_nameinputs
Џ

а
G__inference_block5_conv3_layer_call_and_return_conditional_losses_36087

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ

а
G__inference_block5_conv1_layer_call_and_return_conditional_losses_33712

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
£
у
%__inference_model_layer_call_fn_34722
input_11
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32
identityИҐStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*D
_read_only_resource_inputs&
$"	
 !"*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_346512
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Ї
_input_shapes®
•:€€€€€€€€€юю::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:€€€€€€€€€юю
"
_user_specified_name
input_11
Џ

а
G__inference_block4_conv2_layer_call_and_return_conditional_losses_33630

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Хh
ѕ
@__inference_vgg19_layer_call_and_return_conditional_losses_33992

inputs
block1_conv1_33906
block1_conv1_33908
block1_conv2_33911
block1_conv2_33913
block2_conv1_33917
block2_conv1_33919
block2_conv2_33922
block2_conv2_33924
block3_conv1_33928
block3_conv1_33930
block3_conv2_33933
block3_conv2_33935
block3_conv3_33938
block3_conv3_33940
block3_conv4_33943
block3_conv4_33945
block4_conv1_33949
block4_conv1_33951
block4_conv2_33954
block4_conv2_33956
block4_conv3_33959
block4_conv3_33961
block4_conv4_33964
block4_conv4_33966
block5_conv1_33970
block5_conv1_33972
block5_conv2_33975
block5_conv2_33977
block5_conv3_33980
block5_conv3_33982
block5_conv4_33985
block5_conv4_33987
identityИҐ$block1_conv1/StatefulPartitionedCallҐ$block1_conv2/StatefulPartitionedCallҐ$block2_conv1/StatefulPartitionedCallҐ$block2_conv2/StatefulPartitionedCallҐ$block3_conv1/StatefulPartitionedCallҐ$block3_conv2/StatefulPartitionedCallҐ$block3_conv3/StatefulPartitionedCallҐ$block3_conv4/StatefulPartitionedCallҐ$block4_conv1/StatefulPartitionedCallҐ$block4_conv2/StatefulPartitionedCallҐ$block4_conv3/StatefulPartitionedCallҐ$block4_conv4/StatefulPartitionedCallҐ$block5_conv1/StatefulPartitionedCallҐ$block5_conv2/StatefulPartitionedCallҐ$block5_conv3/StatefulPartitionedCallҐ$block5_conv4/StatefulPartitionedCall≤
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinputsblock1_conv1_33906block1_conv1_33908*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_333842&
$block1_conv1/StatefulPartitionedCallў
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_33911block1_conv2_33913*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_334112&
$block1_conv2/StatefulPartitionedCallО
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_333152
block1_pool/PartitionedCallѕ
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_33917block2_conv1_33919*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_334392&
$block2_conv1/StatefulPartitionedCallЎ
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_33922block2_conv2_33924*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_334662&
$block2_conv2/StatefulPartitionedCallП
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_333272
block2_pool/PartitionedCallѕ
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_33928block3_conv1_33930*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_334942&
$block3_conv1/StatefulPartitionedCallЎ
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_33933block3_conv2_33935*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_335212&
$block3_conv2/StatefulPartitionedCallЎ
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_33938block3_conv3_33940*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_335482&
$block3_conv3/StatefulPartitionedCallЎ
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_33943block3_conv4_33945*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv4_layer_call_and_return_conditional_losses_335752&
$block3_conv4/StatefulPartitionedCallП
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_333392
block3_pool/PartitionedCallѕ
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_33949block4_conv1_33951*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_336032&
$block4_conv1/StatefulPartitionedCallЎ
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_33954block4_conv2_33956*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_336302&
$block4_conv2/StatefulPartitionedCallЎ
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_33959block4_conv3_33961*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_336572&
$block4_conv3/StatefulPartitionedCallЎ
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_33964block4_conv4_33966*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv4_layer_call_and_return_conditional_losses_336842&
$block4_conv4/StatefulPartitionedCallП
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_333512
block4_pool/PartitionedCallѕ
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_33970block5_conv1_33972*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_337122&
$block5_conv1/StatefulPartitionedCallЎ
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_33975block5_conv2_33977*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_337392&
$block5_conv2/StatefulPartitionedCallЎ
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_33980block5_conv3_33982*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_337662&
$block5_conv3/StatefulPartitionedCallЎ
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_33985block5_conv4_33987*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv4_layer_call_and_return_conditional_losses_337932&
$block5_conv4/StatefulPartitionedCallП
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_333632
block5_pool/PartitionedCallс
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*≤
_input_shapes†
Э:€€€€€€€€€юю::::::::::::::::::::::::::::::::2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
Ё

а
G__inference_block1_conv2_layer_call_and_return_conditional_losses_35827

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp•
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
Relu°
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:€€€€€€€€€юю@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:€€€€€€€€€юю@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€юю@
 
_user_specified_nameinputs
о
“
%__inference_vgg19_layer_call_fn_34059
input_7
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identityИҐStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_339922
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*≤
_input_shapes†
Э:€€€€€€€€€юю::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€юю
!
_user_specified_name	input_7
Џ

а
G__inference_block4_conv1_layer_call_and_return_conditional_losses_33603

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ

а
G__inference_block5_conv4_layer_call_and_return_conditional_losses_33793

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ў≤
њ
@__inference_vgg19_layer_call_and_return_conditional_losses_35490

inputs/
+block1_conv1_conv2d_readvariableop_resource0
,block1_conv1_biasadd_readvariableop_resource/
+block1_conv2_conv2d_readvariableop_resource0
,block1_conv2_biasadd_readvariableop_resource/
+block2_conv1_conv2d_readvariableop_resource0
,block2_conv1_biasadd_readvariableop_resource/
+block2_conv2_conv2d_readvariableop_resource0
,block2_conv2_biasadd_readvariableop_resource/
+block3_conv1_conv2d_readvariableop_resource0
,block3_conv1_biasadd_readvariableop_resource/
+block3_conv2_conv2d_readvariableop_resource0
,block3_conv2_biasadd_readvariableop_resource/
+block3_conv3_conv2d_readvariableop_resource0
,block3_conv3_biasadd_readvariableop_resource/
+block3_conv4_conv2d_readvariableop_resource0
,block3_conv4_biasadd_readvariableop_resource/
+block4_conv1_conv2d_readvariableop_resource0
,block4_conv1_biasadd_readvariableop_resource/
+block4_conv2_conv2d_readvariableop_resource0
,block4_conv2_biasadd_readvariableop_resource/
+block4_conv3_conv2d_readvariableop_resource0
,block4_conv3_biasadd_readvariableop_resource/
+block4_conv4_conv2d_readvariableop_resource0
,block4_conv4_biasadd_readvariableop_resource/
+block5_conv1_conv2d_readvariableop_resource0
,block5_conv1_biasadd_readvariableop_resource/
+block5_conv2_conv2d_readvariableop_resource0
,block5_conv2_biasadd_readvariableop_resource/
+block5_conv3_conv2d_readvariableop_resource0
,block5_conv3_biasadd_readvariableop_resource/
+block5_conv4_conv2d_readvariableop_resource0
,block5_conv4_biasadd_readvariableop_resource
identityИҐ#block1_conv1/BiasAdd/ReadVariableOpҐ"block1_conv1/Conv2D/ReadVariableOpҐ#block1_conv2/BiasAdd/ReadVariableOpҐ"block1_conv2/Conv2D/ReadVariableOpҐ#block2_conv1/BiasAdd/ReadVariableOpҐ"block2_conv1/Conv2D/ReadVariableOpҐ#block2_conv2/BiasAdd/ReadVariableOpҐ"block2_conv2/Conv2D/ReadVariableOpҐ#block3_conv1/BiasAdd/ReadVariableOpҐ"block3_conv1/Conv2D/ReadVariableOpҐ#block3_conv2/BiasAdd/ReadVariableOpҐ"block3_conv2/Conv2D/ReadVariableOpҐ#block3_conv3/BiasAdd/ReadVariableOpҐ"block3_conv3/Conv2D/ReadVariableOpҐ#block3_conv4/BiasAdd/ReadVariableOpҐ"block3_conv4/Conv2D/ReadVariableOpҐ#block4_conv1/BiasAdd/ReadVariableOpҐ"block4_conv1/Conv2D/ReadVariableOpҐ#block4_conv2/BiasAdd/ReadVariableOpҐ"block4_conv2/Conv2D/ReadVariableOpҐ#block4_conv3/BiasAdd/ReadVariableOpҐ"block4_conv3/Conv2D/ReadVariableOpҐ#block4_conv4/BiasAdd/ReadVariableOpҐ"block4_conv4/Conv2D/ReadVariableOpҐ#block5_conv1/BiasAdd/ReadVariableOpҐ"block5_conv1/Conv2D/ReadVariableOpҐ#block5_conv2/BiasAdd/ReadVariableOpҐ"block5_conv2/Conv2D/ReadVariableOpҐ#block5_conv3/BiasAdd/ReadVariableOpҐ"block5_conv3/Conv2D/ReadVariableOpҐ#block5_conv4/BiasAdd/ReadVariableOpҐ"block5_conv4/Conv2D/ReadVariableOpЉ
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOpћ
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2
block1_conv1/Conv2D≥
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOpЊ
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
block1_conv1/BiasAddЙ
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
block1_conv1/ReluЉ
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOpе
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2
block1_conv2/Conv2D≥
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOpЊ
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
block1_conv2/BiasAddЙ
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
block1_conv2/Relu√
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPoolљ
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02$
"block2_conv1/Conv2D/ReadVariableOpб
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block2_conv1/Conv2Dі
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOpљ
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block2_conv1/BiasAddИ
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block2_conv1/ReluЊ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block2_conv2/Conv2D/ReadVariableOpд
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block2_conv2/Conv2Dі
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOpљ
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block2_conv2/BiasAddИ
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block2_conv2/Reluƒ
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:€€€€€€€€€??А*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPoolЊ
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv1/Conv2D/ReadVariableOpб
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
block3_conv1/Conv2Dі
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOpљ
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv1/BiasAddИ
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv1/ReluЊ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv2/Conv2D/ReadVariableOpд
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
block3_conv2/Conv2Dі
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOpљ
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv2/BiasAddИ
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv2/ReluЊ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv3/Conv2D/ReadVariableOpд
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
block3_conv3/Conv2Dі
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOpљ
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv3/BiasAddИ
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv3/ReluЊ
"block3_conv4/Conv2D/ReadVariableOpReadVariableOp+block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv4/Conv2D/ReadVariableOpд
block3_conv4/Conv2DConv2Dblock3_conv3/Relu:activations:0*block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
block3_conv4/Conv2Dі
#block3_conv4/BiasAdd/ReadVariableOpReadVariableOp,block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv4/BiasAdd/ReadVariableOpљ
block3_conv4/BiasAddBiasAddblock3_conv4/Conv2D:output:0+block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv4/BiasAddИ
block3_conv4/ReluRelublock3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv4/Reluƒ
block3_pool/MaxPoolMaxPoolblock3_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPoolЊ
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv1/Conv2D/ReadVariableOpб
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block4_conv1/Conv2Dі
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOpљ
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv1/BiasAddИ
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv1/ReluЊ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv2/Conv2D/ReadVariableOpд
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block4_conv2/Conv2Dі
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOpљ
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv2/BiasAddИ
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv2/ReluЊ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv3/Conv2D/ReadVariableOpд
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block4_conv3/Conv2Dі
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOpљ
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv3/BiasAddИ
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv3/ReluЊ
"block4_conv4/Conv2D/ReadVariableOpReadVariableOp+block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv4/Conv2D/ReadVariableOpд
block4_conv4/Conv2DConv2Dblock4_conv3/Relu:activations:0*block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block4_conv4/Conv2Dі
#block4_conv4/BiasAdd/ReadVariableOpReadVariableOp,block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv4/BiasAdd/ReadVariableOpљ
block4_conv4/BiasAddBiasAddblock4_conv4/Conv2D:output:0+block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv4/BiasAddИ
block4_conv4/ReluRelublock4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv4/Reluƒ
block4_pool/MaxPoolMaxPoolblock4_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPoolЊ
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv1/Conv2D/ReadVariableOpб
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv1/Conv2Dі
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOpљ
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv1/BiasAddИ
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv1/ReluЊ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv2/Conv2D/ReadVariableOpд
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv2/Conv2Dі
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOpљ
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv2/BiasAddИ
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv2/ReluЊ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv3/Conv2D/ReadVariableOpд
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv3/Conv2Dі
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOpљ
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv3/BiasAddИ
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv3/ReluЊ
"block5_conv4/Conv2D/ReadVariableOpReadVariableOp+block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv4/Conv2D/ReadVariableOpд
block5_conv4/Conv2DConv2Dblock5_conv3/Relu:activations:0*block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv4/Conv2Dі
#block5_conv4/BiasAdd/ReadVariableOpReadVariableOp,block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv4/BiasAdd/ReadVariableOpљ
block5_conv4/BiasAddBiasAddblock5_conv4/Conv2D:output:0+block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv4/BiasAddИ
block5_conv4/ReluRelublock5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv4/Reluƒ
block5_pool/MaxPoolMaxPoolblock5_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool©

IdentityIdentityblock5_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*≤
_input_shapes†
Э:€€€€€€€€€юю::::::::::::::::::::::::::::::::2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block3_conv4/BiasAdd/ReadVariableOp#block3_conv4/BiasAdd/ReadVariableOp2H
"block3_conv4/Conv2D/ReadVariableOp"block3_conv4/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block4_conv4/BiasAdd/ReadVariableOp#block4_conv4/BiasAdd/ReadVariableOp2H
"block4_conv4/Conv2D/ReadVariableOp"block4_conv4/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2J
#block5_conv4/BiasAdd/ReadVariableOp#block5_conv4/BiasAdd/ReadVariableOp2H
"block5_conv4/Conv2D/ReadVariableOp"block5_conv4/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
К
Б
,__inference_block4_conv2_layer_call_fn_35996

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_336302
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¶
G
+__inference_block5_pool_layer_call_fn_33369

inputs
identityк
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_333632
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Џ

а
G__inference_block3_conv1_layer_call_and_return_conditional_losses_33494

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€??А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€??А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€??А
 
_user_specified_nameinputs
ь
b
F__inference_block3_pool_layer_call_and_return_conditional_losses_33339

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
І
Е
@__inference_model_layer_call_and_return_conditional_losses_34496
input_11
vgg19_34372
vgg19_34374
vgg19_34376
vgg19_34378
vgg19_34380
vgg19_34382
vgg19_34384
vgg19_34386
vgg19_34388
vgg19_34390
vgg19_34392
vgg19_34394
vgg19_34396
vgg19_34398
vgg19_34400
vgg19_34402
vgg19_34404
vgg19_34406
vgg19_34408
vgg19_34410
vgg19_34412
vgg19_34414
vgg19_34416
vgg19_34418
vgg19_34420
vgg19_34422
vgg19_34424
vgg19_34426
vgg19_34428
vgg19_34430
vgg19_34432
vgg19_34434
dense_34490
dense_34492
identityИҐdense/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐvgg19/StatefulPartitionedCall“
vgg19/StatefulPartitionedCallStatefulPartitionedCallinput_11vgg19_34372vgg19_34374vgg19_34376vgg19_34378vgg19_34380vgg19_34382vgg19_34384vgg19_34386vgg19_34388vgg19_34390vgg19_34392vgg19_34394vgg19_34396vgg19_34398vgg19_34400vgg19_34402vgg19_34404vgg19_34406vgg19_34408vgg19_34410vgg19_34412vgg19_34414vgg19_34416vgg19_34418vgg19_34420vgg19_34422vgg19_34424vgg19_34426vgg19_34428vgg19_34430vgg19_34432vgg19_34434*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_341502
vgg19/StatefulPartitionedCallІ
(global_average_pooling2d/PartitionedCallPartitionedCall&vgg19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_342242*
(global_average_pooling2d/PartitionedCallЧ
dropout/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_344502!
dropout/StatefulPartitionedCallІ
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_34490dense_34492*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_344792
dense/StatefulPartitionedCall№
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall^vgg19/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Ї
_input_shapes®
•:€€€€€€€€€юю::::::::::::::::::::::::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2>
vgg19/StatefulPartitionedCallvgg19/StatefulPartitionedCall:[ W
1
_output_shapes
:€€€€€€€€€юю
"
_user_specified_name
input_11
п	
ў
@__inference_dense_layer_call_and_return_conditional_losses_35787

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SigmoidР
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Шh
–
@__inference_vgg19_layer_call_and_return_conditional_losses_33811
input_7
block1_conv1_33395
block1_conv1_33397
block1_conv2_33422
block1_conv2_33424
block2_conv1_33450
block2_conv1_33452
block2_conv2_33477
block2_conv2_33479
block3_conv1_33505
block3_conv1_33507
block3_conv2_33532
block3_conv2_33534
block3_conv3_33559
block3_conv3_33561
block3_conv4_33586
block3_conv4_33588
block4_conv1_33614
block4_conv1_33616
block4_conv2_33641
block4_conv2_33643
block4_conv3_33668
block4_conv3_33670
block4_conv4_33695
block4_conv4_33697
block5_conv1_33723
block5_conv1_33725
block5_conv2_33750
block5_conv2_33752
block5_conv3_33777
block5_conv3_33779
block5_conv4_33804
block5_conv4_33806
identityИҐ$block1_conv1/StatefulPartitionedCallҐ$block1_conv2/StatefulPartitionedCallҐ$block2_conv1/StatefulPartitionedCallҐ$block2_conv2/StatefulPartitionedCallҐ$block3_conv1/StatefulPartitionedCallҐ$block3_conv2/StatefulPartitionedCallҐ$block3_conv3/StatefulPartitionedCallҐ$block3_conv4/StatefulPartitionedCallҐ$block4_conv1/StatefulPartitionedCallҐ$block4_conv2/StatefulPartitionedCallҐ$block4_conv3/StatefulPartitionedCallҐ$block4_conv4/StatefulPartitionedCallҐ$block5_conv1/StatefulPartitionedCallҐ$block5_conv2/StatefulPartitionedCallҐ$block5_conv3/StatefulPartitionedCallҐ$block5_conv4/StatefulPartitionedCall≥
$block1_conv1/StatefulPartitionedCallStatefulPartitionedCallinput_7block1_conv1_33395block1_conv1_33397*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_conv1_layer_call_and_return_conditional_losses_333842&
$block1_conv1/StatefulPartitionedCallў
$block1_conv2/StatefulPartitionedCallStatefulPartitionedCall-block1_conv1/StatefulPartitionedCall:output:0block1_conv2_33422block1_conv2_33424*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_334112&
$block1_conv2/StatefulPartitionedCallО
block1_pool/PartitionedCallPartitionedCall-block1_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block1_pool_layer_call_and_return_conditional_losses_333152
block1_pool/PartitionedCallѕ
$block2_conv1/StatefulPartitionedCallStatefulPartitionedCall$block1_pool/PartitionedCall:output:0block2_conv1_33450block2_conv1_33452*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_conv1_layer_call_and_return_conditional_losses_334392&
$block2_conv1/StatefulPartitionedCallЎ
$block2_conv2/StatefulPartitionedCallStatefulPartitionedCall-block2_conv1/StatefulPartitionedCall:output:0block2_conv2_33477block2_conv2_33479*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_334662&
$block2_conv2/StatefulPartitionedCallП
block2_pool/PartitionedCallPartitionedCall-block2_conv2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block2_pool_layer_call_and_return_conditional_losses_333272
block2_pool/PartitionedCallѕ
$block3_conv1/StatefulPartitionedCallStatefulPartitionedCall$block2_pool/PartitionedCall:output:0block3_conv1_33505block3_conv1_33507*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_334942&
$block3_conv1/StatefulPartitionedCallЎ
$block3_conv2/StatefulPartitionedCallStatefulPartitionedCall-block3_conv1/StatefulPartitionedCall:output:0block3_conv2_33532block3_conv2_33534*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_335212&
$block3_conv2/StatefulPartitionedCallЎ
$block3_conv3/StatefulPartitionedCallStatefulPartitionedCall-block3_conv2/StatefulPartitionedCall:output:0block3_conv3_33559block3_conv3_33561*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv3_layer_call_and_return_conditional_losses_335482&
$block3_conv3/StatefulPartitionedCallЎ
$block3_conv4/StatefulPartitionedCallStatefulPartitionedCall-block3_conv3/StatefulPartitionedCall:output:0block3_conv4_33586block3_conv4_33588*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv4_layer_call_and_return_conditional_losses_335752&
$block3_conv4/StatefulPartitionedCallП
block3_pool/PartitionedCallPartitionedCall-block3_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block3_pool_layer_call_and_return_conditional_losses_333392
block3_pool/PartitionedCallѕ
$block4_conv1/StatefulPartitionedCallStatefulPartitionedCall$block3_pool/PartitionedCall:output:0block4_conv1_33614block4_conv1_33616*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv1_layer_call_and_return_conditional_losses_336032&
$block4_conv1/StatefulPartitionedCallЎ
$block4_conv2/StatefulPartitionedCallStatefulPartitionedCall-block4_conv1/StatefulPartitionedCall:output:0block4_conv2_33641block4_conv2_33643*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv2_layer_call_and_return_conditional_losses_336302&
$block4_conv2/StatefulPartitionedCallЎ
$block4_conv3/StatefulPartitionedCallStatefulPartitionedCall-block4_conv2/StatefulPartitionedCall:output:0block4_conv3_33668block4_conv3_33670*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv3_layer_call_and_return_conditional_losses_336572&
$block4_conv3/StatefulPartitionedCallЎ
$block4_conv4/StatefulPartitionedCallStatefulPartitionedCall-block4_conv3/StatefulPartitionedCall:output:0block4_conv4_33695block4_conv4_33697*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block4_conv4_layer_call_and_return_conditional_losses_336842&
$block4_conv4/StatefulPartitionedCallП
block4_pool/PartitionedCallPartitionedCall-block4_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_333512
block4_pool/PartitionedCallѕ
$block5_conv1/StatefulPartitionedCallStatefulPartitionedCall$block4_pool/PartitionedCall:output:0block5_conv1_33723block5_conv1_33725*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv1_layer_call_and_return_conditional_losses_337122&
$block5_conv1/StatefulPartitionedCallЎ
$block5_conv2/StatefulPartitionedCallStatefulPartitionedCall-block5_conv1/StatefulPartitionedCall:output:0block5_conv2_33750block5_conv2_33752*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv2_layer_call_and_return_conditional_losses_337392&
$block5_conv2/StatefulPartitionedCallЎ
$block5_conv3/StatefulPartitionedCallStatefulPartitionedCall-block5_conv2/StatefulPartitionedCall:output:0block5_conv3_33777block5_conv3_33779*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv3_layer_call_and_return_conditional_losses_337662&
$block5_conv3/StatefulPartitionedCallЎ
$block5_conv4/StatefulPartitionedCallStatefulPartitionedCall-block5_conv3/StatefulPartitionedCall:output:0block5_conv4_33804block5_conv4_33806*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block5_conv4_layer_call_and_return_conditional_losses_337932&
$block5_conv4/StatefulPartitionedCallП
block5_pool/PartitionedCallPartitionedCall-block5_conv4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block5_pool_layer_call_and_return_conditional_losses_333632
block5_pool/PartitionedCallс
IdentityIdentity$block5_pool/PartitionedCall:output:0%^block1_conv1/StatefulPartitionedCall%^block1_conv2/StatefulPartitionedCall%^block2_conv1/StatefulPartitionedCall%^block2_conv2/StatefulPartitionedCall%^block3_conv1/StatefulPartitionedCall%^block3_conv2/StatefulPartitionedCall%^block3_conv3/StatefulPartitionedCall%^block3_conv4/StatefulPartitionedCall%^block4_conv1/StatefulPartitionedCall%^block4_conv2/StatefulPartitionedCall%^block4_conv3/StatefulPartitionedCall%^block4_conv4/StatefulPartitionedCall%^block5_conv1/StatefulPartitionedCall%^block5_conv2/StatefulPartitionedCall%^block5_conv3/StatefulPartitionedCall%^block5_conv4/StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*≤
_input_shapes†
Э:€€€€€€€€€юю::::::::::::::::::::::::::::::::2L
$block1_conv1/StatefulPartitionedCall$block1_conv1/StatefulPartitionedCall2L
$block1_conv2/StatefulPartitionedCall$block1_conv2/StatefulPartitionedCall2L
$block2_conv1/StatefulPartitionedCall$block2_conv1/StatefulPartitionedCall2L
$block2_conv2/StatefulPartitionedCall$block2_conv2/StatefulPartitionedCall2L
$block3_conv1/StatefulPartitionedCall$block3_conv1/StatefulPartitionedCall2L
$block3_conv2/StatefulPartitionedCall$block3_conv2/StatefulPartitionedCall2L
$block3_conv3/StatefulPartitionedCall$block3_conv3/StatefulPartitionedCall2L
$block3_conv4/StatefulPartitionedCall$block3_conv4/StatefulPartitionedCall2L
$block4_conv1/StatefulPartitionedCall$block4_conv1/StatefulPartitionedCall2L
$block4_conv2/StatefulPartitionedCall$block4_conv2/StatefulPartitionedCall2L
$block4_conv3/StatefulPartitionedCall$block4_conv3/StatefulPartitionedCall2L
$block4_conv4/StatefulPartitionedCall$block4_conv4/StatefulPartitionedCall2L
$block5_conv1/StatefulPartitionedCall$block5_conv1/StatefulPartitionedCall2L
$block5_conv2/StatefulPartitionedCall$block5_conv2/StatefulPartitionedCall2L
$block5_conv3/StatefulPartitionedCall$block5_conv3/StatefulPartitionedCall2L
$block5_conv4/StatefulPartitionedCall$block5_conv4/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€юю
!
_user_specified_name	input_7
Џ

а
G__inference_block5_conv1_layer_call_and_return_conditional_losses_36047

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
К
Б
,__inference_block3_conv2_layer_call_fn_35916

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv2_layer_call_and_return_conditional_losses_335212
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€??А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€??А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€??А
 
_user_specified_nameinputs
¶
G
+__inference_block4_pool_layer_call_fn_33357

inputs
identityк
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_block4_pool_layer_call_and_return_conditional_losses_333512
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Џ

а
G__inference_block3_conv2_layer_call_and_return_conditional_losses_35907

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€??А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€??А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€??А
 
_user_specified_nameinputs
Џ

а
G__inference_block4_conv3_layer_call_and_return_conditional_losses_36007

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ

а
G__inference_block5_conv3_layer_call_and_return_conditional_losses_33766

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
О
Б
,__inference_block1_conv2_layer_call_fn_35836

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallД
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€юю@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block1_conv2_layer_call_and_return_conditional_losses_334112
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:€€€€€€€€€юю@2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:€€€€€€€€€юю@::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€юю@
 
_user_specified_nameinputs
ў≤
њ
@__inference_vgg19_layer_call_and_return_conditional_losses_35611

inputs/
+block1_conv1_conv2d_readvariableop_resource0
,block1_conv1_biasadd_readvariableop_resource/
+block1_conv2_conv2d_readvariableop_resource0
,block1_conv2_biasadd_readvariableop_resource/
+block2_conv1_conv2d_readvariableop_resource0
,block2_conv1_biasadd_readvariableop_resource/
+block2_conv2_conv2d_readvariableop_resource0
,block2_conv2_biasadd_readvariableop_resource/
+block3_conv1_conv2d_readvariableop_resource0
,block3_conv1_biasadd_readvariableop_resource/
+block3_conv2_conv2d_readvariableop_resource0
,block3_conv2_biasadd_readvariableop_resource/
+block3_conv3_conv2d_readvariableop_resource0
,block3_conv3_biasadd_readvariableop_resource/
+block3_conv4_conv2d_readvariableop_resource0
,block3_conv4_biasadd_readvariableop_resource/
+block4_conv1_conv2d_readvariableop_resource0
,block4_conv1_biasadd_readvariableop_resource/
+block4_conv2_conv2d_readvariableop_resource0
,block4_conv2_biasadd_readvariableop_resource/
+block4_conv3_conv2d_readvariableop_resource0
,block4_conv3_biasadd_readvariableop_resource/
+block4_conv4_conv2d_readvariableop_resource0
,block4_conv4_biasadd_readvariableop_resource/
+block5_conv1_conv2d_readvariableop_resource0
,block5_conv1_biasadd_readvariableop_resource/
+block5_conv2_conv2d_readvariableop_resource0
,block5_conv2_biasadd_readvariableop_resource/
+block5_conv3_conv2d_readvariableop_resource0
,block5_conv3_biasadd_readvariableop_resource/
+block5_conv4_conv2d_readvariableop_resource0
,block5_conv4_biasadd_readvariableop_resource
identityИҐ#block1_conv1/BiasAdd/ReadVariableOpҐ"block1_conv1/Conv2D/ReadVariableOpҐ#block1_conv2/BiasAdd/ReadVariableOpҐ"block1_conv2/Conv2D/ReadVariableOpҐ#block2_conv1/BiasAdd/ReadVariableOpҐ"block2_conv1/Conv2D/ReadVariableOpҐ#block2_conv2/BiasAdd/ReadVariableOpҐ"block2_conv2/Conv2D/ReadVariableOpҐ#block3_conv1/BiasAdd/ReadVariableOpҐ"block3_conv1/Conv2D/ReadVariableOpҐ#block3_conv2/BiasAdd/ReadVariableOpҐ"block3_conv2/Conv2D/ReadVariableOpҐ#block3_conv3/BiasAdd/ReadVariableOpҐ"block3_conv3/Conv2D/ReadVariableOpҐ#block3_conv4/BiasAdd/ReadVariableOpҐ"block3_conv4/Conv2D/ReadVariableOpҐ#block4_conv1/BiasAdd/ReadVariableOpҐ"block4_conv1/Conv2D/ReadVariableOpҐ#block4_conv2/BiasAdd/ReadVariableOpҐ"block4_conv2/Conv2D/ReadVariableOpҐ#block4_conv3/BiasAdd/ReadVariableOpҐ"block4_conv3/Conv2D/ReadVariableOpҐ#block4_conv4/BiasAdd/ReadVariableOpҐ"block4_conv4/Conv2D/ReadVariableOpҐ#block5_conv1/BiasAdd/ReadVariableOpҐ"block5_conv1/Conv2D/ReadVariableOpҐ#block5_conv2/BiasAdd/ReadVariableOpҐ"block5_conv2/Conv2D/ReadVariableOpҐ#block5_conv3/BiasAdd/ReadVariableOpҐ"block5_conv3/Conv2D/ReadVariableOpҐ#block5_conv4/BiasAdd/ReadVariableOpҐ"block5_conv4/Conv2D/ReadVariableOpЉ
"block1_conv1/Conv2D/ReadVariableOpReadVariableOp+block1_conv1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02$
"block1_conv1/Conv2D/ReadVariableOpћ
block1_conv1/Conv2DConv2Dinputs*block1_conv1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2
block1_conv1/Conv2D≥
#block1_conv1/BiasAdd/ReadVariableOpReadVariableOp,block1_conv1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv1/BiasAdd/ReadVariableOpЊ
block1_conv1/BiasAddBiasAddblock1_conv1/Conv2D:output:0+block1_conv1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
block1_conv1/BiasAddЙ
block1_conv1/ReluRelublock1_conv1/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
block1_conv1/ReluЉ
"block1_conv2/Conv2D/ReadVariableOpReadVariableOp+block1_conv2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02$
"block1_conv2/Conv2D/ReadVariableOpе
block1_conv2/Conv2DConv2Dblock1_conv1/Relu:activations:0*block1_conv2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@*
paddingSAME*
strides
2
block1_conv2/Conv2D≥
#block1_conv2/BiasAdd/ReadVariableOpReadVariableOp,block1_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#block1_conv2/BiasAdd/ReadVariableOpЊ
block1_conv2/BiasAddBiasAddblock1_conv2/Conv2D:output:0+block1_conv2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
block1_conv2/BiasAddЙ
block1_conv2/ReluRelublock1_conv2/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€юю@2
block1_conv2/Relu√
block1_pool/MaxPoolMaxPoolblock1_conv2/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
2
block1_pool/MaxPoolљ
"block2_conv1/Conv2D/ReadVariableOpReadVariableOp+block2_conv1_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02$
"block2_conv1/Conv2D/ReadVariableOpб
block2_conv1/Conv2DConv2Dblock1_pool/MaxPool:output:0*block2_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block2_conv1/Conv2Dі
#block2_conv1/BiasAdd/ReadVariableOpReadVariableOp,block2_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block2_conv1/BiasAdd/ReadVariableOpљ
block2_conv1/BiasAddBiasAddblock2_conv1/Conv2D:output:0+block2_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block2_conv1/BiasAddИ
block2_conv1/ReluRelublock2_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block2_conv1/ReluЊ
"block2_conv2/Conv2D/ReadVariableOpReadVariableOp+block2_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block2_conv2/Conv2D/ReadVariableOpд
block2_conv2/Conv2DConv2Dblock2_conv1/Relu:activations:0*block2_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block2_conv2/Conv2Dі
#block2_conv2/BiasAdd/ReadVariableOpReadVariableOp,block2_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block2_conv2/BiasAdd/ReadVariableOpљ
block2_conv2/BiasAddBiasAddblock2_conv2/Conv2D:output:0+block2_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block2_conv2/BiasAddИ
block2_conv2/ReluRelublock2_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block2_conv2/Reluƒ
block2_pool/MaxPoolMaxPoolblock2_conv2/Relu:activations:0*0
_output_shapes
:€€€€€€€€€??А*
ksize
*
paddingVALID*
strides
2
block2_pool/MaxPoolЊ
"block3_conv1/Conv2D/ReadVariableOpReadVariableOp+block3_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv1/Conv2D/ReadVariableOpб
block3_conv1/Conv2DConv2Dblock2_pool/MaxPool:output:0*block3_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
block3_conv1/Conv2Dі
#block3_conv1/BiasAdd/ReadVariableOpReadVariableOp,block3_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv1/BiasAdd/ReadVariableOpљ
block3_conv1/BiasAddBiasAddblock3_conv1/Conv2D:output:0+block3_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv1/BiasAddИ
block3_conv1/ReluRelublock3_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv1/ReluЊ
"block3_conv2/Conv2D/ReadVariableOpReadVariableOp+block3_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv2/Conv2D/ReadVariableOpд
block3_conv2/Conv2DConv2Dblock3_conv1/Relu:activations:0*block3_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
block3_conv2/Conv2Dі
#block3_conv2/BiasAdd/ReadVariableOpReadVariableOp,block3_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv2/BiasAdd/ReadVariableOpљ
block3_conv2/BiasAddBiasAddblock3_conv2/Conv2D:output:0+block3_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv2/BiasAddИ
block3_conv2/ReluRelublock3_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv2/ReluЊ
"block3_conv3/Conv2D/ReadVariableOpReadVariableOp+block3_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv3/Conv2D/ReadVariableOpд
block3_conv3/Conv2DConv2Dblock3_conv2/Relu:activations:0*block3_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
block3_conv3/Conv2Dі
#block3_conv3/BiasAdd/ReadVariableOpReadVariableOp,block3_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv3/BiasAdd/ReadVariableOpљ
block3_conv3/BiasAddBiasAddblock3_conv3/Conv2D:output:0+block3_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv3/BiasAddИ
block3_conv3/ReluRelublock3_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv3/ReluЊ
"block3_conv4/Conv2D/ReadVariableOpReadVariableOp+block3_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block3_conv4/Conv2D/ReadVariableOpд
block3_conv4/Conv2DConv2Dblock3_conv3/Relu:activations:0*block3_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
block3_conv4/Conv2Dі
#block3_conv4/BiasAdd/ReadVariableOpReadVariableOp,block3_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block3_conv4/BiasAdd/ReadVariableOpљ
block3_conv4/BiasAddBiasAddblock3_conv4/Conv2D:output:0+block3_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv4/BiasAddИ
block3_conv4/ReluRelublock3_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
block3_conv4/Reluƒ
block3_pool/MaxPoolMaxPoolblock3_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
block3_pool/MaxPoolЊ
"block4_conv1/Conv2D/ReadVariableOpReadVariableOp+block4_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv1/Conv2D/ReadVariableOpб
block4_conv1/Conv2DConv2Dblock3_pool/MaxPool:output:0*block4_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block4_conv1/Conv2Dі
#block4_conv1/BiasAdd/ReadVariableOpReadVariableOp,block4_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv1/BiasAdd/ReadVariableOpљ
block4_conv1/BiasAddBiasAddblock4_conv1/Conv2D:output:0+block4_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv1/BiasAddИ
block4_conv1/ReluRelublock4_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv1/ReluЊ
"block4_conv2/Conv2D/ReadVariableOpReadVariableOp+block4_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv2/Conv2D/ReadVariableOpд
block4_conv2/Conv2DConv2Dblock4_conv1/Relu:activations:0*block4_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block4_conv2/Conv2Dі
#block4_conv2/BiasAdd/ReadVariableOpReadVariableOp,block4_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv2/BiasAdd/ReadVariableOpљ
block4_conv2/BiasAddBiasAddblock4_conv2/Conv2D:output:0+block4_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv2/BiasAddИ
block4_conv2/ReluRelublock4_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv2/ReluЊ
"block4_conv3/Conv2D/ReadVariableOpReadVariableOp+block4_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv3/Conv2D/ReadVariableOpд
block4_conv3/Conv2DConv2Dblock4_conv2/Relu:activations:0*block4_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block4_conv3/Conv2Dі
#block4_conv3/BiasAdd/ReadVariableOpReadVariableOp,block4_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv3/BiasAdd/ReadVariableOpљ
block4_conv3/BiasAddBiasAddblock4_conv3/Conv2D:output:0+block4_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv3/BiasAddИ
block4_conv3/ReluRelublock4_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv3/ReluЊ
"block4_conv4/Conv2D/ReadVariableOpReadVariableOp+block4_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block4_conv4/Conv2D/ReadVariableOpд
block4_conv4/Conv2DConv2Dblock4_conv3/Relu:activations:0*block4_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block4_conv4/Conv2Dі
#block4_conv4/BiasAdd/ReadVariableOpReadVariableOp,block4_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block4_conv4/BiasAdd/ReadVariableOpљ
block4_conv4/BiasAddBiasAddblock4_conv4/Conv2D:output:0+block4_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv4/BiasAddИ
block4_conv4/ReluRelublock4_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block4_conv4/Reluƒ
block4_pool/MaxPoolMaxPoolblock4_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
block4_pool/MaxPoolЊ
"block5_conv1/Conv2D/ReadVariableOpReadVariableOp+block5_conv1_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv1/Conv2D/ReadVariableOpб
block5_conv1/Conv2DConv2Dblock4_pool/MaxPool:output:0*block5_conv1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv1/Conv2Dі
#block5_conv1/BiasAdd/ReadVariableOpReadVariableOp,block5_conv1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv1/BiasAdd/ReadVariableOpљ
block5_conv1/BiasAddBiasAddblock5_conv1/Conv2D:output:0+block5_conv1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv1/BiasAddИ
block5_conv1/ReluRelublock5_conv1/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv1/ReluЊ
"block5_conv2/Conv2D/ReadVariableOpReadVariableOp+block5_conv2_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv2/Conv2D/ReadVariableOpд
block5_conv2/Conv2DConv2Dblock5_conv1/Relu:activations:0*block5_conv2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv2/Conv2Dі
#block5_conv2/BiasAdd/ReadVariableOpReadVariableOp,block5_conv2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv2/BiasAdd/ReadVariableOpљ
block5_conv2/BiasAddBiasAddblock5_conv2/Conv2D:output:0+block5_conv2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv2/BiasAddИ
block5_conv2/ReluRelublock5_conv2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv2/ReluЊ
"block5_conv3/Conv2D/ReadVariableOpReadVariableOp+block5_conv3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv3/Conv2D/ReadVariableOpд
block5_conv3/Conv2DConv2Dblock5_conv2/Relu:activations:0*block5_conv3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv3/Conv2Dі
#block5_conv3/BiasAdd/ReadVariableOpReadVariableOp,block5_conv3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv3/BiasAdd/ReadVariableOpљ
block5_conv3/BiasAddBiasAddblock5_conv3/Conv2D:output:0+block5_conv3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv3/BiasAddИ
block5_conv3/ReluRelublock5_conv3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv3/ReluЊ
"block5_conv4/Conv2D/ReadVariableOpReadVariableOp+block5_conv4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02$
"block5_conv4/Conv2D/ReadVariableOpд
block5_conv4/Conv2DConv2Dblock5_conv3/Relu:activations:0*block5_conv4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
2
block5_conv4/Conv2Dі
#block5_conv4/BiasAdd/ReadVariableOpReadVariableOp,block5_conv4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#block5_conv4/BiasAdd/ReadVariableOpљ
block5_conv4/BiasAddBiasAddblock5_conv4/Conv2D:output:0+block5_conv4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv4/BiasAddИ
block5_conv4/ReluRelublock5_conv4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А2
block5_conv4/Reluƒ
block5_pool/MaxPoolMaxPoolblock5_conv4/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
2
block5_pool/MaxPool©

IdentityIdentityblock5_pool/MaxPool:output:0$^block1_conv1/BiasAdd/ReadVariableOp#^block1_conv1/Conv2D/ReadVariableOp$^block1_conv2/BiasAdd/ReadVariableOp#^block1_conv2/Conv2D/ReadVariableOp$^block2_conv1/BiasAdd/ReadVariableOp#^block2_conv1/Conv2D/ReadVariableOp$^block2_conv2/BiasAdd/ReadVariableOp#^block2_conv2/Conv2D/ReadVariableOp$^block3_conv1/BiasAdd/ReadVariableOp#^block3_conv1/Conv2D/ReadVariableOp$^block3_conv2/BiasAdd/ReadVariableOp#^block3_conv2/Conv2D/ReadVariableOp$^block3_conv3/BiasAdd/ReadVariableOp#^block3_conv3/Conv2D/ReadVariableOp$^block3_conv4/BiasAdd/ReadVariableOp#^block3_conv4/Conv2D/ReadVariableOp$^block4_conv1/BiasAdd/ReadVariableOp#^block4_conv1/Conv2D/ReadVariableOp$^block4_conv2/BiasAdd/ReadVariableOp#^block4_conv2/Conv2D/ReadVariableOp$^block4_conv3/BiasAdd/ReadVariableOp#^block4_conv3/Conv2D/ReadVariableOp$^block4_conv4/BiasAdd/ReadVariableOp#^block4_conv4/Conv2D/ReadVariableOp$^block5_conv1/BiasAdd/ReadVariableOp#^block5_conv1/Conv2D/ReadVariableOp$^block5_conv2/BiasAdd/ReadVariableOp#^block5_conv2/Conv2D/ReadVariableOp$^block5_conv3/BiasAdd/ReadVariableOp#^block5_conv3/Conv2D/ReadVariableOp$^block5_conv4/BiasAdd/ReadVariableOp#^block5_conv4/Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*≤
_input_shapes†
Э:€€€€€€€€€юю::::::::::::::::::::::::::::::::2J
#block1_conv1/BiasAdd/ReadVariableOp#block1_conv1/BiasAdd/ReadVariableOp2H
"block1_conv1/Conv2D/ReadVariableOp"block1_conv1/Conv2D/ReadVariableOp2J
#block1_conv2/BiasAdd/ReadVariableOp#block1_conv2/BiasAdd/ReadVariableOp2H
"block1_conv2/Conv2D/ReadVariableOp"block1_conv2/Conv2D/ReadVariableOp2J
#block2_conv1/BiasAdd/ReadVariableOp#block2_conv1/BiasAdd/ReadVariableOp2H
"block2_conv1/Conv2D/ReadVariableOp"block2_conv1/Conv2D/ReadVariableOp2J
#block2_conv2/BiasAdd/ReadVariableOp#block2_conv2/BiasAdd/ReadVariableOp2H
"block2_conv2/Conv2D/ReadVariableOp"block2_conv2/Conv2D/ReadVariableOp2J
#block3_conv1/BiasAdd/ReadVariableOp#block3_conv1/BiasAdd/ReadVariableOp2H
"block3_conv1/Conv2D/ReadVariableOp"block3_conv1/Conv2D/ReadVariableOp2J
#block3_conv2/BiasAdd/ReadVariableOp#block3_conv2/BiasAdd/ReadVariableOp2H
"block3_conv2/Conv2D/ReadVariableOp"block3_conv2/Conv2D/ReadVariableOp2J
#block3_conv3/BiasAdd/ReadVariableOp#block3_conv3/BiasAdd/ReadVariableOp2H
"block3_conv3/Conv2D/ReadVariableOp"block3_conv3/Conv2D/ReadVariableOp2J
#block3_conv4/BiasAdd/ReadVariableOp#block3_conv4/BiasAdd/ReadVariableOp2H
"block3_conv4/Conv2D/ReadVariableOp"block3_conv4/Conv2D/ReadVariableOp2J
#block4_conv1/BiasAdd/ReadVariableOp#block4_conv1/BiasAdd/ReadVariableOp2H
"block4_conv1/Conv2D/ReadVariableOp"block4_conv1/Conv2D/ReadVariableOp2J
#block4_conv2/BiasAdd/ReadVariableOp#block4_conv2/BiasAdd/ReadVariableOp2H
"block4_conv2/Conv2D/ReadVariableOp"block4_conv2/Conv2D/ReadVariableOp2J
#block4_conv3/BiasAdd/ReadVariableOp#block4_conv3/BiasAdd/ReadVariableOp2H
"block4_conv3/Conv2D/ReadVariableOp"block4_conv3/Conv2D/ReadVariableOp2J
#block4_conv4/BiasAdd/ReadVariableOp#block4_conv4/BiasAdd/ReadVariableOp2H
"block4_conv4/Conv2D/ReadVariableOp"block4_conv4/Conv2D/ReadVariableOp2J
#block5_conv1/BiasAdd/ReadVariableOp#block5_conv1/BiasAdd/ReadVariableOp2H
"block5_conv1/Conv2D/ReadVariableOp"block5_conv1/Conv2D/ReadVariableOp2J
#block5_conv2/BiasAdd/ReadVariableOp#block5_conv2/BiasAdd/ReadVariableOp2H
"block5_conv2/Conv2D/ReadVariableOp"block5_conv2/Conv2D/ReadVariableOp2J
#block5_conv3/BiasAdd/ReadVariableOp#block5_conv3/BiasAdd/ReadVariableOp2H
"block5_conv3/Conv2D/ReadVariableOp"block5_conv3/Conv2D/ReadVariableOp2J
#block5_conv4/BiasAdd/ReadVariableOp#block5_conv4/BiasAdd/ReadVariableOp2H
"block5_conv4/Conv2D/ReadVariableOp"block5_conv4/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
ь
b
F__inference_block2_pool_layer_call_and_return_conditional_losses_33327

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
К
Б
,__inference_block2_conv2_layer_call_fn_35876

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block2_conv2_layer_call_and_return_conditional_losses_334662
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ

а
G__inference_block3_conv3_layer_call_and_return_conditional_losses_33548

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOp§
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€??А2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€??А2
Relu†
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:€€€€€€€€€??А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€??А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€??А
 
_user_specified_nameinputs
щ
б
@__inference_model_layer_call_and_return_conditional_losses_34800

inputs
vgg19_34727
vgg19_34729
vgg19_34731
vgg19_34733
vgg19_34735
vgg19_34737
vgg19_34739
vgg19_34741
vgg19_34743
vgg19_34745
vgg19_34747
vgg19_34749
vgg19_34751
vgg19_34753
vgg19_34755
vgg19_34757
vgg19_34759
vgg19_34761
vgg19_34763
vgg19_34765
vgg19_34767
vgg19_34769
vgg19_34771
vgg19_34773
vgg19_34775
vgg19_34777
vgg19_34779
vgg19_34781
vgg19_34783
vgg19_34785
vgg19_34787
vgg19_34789
dense_34794
dense_34796
identityИҐdense/StatefulPartitionedCallҐvgg19/StatefulPartitionedCall–
vgg19/StatefulPartitionedCallStatefulPartitionedCallinputsvgg19_34727vgg19_34729vgg19_34731vgg19_34733vgg19_34735vgg19_34737vgg19_34739vgg19_34741vgg19_34743vgg19_34745vgg19_34747vgg19_34749vgg19_34751vgg19_34753vgg19_34755vgg19_34757vgg19_34759vgg19_34761vgg19_34763vgg19_34765vgg19_34767vgg19_34769vgg19_34771vgg19_34773vgg19_34775vgg19_34777vgg19_34779vgg19_34781vgg19_34783vgg19_34785vgg19_34787vgg19_34789*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_vgg19_layer_call_and_return_conditional_losses_341502
vgg19/StatefulPartitionedCallІ
(global_average_pooling2d/PartitionedCallPartitionedCall&vgg19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *\
fWRU
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_342242*
(global_average_pooling2d/PartitionedCall€
dropout/PartitionedCallPartitionedCall1global_average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_344552
dropout/PartitionedCallЯ
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_34794dense_34796*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_344792
dense/StatefulPartitionedCallЇ
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall^vgg19/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Ї
_input_shapes®
•:€€€€€€€€€юю::::::::::::::::::::::::::::::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2>
vgg19/StatefulPartitionedCallvgg19/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€юю
 
_user_specified_nameinputs
К
Б
,__inference_block3_conv1_layer_call_fn_35896

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€??А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_block3_conv1_layer_call_and_return_conditional_losses_334942
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:€€€€€€€€€??А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:€€€€€€€€€??А::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€??А
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*і
serving_default†
G
input_11;
serving_default_input_11:0€€€€€€€€€юю9
dense0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ш°
™э
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
Њ_default_save_signature
њ__call__
+ј&call_and_return_all_conditional_losses"жъ
_tf_keras_network…ъ{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 254, 254, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_11"}, "name": "input_11", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "vgg19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 254, 254, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_7"}, "name": "input_7", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_7", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}], "input_layers": [["input_7", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}, "name": "vgg19", "inbound_nodes": [[["input_11", 0, 0, {"training": false}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d", "inbound_nodes": [[["vgg19", 1, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["global_average_pooling2d", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["dropout", 0, 0, {}]]]}], "input_layers": [["input_11", 0, 0]], "output_layers": [["dense", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 254, 254, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 254, 254, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 254, 254, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_11"}, "name": "input_11", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "vgg19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 254, 254, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_7"}, "name": "input_7", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_7", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}], "input_layers": [["input_7", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}, "name": "vgg19", "inbound_nodes": [[["input_11", 0, 0, {"training": false}]]]}, {"class_name": "GlobalAveragePooling2D", "config": {"name": "global_average_pooling2d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_average_pooling2d", "inbound_nodes": [[["vgg19", 1, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["global_average_pooling2d", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["dropout", 0, 0, {}]]]}], "input_layers": [["input_11", 0, 0]], "output_layers": [["dense", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0003000000142492354, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
€"ь
_tf_keras_input_layer№{"class_name": "InputLayer", "name": "input_11", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 254, 254, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 254, 254, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_11"}}
Ви
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
layer_with_weights-6
layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer_with_weights-12
layer-17
layer_with_weights-13
layer-18
layer_with_weights-14
layer-19
 layer_with_weights-15
 layer-20
!layer-21
"regularization_losses
#	variables
$trainable_variables
%	keras_api
Ѕ__call__
+¬&call_and_return_all_conditional_losses"†б
_tf_keras_networkГб{"class_name": "Functional", "name": "vgg19", "trainable": false, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "vgg19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 254, 254, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_7"}, "name": "input_7", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_7", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}], "input_layers": [["input_7", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 254, 254, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 254, 254, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "vgg19", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 254, 254, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_7"}, "name": "input_7", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv1", "inbound_nodes": [[["input_7", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block1_conv2", "inbound_nodes": [[["block1_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block1_pool", "inbound_nodes": [[["block1_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv1", "inbound_nodes": [[["block1_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block2_conv2", "inbound_nodes": [[["block2_conv1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block2_pool", "inbound_nodes": [[["block2_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv1", "inbound_nodes": [[["block2_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv2", "inbound_nodes": [[["block3_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv3", "inbound_nodes": [[["block3_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block3_conv4", "inbound_nodes": [[["block3_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block3_pool", "inbound_nodes": [[["block3_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv1", "inbound_nodes": [[["block3_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv2", "inbound_nodes": [[["block4_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv3", "inbound_nodes": [[["block4_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block4_conv4", "inbound_nodes": [[["block4_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block4_pool", "inbound_nodes": [[["block4_conv4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv1", "inbound_nodes": [[["block4_pool", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv2", "inbound_nodes": [[["block5_conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv3", "inbound_nodes": [[["block5_conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "block5_conv4", "inbound_nodes": [[["block5_conv3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "block5_pool", "inbound_nodes": [[["block5_conv4", 0, 0, {}]]]}], "input_layers": [["input_7", 0, 0]], "output_layers": [["block5_pool", 0, 0]]}}}
Х
&regularization_losses
'	variables
(trainable_variables
)	keras_api
√__call__
+ƒ&call_and_return_all_conditional_losses"Д
_tf_keras_layerк{"class_name": "GlobalAveragePooling2D", "name": "global_average_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_average_pooling2d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
г
*regularization_losses
+	variables
,trainable_variables
-	keras_api
≈__call__
+∆&call_and_return_all_conditional_losses"“
_tf_keras_layerЄ{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
т

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
«__call__
+»&call_and_return_all_conditional_losses"Ћ
_tf_keras_layer±{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
{
4iter

5beta_1

6beta_2
	7decay
8learning_rate.mЇ/mї.vЉ/vљ"
	optimizer
 "
trackable_list_wrapper
¶
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
O22
P23
Q24
R25
S26
T27
U28
V29
W30
X31
.32
/33"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
ќ
regularization_losses
Ynon_trainable_variables
	variables
Zlayer_regularization_losses
	trainable_variables

[layers
\layer_metrics
]metrics
њ__call__
Њ_default_save_signature
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
-
…serving_default"
signature_map
э"ъ
_tf_keras_input_layerЏ{"class_name": "InputLayer", "name": "input_7", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 254, 254, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 254, 254, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_7"}}
ю	

9kernel
:bias
^regularization_losses
_	variables
`trainable_variables
a	keras_api
 __call__
+Ћ&call_and_return_all_conditional_losses"„
_tf_keras_layerљ{"class_name": "Conv2D", "name": "block1_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block1_conv1", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 254, 254, 3]}}
А


;kernel
<bias
bregularization_losses
c	variables
dtrainable_variables
e	keras_api
ћ__call__
+Ќ&call_and_return_all_conditional_losses"ў
_tf_keras_layerњ{"class_name": "Conv2D", "name": "block1_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block1_conv2", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 254, 254, 64]}}
ы
fregularization_losses
g	variables
htrainable_variables
i	keras_api
ќ__call__
+ѕ&call_and_return_all_conditional_losses"к
_tf_keras_layer–{"class_name": "MaxPooling2D", "name": "block1_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block1_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Б


=kernel
>bias
jregularization_losses
k	variables
ltrainable_variables
m	keras_api
–__call__
+—&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block2_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block2_conv1", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 127, 127, 64]}}
Г


?kernel
@bias
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
“__call__
+”&call_and_return_all_conditional_losses"№
_tf_keras_layer¬{"class_name": "Conv2D", "name": "block2_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block2_conv2", "trainable": false, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 127, 127, 128]}}
ы
rregularization_losses
s	variables
ttrainable_variables
u	keras_api
‘__call__
+’&call_and_return_all_conditional_losses"к
_tf_keras_layer–{"class_name": "MaxPooling2D", "name": "block2_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block2_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Б


Akernel
Bbias
vregularization_losses
w	variables
xtrainable_variables
y	keras_api
÷__call__
+„&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block3_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_conv1", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 63, 63, 128]}}
Б


Ckernel
Dbias
zregularization_losses
{	variables
|trainable_variables
}	keras_api
Ў__call__
+ў&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block3_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_conv2", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 63, 63, 256]}}
Г


Ekernel
Fbias
~regularization_losses
	variables
Аtrainable_variables
Б	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block3_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_conv3", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 63, 63, 256]}}
Е


Gkernel
Hbias
Вregularization_losses
Г	variables
Дtrainable_variables
Е	keras_api
№__call__
+Ё&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block3_conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_conv4", "trainable": false, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 63, 63, 256]}}
€
Жregularization_losses
З	variables
Иtrainable_variables
Й	keras_api
ё__call__
+я&call_and_return_all_conditional_losses"к
_tf_keras_layer–{"class_name": "MaxPooling2D", "name": "block3_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block3_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Е


Ikernel
Jbias
Кregularization_losses
Л	variables
Мtrainable_variables
Н	keras_api
а__call__
+б&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block4_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 31, 256]}}
Е


Kkernel
Lbias
Оregularization_losses
П	variables
Рtrainable_variables
С	keras_api
в__call__
+г&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block4_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 31, 512]}}
Е


Mkernel
Nbias
Тregularization_losses
У	variables
Фtrainable_variables
Х	keras_api
д__call__
+е&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block4_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 31, 512]}}
Е


Okernel
Pbias
Цregularization_losses
Ч	variables
Шtrainable_variables
Щ	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block4_conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 31, 31, 512]}}
€
Ъregularization_losses
Ы	variables
Ьtrainable_variables
Э	keras_api
и__call__
+й&call_and_return_all_conditional_losses"к
_tf_keras_layer–{"class_name": "MaxPooling2D", "name": "block4_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block4_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Е


Qkernel
Rbias
Юregularization_losses
Я	variables
†trainable_variables
°	keras_api
к__call__
+л&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block5_conv1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_conv1", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 512]}}
Е


Skernel
Tbias
Ґregularization_losses
£	variables
§trainable_variables
•	keras_api
м__call__
+н&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block5_conv2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_conv2", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 512]}}
Е


Ukernel
Vbias
¶regularization_losses
І	variables
®trainable_variables
©	keras_api
о__call__
+п&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block5_conv3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_conv3", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 512]}}
Е


Wkernel
Xbias
™regularization_losses
Ђ	variables
ђtrainable_variables
≠	keras_api
р__call__
+с&call_and_return_all_conditional_losses"Џ
_tf_keras_layerј{"class_name": "Conv2D", "name": "block5_conv4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_conv4", "trainable": false, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 512]}}
€
Ѓregularization_losses
ѓ	variables
∞trainable_variables
±	keras_api
т__call__
+у&call_and_return_all_conditional_losses"к
_tf_keras_layer–{"class_name": "MaxPooling2D", "name": "block5_pool", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "block5_pool", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
 "
trackable_list_wrapper
Ц
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
O22
P23
Q24
R25
S26
T27
U28
V29
W30
X31"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
"regularization_losses
≤non_trainable_variables
#	variables
 ≥layer_regularization_losses
$trainable_variables
іlayers
µlayer_metrics
ґmetrics
Ѕ__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
&regularization_losses
Јnon_trainable_variables
'	variables
 Єlayer_regularization_losses
(trainable_variables
єlayers
Їlayer_metrics
їmetrics
√__call__
+ƒ&call_and_return_all_conditional_losses
'ƒ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
*regularization_losses
Љnon_trainable_variables
+	variables
 љlayer_regularization_losses
,trainable_variables
Њlayers
њlayer_metrics
јmetrics
≈__call__
+∆&call_and_return_all_conditional_losses
'∆"call_and_return_conditional_losses"
_generic_user_object
:	А2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
µ
0regularization_losses
Ѕnon_trainable_variables
1	variables
 ¬layer_regularization_losses
2trainable_variables
√layers
ƒlayer_metrics
≈metrics
«__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.:,@А2block2_conv1/kernel
 :А2block2_conv1/bias
/:-АА2block2_conv2/kernel
 :А2block2_conv2/bias
/:-АА2block3_conv1/kernel
 :А2block3_conv1/bias
/:-АА2block3_conv2/kernel
 :А2block3_conv2/bias
/:-АА2block3_conv3/kernel
 :А2block3_conv3/bias
/:-АА2block3_conv4/kernel
 :А2block3_conv4/bias
/:-АА2block4_conv1/kernel
 :А2block4_conv1/bias
/:-АА2block4_conv2/kernel
 :А2block4_conv2/bias
/:-АА2block4_conv3/kernel
 :А2block4_conv3/bias
/:-АА2block4_conv4/kernel
 :А2block4_conv4/bias
/:-АА2block5_conv1/kernel
 :А2block5_conv1/bias
/:-АА2block5_conv2/kernel
 :А2block5_conv2/bias
/:-АА2block5_conv3/kernel
 :А2block5_conv3/bias
/:-АА2block5_conv4/kernel
 :А2block5_conv4/bias
Ц
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
O22
P23
Q24
R25
S26
T27
U28
V29
W30
X31"
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_dict_wrapper
0
∆0
«1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
^regularization_losses
»non_trainable_variables
_	variables
 …layer_regularization_losses
`trainable_variables
 layers
Ћlayer_metrics
ћmetrics
 __call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
bregularization_losses
Ќnon_trainable_variables
c	variables
 ќlayer_regularization_losses
dtrainable_variables
ѕlayers
–layer_metrics
—metrics
ћ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
fregularization_losses
“non_trainable_variables
g	variables
 ”layer_regularization_losses
htrainable_variables
‘layers
’layer_metrics
÷metrics
ќ__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
jregularization_losses
„non_trainable_variables
k	variables
 Ўlayer_regularization_losses
ltrainable_variables
ўlayers
Џlayer_metrics
џmetrics
–__call__
+—&call_and_return_all_conditional_losses
'—"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
nregularization_losses
№non_trainable_variables
o	variables
 Ёlayer_regularization_losses
ptrainable_variables
ёlayers
яlayer_metrics
аmetrics
“__call__
+”&call_and_return_all_conditional_losses
'”"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
rregularization_losses
бnon_trainable_variables
s	variables
 вlayer_regularization_losses
ttrainable_variables
гlayers
дlayer_metrics
еmetrics
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
vregularization_losses
жnon_trainable_variables
w	variables
 зlayer_regularization_losses
xtrainable_variables
иlayers
йlayer_metrics
кmetrics
÷__call__
+„&call_and_return_all_conditional_losses
'„"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
zregularization_losses
лnon_trainable_variables
{	variables
 мlayer_regularization_losses
|trainable_variables
нlayers
оlayer_metrics
пmetrics
Ў__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
ґ
~regularization_losses
рnon_trainable_variables
	variables
 сlayer_regularization_losses
Аtrainable_variables
тlayers
уlayer_metrics
фmetrics
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Вregularization_losses
хnon_trainable_variables
Г	variables
 цlayer_regularization_losses
Дtrainable_variables
чlayers
шlayer_metrics
щmetrics
№__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Жregularization_losses
ъnon_trainable_variables
З	variables
 ыlayer_regularization_losses
Иtrainable_variables
ьlayers
эlayer_metrics
юmetrics
ё__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Кregularization_losses
€non_trainable_variables
Л	variables
 Аlayer_regularization_losses
Мtrainable_variables
Бlayers
Вlayer_metrics
Гmetrics
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Оregularization_losses
Дnon_trainable_variables
П	variables
 Еlayer_regularization_losses
Рtrainable_variables
Жlayers
Зlayer_metrics
Иmetrics
в__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Тregularization_losses
Йnon_trainable_variables
У	variables
 Кlayer_regularization_losses
Фtrainable_variables
Лlayers
Мlayer_metrics
Нmetrics
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Цregularization_losses
Оnon_trainable_variables
Ч	variables
 Пlayer_regularization_losses
Шtrainable_variables
Рlayers
Сlayer_metrics
Тmetrics
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ъregularization_losses
Уnon_trainable_variables
Ы	variables
 Фlayer_regularization_losses
Ьtrainable_variables
Хlayers
Цlayer_metrics
Чmetrics
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Юregularization_losses
Шnon_trainable_variables
Я	variables
 Щlayer_regularization_losses
†trainable_variables
Ъlayers
Ыlayer_metrics
Ьmetrics
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ґregularization_losses
Эnon_trainable_variables
£	variables
 Юlayer_regularization_losses
§trainable_variables
Яlayers
†layer_metrics
°metrics
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
¶regularization_losses
Ґnon_trainable_variables
І	variables
 £layer_regularization_losses
®trainable_variables
§layers
•layer_metrics
¶metrics
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
™regularization_losses
Іnon_trainable_variables
Ђ	variables
 ®layer_regularization_losses
ђtrainable_variables
©layers
™layer_metrics
Ђmetrics
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ѓregularization_losses
ђnon_trainable_variables
ѓ	variables
 ≠layer_regularization_losses
∞trainable_variables
Ѓlayers
ѓlayer_metrics
∞metrics
т__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
Ц
90
:1
;2
<3
=4
>5
?6
@7
A8
B9
C10
D11
E12
F13
G14
H15
I16
J17
K18
L19
M20
N21
O22
P23
Q24
R25
S26
T27
U28
V29
W30
X31"
trackable_list_wrapper
 "
trackable_list_wrapper
∆
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
 20
!21"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
њ

±total

≤count
≥	variables
і	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
€

µtotal

ґcount
Ј
_fn_kwargs
Є	variables
є	keras_api"≥
_tf_keras_metricШ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
±0
≤1"
trackable_list_wrapper
.
≥	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
µ0
ґ1"
trackable_list_wrapper
.
Є	variables"
_generic_user_object
$:"	А2Adam/dense/kernel/m
:2Adam/dense/bias/m
$:"	А2Adam/dense/kernel/v
:2Adam/dense/bias/v
й2ж
 __inference__wrapped_model_33309Ѕ
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *1Ґ.
,К)
input_11€€€€€€€€€юю
в2я
%__inference_model_layer_call_fn_34722
%__inference_model_layer_call_fn_34871
%__inference_model_layer_call_fn_35369
%__inference_model_layer_call_fn_35296ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ќ2Ћ
@__inference_model_layer_call_and_return_conditional_losses_35092
@__inference_model_layer_call_and_return_conditional_losses_35223
@__inference_model_layer_call_and_return_conditional_losses_34572
@__inference_model_layer_call_and_return_conditional_losses_34496ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
в2я
%__inference_vgg19_layer_call_fn_35680
%__inference_vgg19_layer_call_fn_34059
%__inference_vgg19_layer_call_fn_34217
%__inference_vgg19_layer_call_fn_35749ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ќ2Ћ
@__inference_vgg19_layer_call_and_return_conditional_losses_33900
@__inference_vgg19_layer_call_and_return_conditional_losses_35611
@__inference_vgg19_layer_call_and_return_conditional_losses_35490
@__inference_vgg19_layer_call_and_return_conditional_losses_33811ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
†2Э
8__inference_global_average_pooling2d_layer_call_fn_34230а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
ї2Є
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_34224а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
М2Й
'__inference_dropout_layer_call_fn_35771
'__inference_dropout_layer_call_fn_35776і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
¬2њ
B__inference_dropout_layer_call_and_return_conditional_losses_35761
B__inference_dropout_layer_call_and_return_conditional_losses_35766і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ѕ2ћ
%__inference_dense_layer_call_fn_35796Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
к2з
@__inference_dense_layer_call_and_return_conditional_losses_35787Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЋB»
#__inference_signature_wrapper_34954input_11"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block1_conv1_layer_call_fn_35816Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block1_conv1_layer_call_and_return_conditional_losses_35807Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block1_conv2_layer_call_fn_35836Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block1_conv2_layer_call_and_return_conditional_losses_35827Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
У2Р
+__inference_block1_pool_layer_call_fn_33321а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ѓ2Ђ
F__inference_block1_pool_layer_call_and_return_conditional_losses_33315а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
÷2”
,__inference_block2_conv1_layer_call_fn_35856Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block2_conv1_layer_call_and_return_conditional_losses_35847Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block2_conv2_layer_call_fn_35876Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block2_conv2_layer_call_and_return_conditional_losses_35867Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
У2Р
+__inference_block2_pool_layer_call_fn_33333а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ѓ2Ђ
F__inference_block2_pool_layer_call_and_return_conditional_losses_33327а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
÷2”
,__inference_block3_conv1_layer_call_fn_35896Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block3_conv1_layer_call_and_return_conditional_losses_35887Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block3_conv2_layer_call_fn_35916Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block3_conv2_layer_call_and_return_conditional_losses_35907Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block3_conv3_layer_call_fn_35936Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block3_conv3_layer_call_and_return_conditional_losses_35927Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block3_conv4_layer_call_fn_35956Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block3_conv4_layer_call_and_return_conditional_losses_35947Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
У2Р
+__inference_block3_pool_layer_call_fn_33345а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ѓ2Ђ
F__inference_block3_pool_layer_call_and_return_conditional_losses_33339а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
÷2”
,__inference_block4_conv1_layer_call_fn_35976Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block4_conv1_layer_call_and_return_conditional_losses_35967Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block4_conv2_layer_call_fn_35996Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block4_conv2_layer_call_and_return_conditional_losses_35987Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block4_conv3_layer_call_fn_36016Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block4_conv3_layer_call_and_return_conditional_losses_36007Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block4_conv4_layer_call_fn_36036Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block4_conv4_layer_call_and_return_conditional_losses_36027Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
У2Р
+__inference_block4_pool_layer_call_fn_33357а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ѓ2Ђ
F__inference_block4_pool_layer_call_and_return_conditional_losses_33351а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
÷2”
,__inference_block5_conv1_layer_call_fn_36056Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block5_conv1_layer_call_and_return_conditional_losses_36047Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block5_conv2_layer_call_fn_36076Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block5_conv2_layer_call_and_return_conditional_losses_36067Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block5_conv3_layer_call_fn_36096Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block5_conv3_layer_call_and_return_conditional_losses_36087Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_block5_conv4_layer_call_fn_36116Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_block5_conv4_layer_call_and_return_conditional_losses_36107Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
У2Р
+__inference_block5_pool_layer_call_fn_33369а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ѓ2Ђ
F__inference_block5_pool_layer_call_and_return_conditional_losses_33363а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€µ
 __inference__wrapped_model_33309Р"9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWX./;Ґ8
1Ґ.
,К)
input_11€€€€€€€€€юю
™ "-™*
(
denseК
dense€€€€€€€€€ї
G__inference_block1_conv1_layer_call_and_return_conditional_losses_35807p9:9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€юю
™ "/Ґ,
%К"
0€€€€€€€€€юю@
Ъ У
,__inference_block1_conv1_layer_call_fn_35816c9:9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€юю
™ ""К€€€€€€€€€юю@ї
G__inference_block1_conv2_layer_call_and_return_conditional_losses_35827p;<9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€юю@
™ "/Ґ,
%К"
0€€€€€€€€€юю@
Ъ У
,__inference_block1_conv2_layer_call_fn_35836c;<9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€юю@
™ ""К€€€€€€€€€юю@й
F__inference_block1_pool_layer_call_and_return_conditional_losses_33315ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ѕ
+__inference_block1_pool_layer_call_fn_33321СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Є
G__inference_block2_conv1_layer_call_and_return_conditional_losses_35847m=>7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Р
,__inference_block2_conv1_layer_call_fn_35856`=>7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "!К€€€€€€€€€Ає
G__inference_block2_conv2_layer_call_and_return_conditional_losses_35867n?@8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ С
,__inference_block2_conv2_layer_call_fn_35876a?@8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Ай
F__inference_block2_pool_layer_call_and_return_conditional_losses_33327ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ѕ
+__inference_block2_pool_layer_call_fn_33333СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€є
G__inference_block3_conv1_layer_call_and_return_conditional_losses_35887nAB8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€??А
™ ".Ґ+
$К!
0€€€€€€€€€??А
Ъ С
,__inference_block3_conv1_layer_call_fn_35896aAB8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€??А
™ "!К€€€€€€€€€??Ає
G__inference_block3_conv2_layer_call_and_return_conditional_losses_35907nCD8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€??А
™ ".Ґ+
$К!
0€€€€€€€€€??А
Ъ С
,__inference_block3_conv2_layer_call_fn_35916aCD8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€??А
™ "!К€€€€€€€€€??Ає
G__inference_block3_conv3_layer_call_and_return_conditional_losses_35927nEF8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€??А
™ ".Ґ+
$К!
0€€€€€€€€€??А
Ъ С
,__inference_block3_conv3_layer_call_fn_35936aEF8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€??А
™ "!К€€€€€€€€€??Ає
G__inference_block3_conv4_layer_call_and_return_conditional_losses_35947nGH8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€??А
™ ".Ґ+
$К!
0€€€€€€€€€??А
Ъ С
,__inference_block3_conv4_layer_call_fn_35956aGH8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€??А
™ "!К€€€€€€€€€??Ай
F__inference_block3_pool_layer_call_and_return_conditional_losses_33339ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ѕ
+__inference_block3_pool_layer_call_fn_33345СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€є
G__inference_block4_conv1_layer_call_and_return_conditional_losses_35967nIJ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ С
,__inference_block4_conv1_layer_call_fn_35976aIJ8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Ає
G__inference_block4_conv2_layer_call_and_return_conditional_losses_35987nKL8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ С
,__inference_block4_conv2_layer_call_fn_35996aKL8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Ає
G__inference_block4_conv3_layer_call_and_return_conditional_losses_36007nMN8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ С
,__inference_block4_conv3_layer_call_fn_36016aMN8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Ає
G__inference_block4_conv4_layer_call_and_return_conditional_losses_36027nOP8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ С
,__inference_block4_conv4_layer_call_fn_36036aOP8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Ай
F__inference_block4_pool_layer_call_and_return_conditional_losses_33351ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ѕ
+__inference_block4_pool_layer_call_fn_33357СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€є
G__inference_block5_conv1_layer_call_and_return_conditional_losses_36047nQR8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ С
,__inference_block5_conv1_layer_call_fn_36056aQR8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Ає
G__inference_block5_conv2_layer_call_and_return_conditional_losses_36067nST8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ С
,__inference_block5_conv2_layer_call_fn_36076aST8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Ає
G__inference_block5_conv3_layer_call_and_return_conditional_losses_36087nUV8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ С
,__inference_block5_conv3_layer_call_fn_36096aUV8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Ає
G__inference_block5_conv4_layer_call_and_return_conditional_losses_36107nWX8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ С
,__inference_block5_conv4_layer_call_fn_36116aWX8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€Ай
F__inference_block5_pool_layer_call_and_return_conditional_losses_33363ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ѕ
+__inference_block5_pool_layer_call_fn_33369СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€°
@__inference_dense_layer_call_and_return_conditional_losses_35787]./0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ y
%__inference_dense_layer_call_fn_35796P./0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€§
B__inference_dropout_layer_call_and_return_conditional_losses_35761^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "&Ґ#
К
0€€€€€€€€€А
Ъ §
B__inference_dropout_layer_call_and_return_conditional_losses_35766^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ |
'__inference_dropout_layer_call_fn_35771Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "К€€€€€€€€€А|
'__inference_dropout_layer_call_fn_35776Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "К€€€€€€€€€А№
S__inference_global_average_pooling2d_layer_call_and_return_conditional_losses_34224ДRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ".Ґ+
$К!
0€€€€€€€€€€€€€€€€€€
Ъ ≥
8__inference_global_average_pooling2d_layer_call_fn_34230wRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "!К€€€€€€€€€€€€€€€€€€’
@__inference_model_layer_call_and_return_conditional_losses_34496Р"9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWX./CҐ@
9Ґ6
,К)
input_11€€€€€€€€€юю
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ’
@__inference_model_layer_call_and_return_conditional_losses_34572Р"9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWX./CҐ@
9Ґ6
,К)
input_11€€€€€€€€€юю
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ”
@__inference_model_layer_call_and_return_conditional_losses_35092О"9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWX./AҐ>
7Ґ4
*К'
inputs€€€€€€€€€юю
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ”
@__inference_model_layer_call_and_return_conditional_losses_35223О"9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWX./AҐ>
7Ґ4
*К'
inputs€€€€€€€€€юю
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ≠
%__inference_model_layer_call_fn_34722Г"9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWX./CҐ@
9Ґ6
,К)
input_11€€€€€€€€€юю
p

 
™ "К€€€€€€€€€≠
%__inference_model_layer_call_fn_34871Г"9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWX./CҐ@
9Ґ6
,К)
input_11€€€€€€€€€юю
p 

 
™ "К€€€€€€€€€Ђ
%__inference_model_layer_call_fn_35296Б"9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWX./AҐ>
7Ґ4
*К'
inputs€€€€€€€€€юю
p

 
™ "К€€€€€€€€€Ђ
%__inference_model_layer_call_fn_35369Б"9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWX./AҐ>
7Ґ4
*К'
inputs€€€€€€€€€юю
p 

 
™ "К€€€€€€€€€ƒ
#__inference_signature_wrapper_34954Ь"9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWX./GҐD
Ґ 
=™:
8
input_11,К)
input_11€€€€€€€€€юю"-™*
(
denseК
dense€€€€€€€€€џ
@__inference_vgg19_layer_call_and_return_conditional_losses_33811Ц 9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXBҐ?
8Ґ5
+К(
input_7€€€€€€€€€юю
p

 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ џ
@__inference_vgg19_layer_call_and_return_conditional_losses_33900Ц 9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXBҐ?
8Ґ5
+К(
input_7€€€€€€€€€юю
p 

 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Џ
@__inference_vgg19_layer_call_and_return_conditional_losses_35490Х 9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXAҐ>
7Ґ4
*К'
inputs€€€€€€€€€юю
p

 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Џ
@__inference_vgg19_layer_call_and_return_conditional_losses_35611Х 9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXAҐ>
7Ґ4
*К'
inputs€€€€€€€€€юю
p 

 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ ≥
%__inference_vgg19_layer_call_fn_34059Й 9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXBҐ?
8Ґ5
+К(
input_7€€€€€€€€€юю
p

 
™ "!К€€€€€€€€€А≥
%__inference_vgg19_layer_call_fn_34217Й 9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXBҐ?
8Ґ5
+К(
input_7€€€€€€€€€юю
p 

 
™ "!К€€€€€€€€€А≤
%__inference_vgg19_layer_call_fn_35680И 9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXAҐ>
7Ґ4
*К'
inputs€€€€€€€€€юю
p

 
™ "!К€€€€€€€€€А≤
%__inference_vgg19_layer_call_fn_35749И 9:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXAҐ>
7Ґ4
*К'
inputs€€€€€€€€€юю
p 

 
™ "!К€€€€€€€€€А
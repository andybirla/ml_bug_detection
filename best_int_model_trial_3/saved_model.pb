Ъщ
Ог
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
М
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(Р
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
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
 И"serve*2.4.12v2.4.0-49-g85c8b2a817f8ью
Ж
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
СN†*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
СN†*
dtype0
|
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:††*
shared_nameconv1d/kernel
u
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*$
_output_shapes
:††*
dtype0
o
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:†*
shared_nameconv1d/bias
h
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes	
:†*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	†4*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	†4*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:4*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:4*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:4*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:4*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
К
embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
СN†*'
shared_nameembedding/embeddings/m
Г
*embedding/embeddings/m/Read/ReadVariableOpReadVariableOpembedding/embeddings/m* 
_output_shapes
:
СN†*
dtype0
А
conv1d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:††* 
shared_nameconv1d/kernel/m
y
#conv1d/kernel/m/Read/ReadVariableOpReadVariableOpconv1d/kernel/m*$
_output_shapes
:††*
dtype0
s
conv1d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:†*
shared_nameconv1d/bias/m
l
!conv1d/bias/m/Read/ReadVariableOpReadVariableOpconv1d/bias/m*
_output_shapes	
:†*
dtype0
y
dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	†4*
shared_namedense/kernel/m
r
"dense/kernel/m/Read/ReadVariableOpReadVariableOpdense/kernel/m*
_output_shapes
:	†4*
dtype0
p
dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:4*
shared_namedense/bias/m
i
 dense/bias/m/Read/ReadVariableOpReadVariableOpdense/bias/m*
_output_shapes
:4*
dtype0
|
dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:4*!
shared_namedense_1/kernel/m
u
$dense_1/kernel/m/Read/ReadVariableOpReadVariableOpdense_1/kernel/m*
_output_shapes

:4*
dtype0
t
dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias/m
m
"dense_1/bias/m/Read/ReadVariableOpReadVariableOpdense_1/bias/m*
_output_shapes
:*
dtype0
|
dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_2/kernel/m
u
$dense_2/kernel/m/Read/ReadVariableOpReadVariableOpdense_2/kernel/m*
_output_shapes

:*
dtype0
t
dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias/m
m
"dense_2/bias/m/Read/ReadVariableOpReadVariableOpdense_2/bias/m*
_output_shapes
:*
dtype0
К
embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
СN†*'
shared_nameembedding/embeddings/v
Г
*embedding/embeddings/v/Read/ReadVariableOpReadVariableOpembedding/embeddings/v* 
_output_shapes
:
СN†*
dtype0
А
conv1d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:††* 
shared_nameconv1d/kernel/v
y
#conv1d/kernel/v/Read/ReadVariableOpReadVariableOpconv1d/kernel/v*$
_output_shapes
:††*
dtype0
s
conv1d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:†*
shared_nameconv1d/bias/v
l
!conv1d/bias/v/Read/ReadVariableOpReadVariableOpconv1d/bias/v*
_output_shapes	
:†*
dtype0
y
dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	†4*
shared_namedense/kernel/v
r
"dense/kernel/v/Read/ReadVariableOpReadVariableOpdense/kernel/v*
_output_shapes
:	†4*
dtype0
p
dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:4*
shared_namedense/bias/v
i
 dense/bias/v/Read/ReadVariableOpReadVariableOpdense/bias/v*
_output_shapes
:4*
dtype0
|
dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:4*!
shared_namedense_1/kernel/v
u
$dense_1/kernel/v/Read/ReadVariableOpReadVariableOpdense_1/kernel/v*
_output_shapes

:4*
dtype0
t
dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias/v
m
"dense_1/bias/v/Read/ReadVariableOpReadVariableOpdense_1/bias/v*
_output_shapes
:*
dtype0
|
dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_2/kernel/v
u
$dense_2/kernel/v/Read/ReadVariableOpReadVariableOpdense_2/kernel/v*
_output_shapes

:*
dtype0
t
dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias/v
m
"dense_2/bias/v/Read/ReadVariableOpReadVariableOpdense_2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
в/
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Э/
valueУ/BР/ BЙ/
ќ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
	optimizer
		variables

regularization_losses
trainable_variables
	keras_api

signatures
b

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
h

#kernel
$bias
%	variables
&regularization_losses
'trainable_variables
(	keras_api
R
)	variables
*regularization_losses
+trainable_variables
,	keras_api
h

-kernel
.bias
/	variables
0regularization_losses
1trainable_variables
2	keras_api
Ґm[m\m]m^m_#m`$ma-mb.mcvdvevfvgvh#vi$vj-vk.vl
?
0
1
2
3
4
#5
$6
-7
.8
 
?
0
1
2
3
4
#5
$6
-7
.8
≠
3non_trainable_variables
		variables

regularization_losses

4layers
5metrics
6layer_regularization_losses
trainable_variables
7layer_metrics
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
≠
8non_trainable_variables
	variables
regularization_losses

9layers
:metrics
;layer_regularization_losses
trainable_variables
<layer_metrics
YW
VARIABLE_VALUEconv1d/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv1d/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
≠
=non_trainable_variables
	variables
regularization_losses

>layers
?metrics
@layer_regularization_losses
trainable_variables
Alayer_metrics
 
 
 
≠
Bnon_trainable_variables
	variables
regularization_losses

Clayers
Dmetrics
Elayer_regularization_losses
trainable_variables
Flayer_metrics
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
≠
Gnon_trainable_variables
	variables
 regularization_losses

Hlayers
Imetrics
Jlayer_regularization_losses
!trainable_variables
Klayer_metrics
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1
 

#0
$1
≠
Lnon_trainable_variables
%	variables
&regularization_losses

Mlayers
Nmetrics
Olayer_regularization_losses
'trainable_variables
Player_metrics
 
 
 
≠
Qnon_trainable_variables
)	variables
*regularization_losses

Rlayers
Smetrics
Tlayer_regularization_losses
+trainable_variables
Ulayer_metrics
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

-0
.1
 

-0
.1
≠
Vnon_trainable_variables
/	variables
0regularization_losses

Wlayers
Xmetrics
Ylayer_regularization_losses
1trainable_variables
Zlayer_metrics
 
1
0
1
2
3
4
5
6
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
 
 
 
 
ГА
VARIABLE_VALUEembedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEconv1d/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEconv1d/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEdense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEdense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ГА
VARIABLE_VALUEembedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEconv1d/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEconv1d/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEdense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEdense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEdense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEdense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ф
serving_default_embedding_inputPlaceholder*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*%
shape:€€€€€€€€€€€€€€€€€€
’
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingsconv1d/kernelconv1d/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_2660393
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
П

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp*embedding/embeddings/m/Read/ReadVariableOp#conv1d/kernel/m/Read/ReadVariableOp!conv1d/bias/m/Read/ReadVariableOp"dense/kernel/m/Read/ReadVariableOp dense/bias/m/Read/ReadVariableOp$dense_1/kernel/m/Read/ReadVariableOp"dense_1/bias/m/Read/ReadVariableOp$dense_2/kernel/m/Read/ReadVariableOp"dense_2/bias/m/Read/ReadVariableOp*embedding/embeddings/v/Read/ReadVariableOp#conv1d/kernel/v/Read/ReadVariableOp!conv1d/bias/v/Read/ReadVariableOp"dense/kernel/v/Read/ReadVariableOp dense/bias/v/Read/ReadVariableOp$dense_1/kernel/v/Read/ReadVariableOp"dense_1/bias/v/Read/ReadVariableOp$dense_2/kernel/v/Read/ReadVariableOp"dense_2/bias/v/Read/ReadVariableOpConst*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__traced_save_2660775
о
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsconv1d/kernelconv1d/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasembedding/embeddings/mconv1d/kernel/mconv1d/bias/mdense/kernel/mdense/bias/mdense_1/kernel/mdense_1/bias/mdense_2/kernel/mdense_2/bias/membedding/embeddings/vconv1d/kernel/vconv1d/bias/vdense/kernel/vdense/bias/vdense_1/kernel/vdense_1/bias/vdense_2/kernel/vdense_2/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference__traced_restore_2660866©З
§t
»
#__inference__traced_restore_2660866
file_prefix)
%assignvariableop_embedding_embeddings$
 assignvariableop_1_conv1d_kernel"
assignvariableop_2_conv1d_bias#
assignvariableop_3_dense_kernel!
assignvariableop_4_dense_bias%
!assignvariableop_5_dense_1_kernel#
assignvariableop_6_dense_1_bias%
!assignvariableop_7_dense_2_kernel#
assignvariableop_8_dense_2_bias-
)assignvariableop_9_embedding_embeddings_m'
#assignvariableop_10_conv1d_kernel_m%
!assignvariableop_11_conv1d_bias_m&
"assignvariableop_12_dense_kernel_m$
 assignvariableop_13_dense_bias_m(
$assignvariableop_14_dense_1_kernel_m&
"assignvariableop_15_dense_1_bias_m(
$assignvariableop_16_dense_2_kernel_m&
"assignvariableop_17_dense_2_bias_m.
*assignvariableop_18_embedding_embeddings_v'
#assignvariableop_19_conv1d_kernel_v%
!assignvariableop_20_conv1d_bias_v&
"assignvariableop_21_dense_kernel_v$
 assignvariableop_22_dense_bias_v(
$assignvariableop_23_dense_1_kernel_v&
"assignvariableop_24_dense_1_bias_v(
$assignvariableop_25_dense_2_kernel_v&
"assignvariableop_26_dense_2_bias_v
identity_28ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ы
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*З
valueэBъB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names∆
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЄ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Д
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity§
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1•
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2£
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv1d_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3§
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ґ
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¶
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_1_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_1_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¶
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_2_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8§
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_2_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѓ
AssignVariableOp_9AssignVariableOp)assignvariableop_9_embedding_embeddings_mIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ђ
AssignVariableOp_10AssignVariableOp#assignvariableop_10_conv1d_kernel_mIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11©
AssignVariableOp_11AssignVariableOp!assignvariableop_11_conv1d_bias_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12™
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_kernel_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13®
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_bias_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14ђ
AssignVariableOp_14AssignVariableOp$assignvariableop_14_dense_1_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15™
AssignVariableOp_15AssignVariableOp"assignvariableop_15_dense_1_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16ђ
AssignVariableOp_16AssignVariableOp$assignvariableop_16_dense_2_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17™
AssignVariableOp_17AssignVariableOp"assignvariableop_17_dense_2_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18≤
AssignVariableOp_18AssignVariableOp*assignvariableop_18_embedding_embeddings_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ђ
AssignVariableOp_19AssignVariableOp#assignvariableop_19_conv1d_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20©
AssignVariableOp_20AssignVariableOp!assignvariableop_20_conv1d_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21™
AssignVariableOp_21AssignVariableOp"assignvariableop_21_dense_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22®
AssignVariableOp_22AssignVariableOp assignvariableop_22_dense_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23ђ
AssignVariableOp_23AssignVariableOp$assignvariableop_23_dense_1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24™
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25ђ
AssignVariableOp_25AssignVariableOp$assignvariableop_25_dense_2_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26™
AssignVariableOp_26AssignVariableOp"assignvariableop_26_dense_2_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp∞
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27£
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*Б
_input_shapesp
n: :::::::::::::::::::::::::::2$
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
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
»#
—
G__inference_sequential_layer_call_and_return_conditional_losses_2660259
embedding_input
embedding_2660231
conv1d_2660236
conv1d_2660238
dense_2660242
dense_2660244
dense_1_2660247
dense_1_2660249
dense_2_2660253
dense_2_2660255
identityИҐconv1d/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallЮ
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_2660231*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_26600692#
!embedding/StatefulPartitionedCallq
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
embedding/NotEqual/yЯ
embedding/NotEqualNotEqualembedding_inputembedding/NotEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
embedding/NotEqualњ
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_2660236conv1d_2660238*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_layer_call_and_return_conditional_losses_26600992 
conv1d/StatefulPartitionedCallЫ
$global_max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_26600492&
$global_max_pooling1d/PartitionedCallѓ
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_2660242dense_2660244*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_26601272
dense/StatefulPartitionedCall≤
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_2660247dense_1_2660249*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_26601542!
dense_1/StatefulPartitionedCallф
dropout/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_26601872
dropout/PartitionedCallђ
dense_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_2_2660253dense_2_2660255*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_26602112!
dense_2/StatefulPartitionedCall•
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^conv1d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:::::::::2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:a ]
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
)
_user_specified_nameembedding_input
р
у
,__inference_sequential_layer_call_fn_2660314
embedding_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_26602932
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
)
_user_specified_nameembedding_input
«
b
D__inference_dropout_layer_call_and_return_conditional_losses_2660641

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
р$
у
G__inference_sequential_layer_call_and_return_conditional_losses_2660228
embedding_input
embedding_2660078
conv1d_2660110
conv1d_2660112
dense_2660138
dense_2660140
dense_1_2660165
dense_1_2660167
dense_2_2660222
dense_2_2660224
identityИҐconv1d/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallЮ
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_2660078*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_26600692#
!embedding/StatefulPartitionedCallq
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
embedding/NotEqual/yЯ
embedding/NotEqualNotEqualembedding_inputembedding/NotEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
embedding/NotEqualњ
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_2660110conv1d_2660112*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_layer_call_and_return_conditional_losses_26600992 
conv1d/StatefulPartitionedCallЫ
$global_max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_26600492&
$global_max_pooling1d/PartitionedCallѓ
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_2660138dense_2660140*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_26601272
dense/StatefulPartitionedCall≤
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_2660165dense_1_2660167*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_26601542!
dense_1/StatefulPartitionedCallМ
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_26601822!
dropout/StatefulPartitionedCallі
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_2_2660222dense_2_2660224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_26602112!
dense_2/StatefulPartitionedCall«
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^conv1d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:::::::::2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:a ]
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
)
_user_specified_nameembedding_input
ћ$
к
G__inference_sequential_layer_call_and_return_conditional_losses_2660293

inputs
embedding_2660265
conv1d_2660270
conv1d_2660272
dense_2660276
dense_2660278
dense_1_2660281
dense_1_2660283
dense_2_2660287
dense_2_2660289
identityИҐconv1d/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallХ
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2660265*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_26600692#
!embedding/StatefulPartitionedCallq
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
embedding/NotEqual/yЦ
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
embedding/NotEqualњ
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_2660270conv1d_2660272*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_layer_call_and_return_conditional_losses_26600992 
conv1d/StatefulPartitionedCallЫ
$global_max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_26600492&
$global_max_pooling1d/PartitionedCallѓ
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_2660276dense_2660278*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_26601272
dense/StatefulPartitionedCall≤
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_2660281dense_1_2660283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_26601542!
dense_1/StatefulPartitionedCallМ
dropout/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_26601822!
dropout/StatefulPartitionedCallі
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_2_2660287dense_2_2660289*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_26602112!
dense_2/StatefulPartitionedCall«
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^conv1d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:::::::::2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
к
R
6__inference_global_max_pooling1d_layer_call_fn_2660055

inputs
identityЎ
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
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_26600492
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
з
ц
C__inference_conv1d_layer_call_and_return_conditional_losses_2660099

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dim†
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€†2
conv1d/ExpandDimsЇ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:††*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimє
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:††2
conv1d/ExpandDims_1Ѕ
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€†*
paddingVALID*
strides
2
conv1dЬ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype02
BiasAdd/ReadVariableOpЦ
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2	
BiasAddf
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2
Relu≤
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€†::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†
 
_user_specified_nameinputs
Џ
|
'__inference_dense_layer_call_fn_2660604

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_26601272
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€42

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€†::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
п	
џ
B__inference_dense_layer_call_and_return_conditional_losses_2660127

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	†4*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€42
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:4*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€42	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€42
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€42

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€†::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
ƒ
м
%__inference_signature_wrapper_2660393
embedding_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityИҐStatefulPartitionedCallґ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_26600422
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
)
_user_specified_nameembedding_input
А
c
D__inference_dropout_layer_call_and_return_conditional_losses_2660182

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
«
b
D__inference_dropout_layer_call_and_return_conditional_losses_2660187

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
п	
џ
B__inference_dense_layer_call_and_return_conditional_losses_2660595

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	†4*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€42
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:4*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€42	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€42
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€42

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€†::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
§#
»
G__inference_sequential_layer_call_and_return_conditional_losses_2660347

inputs
embedding_2660319
conv1d_2660324
conv1d_2660326
dense_2660330
dense_2660332
dense_1_2660335
dense_1_2660337
dense_2_2660341
dense_2_2660343
identityИҐconv1d/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallХ
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2660319*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_26600692#
!embedding/StatefulPartitionedCallq
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
embedding/NotEqual/yЦ
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
embedding/NotEqualњ
conv1d/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0conv1d_2660324conv1d_2660326*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_layer_call_and_return_conditional_losses_26600992 
conv1d/StatefulPartitionedCallЫ
$global_max_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_26600492&
$global_max_pooling1d/PartitionedCallѓ
dense/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling1d/PartitionedCall:output:0dense_2660330dense_2660332*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€4*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_26601272
dense/StatefulPartitionedCall≤
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_2660335dense_1_2660337*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_26601542!
dense_1/StatefulPartitionedCallф
dropout/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_26601872
dropout/PartitionedCallђ
dense_2/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_2_2660341dense_2_2660343*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_26602112!
dense_2/StatefulPartitionedCall•
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^conv1d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^embedding/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:::::::::2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
E
)__inference_dropout_layer_call_fn_2660651

inputs
identity¬
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_26601872
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
у<
°
G__inference_sequential_layer_call_and_return_conditional_losses_2660496

inputs&
"embedding_embedding_lookup_26604526
2conv1d_conv1d_expanddims_1_readvariableop_resource*
&conv1d_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identityИҐconv1d/BiasAdd/ReadVariableOpҐ)conv1d/conv1d/ExpandDims_1/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐembedding/embedding_lookupz
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
embedding/Castї
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_2660452embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/2660452*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
dtype02
embedding/embedding_lookup†
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/2660452*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2%
#embedding/embedding_lookup/Identity»
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2'
%embedding/embedding_lookup/Identity_1q
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
embedding/NotEqual/yЦ
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
embedding/NotEqualЗ
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/conv1d/ExpandDims/dimЁ
conv1d/conv1d/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€†2
conv1d/conv1d/ExpandDimsѕ
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:††*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOpВ
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim’
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:††2
conv1d/conv1d/ExpandDims_1Ё
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€†*
paddingVALID*
strides
2
conv1d/conv1d±
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
squeeze_dims

э€€€€€€€€2
conv1d/conv1d/SqueezeҐ
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype02
conv1d/BiasAdd/ReadVariableOp≤
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2
conv1d/BiasAdd{
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2
conv1d/ReluЪ
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*global_max_pooling1d/Max/reduction_indicesЊ
global_max_pooling1d/MaxMaxconv1d/Relu:activations:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:€€€€€€€€€†2
global_max_pooling1d/Max†
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	†4*
dtype02
dense/MatMul/ReadVariableOp†
dense/MatMulMatMul!global_max_pooling1d/Max:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€42
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:4*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€42
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€42

dense/Relu•
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:4*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/Relu~
dropout/IdentityIdentitydense_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/Identity•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOpЮ
dense_2/MatMulMatMuldropout/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_2/SoftmaxХ
IdentityIdentitydense_2/Softmax:softmax:0^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding/embedding_lookup*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:::::::::2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
•

Ц
F__inference_embedding_layer_call_and_return_conditional_losses_2660552

inputs
embedding_lookup_2660546
identityИҐembedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
CastЙ
embedding_lookupResourceGatherembedding_lookup_2660546Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/2660546*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
dtype02
embedding_lookupш
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/2660546*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2
embedding_lookup/Identity™
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2
embedding_lookup/Identity_1Щ
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
р
у
,__inference_sequential_layer_call_fn_2660368
embedding_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_26603472
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
)
_user_specified_nameembedding_input
з
ц
C__inference_conv1d_layer_call_and_return_conditional_losses_2660575

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dim†
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€†2
conv1d/ExpandDimsЇ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:††*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimє
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:††2
conv1d/ExpandDims_1Ѕ
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€†*
paddingVALID*
strides
2
conv1dЬ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:†*
dtype02
BiasAdd/ReadVariableOpЦ
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2	
BiasAddf
ReluReluBiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2
Relu≤
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€†::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†
 
_user_specified_nameinputs
уE
°
G__inference_sequential_layer_call_and_return_conditional_losses_2660448

inputs&
"embedding_embedding_lookup_26603976
2conv1d_conv1d_expanddims_1_readvariableop_resource*
&conv1d_biasadd_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identityИҐconv1d/BiasAdd/ReadVariableOpҐ)conv1d/conv1d/ExpandDims_1/ReadVariableOpҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpҐembedding/embedding_lookupz
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
embedding/Castї
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_2660397embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/2660397*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
dtype02
embedding/embedding_lookup†
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/2660397*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2%
#embedding/embedding_lookup/Identity»
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2'
%embedding/embedding_lookup/Identity_1q
embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
embedding/NotEqual/yЦ
embedding/NotEqualNotEqualinputsembedding/NotEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
embedding/NotEqualЗ
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/conv1d/ExpandDims/dimЁ
conv1d/conv1d/ExpandDims
ExpandDims.embedding/embedding_lookup/Identity_1:output:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€†2
conv1d/conv1d/ExpandDimsѕ
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:††*
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOpВ
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim’
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:††2
conv1d/conv1d/ExpandDims_1Ё
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€†*
paddingVALID*
strides
2
conv1d/conv1d±
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
squeeze_dims

э€€€€€€€€2
conv1d/conv1d/SqueezeҐ
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype02
conv1d/BiasAdd/ReadVariableOp≤
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2
conv1d/BiasAdd{
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2
conv1d/ReluЪ
*global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2,
*global_max_pooling1d/Max/reduction_indicesЊ
global_max_pooling1d/MaxMaxconv1d/Relu:activations:03global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:€€€€€€€€€†2
global_max_pooling1d/Max†
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	†4*
dtype02
dense/MatMul/ReadVariableOp†
dense/MatMulMatMul!global_max_pooling1d/Max:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€42
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:4*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€42
dense/BiasAddj

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€42

dense/Relu•
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:4*
dtype02
dense_1/MatMul/ReadVariableOpЭ
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/MatMul§
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp°
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/BiasAddp
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_1/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?2
dropout/dropout/ConstЯ
dropout/dropout/MulMuldense_1/Relu:activations:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/dropout/Mulx
dropout/dropout/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shapeћ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>2 
dropout/dropout/GreaterEqual/yё
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/dropout/GreaterEqualЧ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout/dropout/CastЪ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/dropout/Mul_1•
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_2/MatMul/ReadVariableOpЮ
dense_2/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_2/MatMul§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp°
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_2/SoftmaxХ
IdentityIdentitydense_2/Softmax:softmax:0^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding/embedding_lookup*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:::::::::2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
о
q
+__inference_embedding_layer_call_fn_2660559

inputs
unknown
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_26600692
StatefulPartitionedCallЬ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Д@
о

 __inference__traced_save_2660775
file_prefix3
/savev2_embedding_embeddings_read_readvariableop,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop5
1savev2_embedding_embeddings_m_read_readvariableop.
*savev2_conv1d_kernel_m_read_readvariableop,
(savev2_conv1d_bias_m_read_readvariableop-
)savev2_dense_kernel_m_read_readvariableop+
'savev2_dense_bias_m_read_readvariableop/
+savev2_dense_1_kernel_m_read_readvariableop-
)savev2_dense_1_bias_m_read_readvariableop/
+savev2_dense_2_kernel_m_read_readvariableop-
)savev2_dense_2_bias_m_read_readvariableop5
1savev2_embedding_embeddings_v_read_readvariableop.
*savev2_conv1d_kernel_v_read_readvariableop,
(savev2_conv1d_bias_v_read_readvariableop-
)savev2_dense_kernel_v_read_readvariableop+
'savev2_dense_bias_v_read_readvariableop/
+savev2_dense_1_kernel_v_read_readvariableop-
)savev2_dense_1_bias_v_read_readvariableop/
+savev2_dense_2_kernel_v_read_readvariableop-
)savev2_dense_2_bias_v_read_readvariableop
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
ShardedFilenameх
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*З
valueэBъB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesј
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesк

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop1savev2_embedding_embeddings_m_read_readvariableop*savev2_conv1d_kernel_m_read_readvariableop(savev2_conv1d_bias_m_read_readvariableop)savev2_dense_kernel_m_read_readvariableop'savev2_dense_bias_m_read_readvariableop+savev2_dense_1_kernel_m_read_readvariableop)savev2_dense_1_bias_m_read_readvariableop+savev2_dense_2_kernel_m_read_readvariableop)savev2_dense_2_bias_m_read_readvariableop1savev2_embedding_embeddings_v_read_readvariableop*savev2_conv1d_kernel_v_read_readvariableop(savev2_conv1d_bias_v_read_readvariableop)savev2_dense_kernel_v_read_readvariableop'savev2_dense_bias_v_read_readvariableop+savev2_dense_1_kernel_v_read_readvariableop)savev2_dense_1_bias_v_read_readvariableop+savev2_dense_2_kernel_v_read_readvariableop)savev2_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
22
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

identity_1Identity_1:output:0*Х
_input_shapesГ
А: :
СN†:††:†:	†4:4:4::::
СN†:††:†:	†4:4:4::::
СN†:††:†:	†4:4:4:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
СN†:*&
$
_output_shapes
:††:!

_output_shapes	
:†:%!

_output_shapes
:	†4: 

_output_shapes
:4:$ 

_output_shapes

:4: 

_output_shapes
::$ 

_output_shapes

:: 	

_output_shapes
::&
"
 
_output_shapes
:
СN†:*&
$
_output_shapes
:††:!

_output_shapes	
:†:%!

_output_shapes
:	†4: 

_output_shapes
:4:$ 

_output_shapes

:4: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::&"
 
_output_shapes
:
СN†:*&
$
_output_shapes
:††:!

_output_shapes	
:†:%!

_output_shapes
:	†4: 

_output_shapes
:4:$ 

_output_shapes

:4: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
ц	
Ё
D__inference_dense_2_layer_call_and_return_conditional_losses_2660662

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
№
~
)__inference_dense_2_layer_call_fn_2660671

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_26602112
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ж
m
Q__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_2660049

inputs
identityp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indicest
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Maxi
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ЄJ
Ћ
"__inference__wrapped_model_2660042
embedding_input1
-sequential_embedding_embedding_lookup_2659998A
=sequential_conv1d_conv1d_expanddims_1_readvariableop_resource5
1sequential_conv1d_biasadd_readvariableop_resource3
/sequential_dense_matmul_readvariableop_resource4
0sequential_dense_biasadd_readvariableop_resource5
1sequential_dense_1_matmul_readvariableop_resource6
2sequential_dense_1_biasadd_readvariableop_resource5
1sequential_dense_2_matmul_readvariableop_resource6
2sequential_dense_2_biasadd_readvariableop_resource
identityИҐ(sequential/conv1d/BiasAdd/ReadVariableOpҐ4sequential/conv1d/conv1d/ExpandDims_1/ReadVariableOpҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ)sequential/dense_1/BiasAdd/ReadVariableOpҐ(sequential/dense_1/MatMul/ReadVariableOpҐ)sequential/dense_2/BiasAdd/ReadVariableOpҐ(sequential/dense_2/MatMul/ReadVariableOpҐ%sequential/embedding/embedding_lookupЩ
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sequential/embedding/Castт
%sequential/embedding/embedding_lookupResourceGather-sequential_embedding_embedding_lookup_2659998sequential/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*@
_class6
42loc:@sequential/embedding/embedding_lookup/2659998*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
dtype02'
%sequential/embedding/embedding_lookupћ
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@sequential/embedding/embedding_lookup/2659998*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†20
.sequential/embedding/embedding_lookup/Identityй
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†22
0sequential/embedding/embedding_lookup/Identity_1З
sequential/embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential/embedding/NotEqual/yј
sequential/embedding/NotEqualNotEqualembedding_input(sequential/embedding/NotEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sequential/embedding/NotEqualЭ
'sequential/conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2)
'sequential/conv1d/conv1d/ExpandDims/dimЙ
#sequential/conv1d/conv1d/ExpandDims
ExpandDims9sequential/embedding/embedding_lookup/Identity_1:output:00sequential/conv1d/conv1d/ExpandDims/dim:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€†2%
#sequential/conv1d/conv1d/ExpandDimsр
4sequential/conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp=sequential_conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:††*
dtype026
4sequential/conv1d/conv1d/ExpandDims_1/ReadVariableOpШ
)sequential/conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential/conv1d/conv1d/ExpandDims_1/dimБ
%sequential/conv1d/conv1d/ExpandDims_1
ExpandDims<sequential/conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:02sequential/conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:††2'
%sequential/conv1d/conv1d/ExpandDims_1Й
sequential/conv1d/conv1dConv2D,sequential/conv1d/conv1d/ExpandDims:output:0.sequential/conv1d/conv1d/ExpandDims_1:output:0*
T0*9
_output_shapes'
%:#€€€€€€€€€€€€€€€€€€†*
paddingVALID*
strides
2
sequential/conv1d/conv1d“
 sequential/conv1d/conv1d/SqueezeSqueeze!sequential/conv1d/conv1d:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
squeeze_dims

э€€€€€€€€2"
 sequential/conv1d/conv1d/Squeeze√
(sequential/conv1d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:†*
dtype02*
(sequential/conv1d/BiasAdd/ReadVariableOpё
sequential/conv1d/BiasAddBiasAdd)sequential/conv1d/conv1d/Squeeze:output:00sequential/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2
sequential/conv1d/BiasAddЬ
sequential/conv1d/ReluRelu"sequential/conv1d/BiasAdd:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2
sequential/conv1d/Relu∞
5sequential/global_max_pooling1d/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential/global_max_pooling1d/Max/reduction_indicesк
#sequential/global_max_pooling1d/MaxMax$sequential/conv1d/Relu:activations:0>sequential/global_max_pooling1d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:€€€€€€€€€†2%
#sequential/global_max_pooling1d/MaxЅ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	†4*
dtype02(
&sequential/dense/MatMul/ReadVariableOpћ
sequential/dense/MatMulMatMul,sequential/global_max_pooling1d/Max:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€42
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:4*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€42
sequential/dense/BiasAddЛ
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€42
sequential/dense/Relu∆
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:4*
dtype02*
(sequential/dense_1/MatMul/ReadVariableOp…
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/MatMul≈
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_1/BiasAdd/ReadVariableOpЌ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/BiasAddС
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_1/ReluЯ
sequential/dropout/IdentityIdentity%sequential/dense_1/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dropout/Identity∆
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(sequential/dense_2/MatMul/ReadVariableOp 
sequential/dense_2/MatMulMatMul$sequential/dropout/Identity:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_2/MatMul≈
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)sequential/dense_2/BiasAdd/ReadVariableOpЌ
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_2/BiasAddЪ
sequential/dense_2/SoftmaxSoftmax#sequential/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense_2/SoftmaxГ
IdentityIdentity$sequential/dense_2/Softmax:softmax:0)^sequential/conv1d/BiasAdd/ReadVariableOp5^sequential/conv1d/conv1d/ExpandDims_1/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:::::::::2T
(sequential/conv1d/BiasAdd/ReadVariableOp(sequential/conv1d/BiasAdd/ReadVariableOp2l
4sequential/conv1d/conv1d/ExpandDims_1/ReadVariableOp4sequential/conv1d/conv1d/ExpandDims_1/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup:a ]
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
)
_user_specified_nameembedding_input
о	
Ё
D__inference_dense_1_layer_call_and_return_conditional_losses_2660615

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:4*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€4::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€4
 
_user_specified_nameinputs
о	
Ё
D__inference_dense_1_layer_call_and_return_conditional_losses_2660154

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:4*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€4::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€4
 
_user_specified_nameinputs
А
c
D__inference_dropout_layer_call_and_return_conditional_losses_2660636

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’
к
,__inference_sequential_layer_call_fn_2660542

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_26603472
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
}
(__inference_conv1d_layer_call_fn_2660584

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv1d_layer_call_and_return_conditional_losses_26600992
StatefulPartitionedCallЬ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2

Identity"
identityIdentity:output:0*<
_input_shapes+
):€€€€€€€€€€€€€€€€€€†::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†
 
_user_specified_nameinputs
№
~
)__inference_dense_1_layer_call_fn_2660624

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_26601542
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€4::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€4
 
_user_specified_nameinputs
ц	
Ё
D__inference_dense_2_layer_call_and_return_conditional_losses_2660211

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ю
b
)__inference_dropout_layer_call_fn_2660646

inputs
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_26601822
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’
к
,__inference_sequential_layer_call_fn_2660519

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
identityИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_layer_call_and_return_conditional_losses_26602932
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:€€€€€€€€€€€€€€€€€€:::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
•

Ц
F__inference_embedding_layer_call_and_return_conditional_losses_2660069

inputs
embedding_lookup_2660063
identityИҐembedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
CastЙ
embedding_lookupResourceGatherembedding_lookup_2660063Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/2660063*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
dtype02
embedding_lookupш
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/2660063*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2
embedding_lookup/Identity™
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2
embedding_lookup/Identity_1Щ
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€€€€€€€€€€:2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*√
serving_defaultѓ
T
embedding_inputA
!serving_default_embedding_input:0€€€€€€€€€€€€€€€€€€;
dense_20
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Рв
ч9
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
	optimizer
		variables

regularization_losses
trainable_variables
	keras_api

signatures
m__call__
n_default_save_signature
*o&call_and_return_all_conditional_losses"ѕ6
_tf_keras_sequential∞6{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 10001, "output_dim": 160, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": null}}, {"class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 160, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 52, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 28, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 11, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 10001, "output_dim": 160, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": null}}, {"class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 160, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 52, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 28, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 11, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": ["accuracy", "mse", "mean_squared_logarithmic_error", "mean_absolute_error", "cosine_similarity", {"class_name": "LogCoshError", "config": {"name": "logcosh", "dtype": "float32"}}, {"class_name": "KLDivergence", "config": {"name": "kullback_leibler_divergence", "dtype": "float32"}}], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.001, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}
≠

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
p__call__
*q&call_and_return_all_conditional_losses"О
_tf_keras_layerф{"class_name": "Embedding", "name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 10001, "output_dim": 160, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": true, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
з	

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
r__call__
*s&call_and_return_all_conditional_losses"¬
_tf_keras_layer®{"class_name": "Conv1D", "name": "conv1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 160, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 160}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 160]}}
З
	variables
regularization_losses
trainable_variables
	keras_api
t__call__
*u&call_and_return_all_conditional_losses"ш
_tf_keras_layerё{"class_name": "GlobalMaxPooling1D", "name": "global_max_pooling1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_max_pooling1d", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
о

kernel
bias
	variables
 regularization_losses
!trainable_variables
"	keras_api
v__call__
*w&call_and_return_all_conditional_losses"…
_tf_keras_layerѓ{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 52, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 160}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 160]}}
р

#kernel
$bias
%	variables
&regularization_losses
'trainable_variables
(	keras_api
x__call__
*y&call_and_return_all_conditional_losses"Ћ
_tf_keras_layer±{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 28, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 52}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 52]}}
б
)	variables
*regularization_losses
+trainable_variables
,	keras_api
z__call__
*{&call_and_return_all_conditional_losses"“
_tf_keras_layerЄ{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
у

-kernel
.bias
/	variables
0regularization_losses
1trainable_variables
2	keras_api
|__call__
*}&call_and_return_all_conditional_losses"ќ
_tf_keras_layerі{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 11, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 28}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28]}}
µm[m\m]m^m_#m`$ma-mb.mcvdvevfvgvh#vi$vj-vk.vl"
	optimizer
_
0
1
2
3
4
#5
$6
-7
.8"
trackable_list_wrapper
 "
trackable_list_wrapper
_
0
1
2
3
4
#5
$6
-7
.8"
trackable_list_wrapper
 
3non_trainable_variables
		variables

regularization_losses

4layers
5metrics
6layer_regularization_losses
trainable_variables
7layer_metrics
m__call__
n_default_save_signature
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
,
~serving_default"
signature_map
(:&
СN†2embedding/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
≠
8non_trainable_variables
	variables
regularization_losses

9layers
:metrics
;layer_regularization_losses
trainable_variables
<layer_metrics
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
%:#††2conv1d/kernel
:†2conv1d/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠
=non_trainable_variables
	variables
regularization_losses

>layers
?metrics
@layer_regularization_losses
trainable_variables
Alayer_metrics
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Bnon_trainable_variables
	variables
regularization_losses

Clayers
Dmetrics
Elayer_regularization_losses
trainable_variables
Flayer_metrics
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
:	†42dense/kernel
:42
dense/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
≠
Gnon_trainable_variables
	variables
 regularization_losses

Hlayers
Imetrics
Jlayer_regularization_losses
!trainable_variables
Klayer_metrics
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
 :42dense_1/kernel
:2dense_1/bias
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
≠
Lnon_trainable_variables
%	variables
&regularization_losses

Mlayers
Nmetrics
Olayer_regularization_losses
'trainable_variables
Player_metrics
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Qnon_trainable_variables
)	variables
*regularization_losses

Rlayers
Smetrics
Tlayer_regularization_losses
+trainable_variables
Ulayer_metrics
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
 :2dense_2/kernel
:2dense_2/bias
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
≠
Vnon_trainable_variables
/	variables
0regularization_losses

Wlayers
Xmetrics
Ylayer_regularization_losses
1trainable_variables
Zlayer_metrics
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
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
(:&
СN†2embedding/embeddings/m
%:#††2conv1d/kernel/m
:†2conv1d/bias/m
:	†42dense/kernel/m
:42dense/bias/m
 :42dense_1/kernel/m
:2dense_1/bias/m
 :2dense_2/kernel/m
:2dense_2/bias/m
(:&
СN†2embedding/embeddings/v
%:#††2conv1d/kernel/v
:†2conv1d/bias/v
:	†42dense/kernel/v
:42dense/bias/v
 :42dense_1/kernel/v
:2dense_1/bias/v
 :2dense_2/kernel/v
:2dense_2/bias/v
ю2ы
,__inference_sequential_layer_call_fn_2660314
,__inference_sequential_layer_call_fn_2660368
,__inference_sequential_layer_call_fn_2660542
,__inference_sequential_layer_call_fn_2660519ј
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
с2о
"__inference__wrapped_model_2660042«
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
annotations™ *7Ґ4
2К/
embedding_input€€€€€€€€€€€€€€€€€€
к2з
G__inference_sequential_layer_call_and_return_conditional_losses_2660496
G__inference_sequential_layer_call_and_return_conditional_losses_2660259
G__inference_sequential_layer_call_and_return_conditional_losses_2660448
G__inference_sequential_layer_call_and_return_conditional_losses_2660228ј
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
’2“
+__inference_embedding_layer_call_fn_2660559Ґ
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
р2н
F__inference_embedding_layer_call_and_return_conditional_losses_2660552Ґ
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
“2ѕ
(__inference_conv1d_layer_call_fn_2660584Ґ
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
н2к
C__inference_conv1d_layer_call_and_return_conditional_losses_2660575Ґ
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
С2О
6__inference_global_max_pooling1d_layer_call_fn_2660055”
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
annotations™ *3Ґ0
.К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€
ђ2©
Q__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_2660049”
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
annotations™ *3Ґ0
.К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€
—2ќ
'__inference_dense_layer_call_fn_2660604Ґ
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
м2й
B__inference_dense_layer_call_and_return_conditional_losses_2660595Ґ
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
”2–
)__inference_dense_1_layer_call_fn_2660624Ґ
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
о2л
D__inference_dense_1_layer_call_and_return_conditional_losses_2660615Ґ
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
Р2Н
)__inference_dropout_layer_call_fn_2660646
)__inference_dropout_layer_call_fn_2660651і
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
∆2√
D__inference_dropout_layer_call_and_return_conditional_losses_2660641
D__inference_dropout_layer_call_and_return_conditional_losses_2660636і
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
”2–
)__inference_dense_2_layer_call_fn_2660671Ґ
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
о2л
D__inference_dense_2_layer_call_and_return_conditional_losses_2660662Ґ
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
‘B—
%__inference_signature_wrapper_2660393embedding_input"Ф
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
 ®
"__inference__wrapped_model_2660042Б	#$-.AҐ>
7Ґ4
2К/
embedding_input€€€€€€€€€€€€€€€€€€
™ "1™.
,
dense_2!К
dense_2€€€€€€€€€њ
C__inference_conv1d_layer_call_and_return_conditional_losses_2660575x=Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€†
™ "3Ґ0
)К&
0€€€€€€€€€€€€€€€€€€†
Ъ Ч
(__inference_conv1d_layer_call_fn_2660584k=Ґ:
3Ґ0
.К+
inputs€€€€€€€€€€€€€€€€€€†
™ "&К#€€€€€€€€€€€€€€€€€€†§
D__inference_dense_1_layer_call_and_return_conditional_losses_2660615\#$/Ґ,
%Ґ"
 К
inputs€€€€€€€€€4
™ "%Ґ"
К
0€€€€€€€€€
Ъ |
)__inference_dense_1_layer_call_fn_2660624O#$/Ґ,
%Ґ"
 К
inputs€€€€€€€€€4
™ "К€€€€€€€€€§
D__inference_dense_2_layer_call_and_return_conditional_losses_2660662\-./Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ |
)__inference_dense_2_layer_call_fn_2660671O-./Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€£
B__inference_dense_layer_call_and_return_conditional_losses_2660595]0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ "%Ґ"
К
0€€€€€€€€€4
Ъ {
'__inference_dense_layer_call_fn_2660604P0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ "К€€€€€€€€€4§
D__inference_dropout_layer_call_and_return_conditional_losses_2660636\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "%Ґ"
К
0€€€€€€€€€
Ъ §
D__inference_dropout_layer_call_and_return_conditional_losses_2660641\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "%Ґ"
К
0€€€€€€€€€
Ъ |
)__inference_dropout_layer_call_fn_2660646O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "К€€€€€€€€€|
)__inference_dropout_layer_call_fn_2660651O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "К€€€€€€€€€Љ
F__inference_embedding_layer_call_and_return_conditional_losses_2660552r8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€€€€€€€€€€
™ "3Ґ0
)К&
0€€€€€€€€€€€€€€€€€€†
Ъ Ф
+__inference_embedding_layer_call_fn_2660559e8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€€€€€€€€€€
™ "&К#€€€€€€€€€€€€€€€€€€†ћ
Q__inference_global_max_pooling1d_layer_call_and_return_conditional_losses_2660049wEҐB
;Ґ8
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ".Ґ+
$К!
0€€€€€€€€€€€€€€€€€€
Ъ §
6__inference_global_max_pooling1d_layer_call_fn_2660055jEҐB
;Ґ8
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "!К€€€€€€€€€€€€€€€€€€»
G__inference_sequential_layer_call_and_return_conditional_losses_2660228}	#$-.IҐF
?Ґ<
2К/
embedding_input€€€€€€€€€€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ »
G__inference_sequential_layer_call_and_return_conditional_losses_2660259}	#$-.IҐF
?Ґ<
2К/
embedding_input€€€€€€€€€€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ њ
G__inference_sequential_layer_call_and_return_conditional_losses_2660448t	#$-.@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ њ
G__inference_sequential_layer_call_and_return_conditional_losses_2660496t	#$-.@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ †
,__inference_sequential_layer_call_fn_2660314p	#$-.IҐF
?Ґ<
2К/
embedding_input€€€€€€€€€€€€€€€€€€
p

 
™ "К€€€€€€€€€†
,__inference_sequential_layer_call_fn_2660368p	#$-.IҐF
?Ґ<
2К/
embedding_input€€€€€€€€€€€€€€€€€€
p 

 
™ "К€€€€€€€€€Ч
,__inference_sequential_layer_call_fn_2660519g	#$-.@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "К€€€€€€€€€Ч
,__inference_sequential_layer_call_fn_2660542g	#$-.@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "К€€€€€€€€€Њ
%__inference_signature_wrapper_2660393Ф	#$-.TҐQ
Ґ 
J™G
E
embedding_input2К/
embedding_input€€€€€€€€€€€€€€€€€€"1™.
,
dense_2!К
dense_2€€€€€€€€€
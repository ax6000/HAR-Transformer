��4
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
*
Erf
x"T
y"T"
Ttype:
2
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
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
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
-
Sqrt
x"T
y"T"
Ttype:

2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.7.02unknown8��/
�
transformer/normalization/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name transformer/normalization/mean
�
2transformer/normalization/mean/Read/ReadVariableOpReadVariableOptransformer/normalization/mean*
_output_shapes
:*
dtype0
�
"transformer/normalization/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"transformer/normalization/variance
�
6transformer/normalization/variance/Read/ReadVariableOpReadVariableOp"transformer/normalization/variance*
_output_shapes
:*
dtype0
�
transformer/normalization/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *0
shared_name!transformer/normalization/count
�
3transformer/normalization/count/Read/ReadVariableOpReadVariableOptransformer/normalization/count*
_output_shapes
: *
dtype0	
�
)transformer/positional_embedding/positionVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*:
shared_name+)transformer/positional_embedding/position
�
=transformer/positional_embedding/position/Read/ReadVariableOpReadVariableOp)transformer/positional_embedding/position*$
_output_shapes
:��*
dtype0
�
'transformer/layer_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*8
shared_name)'transformer/layer_normalization_6/gamma
�
;transformer/layer_normalization_6/gamma/Read/ReadVariableOpReadVariableOp'transformer/layer_normalization_6/gamma*
_output_shapes	
:�*
dtype0
�
&transformer/layer_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&transformer/layer_normalization_6/beta
�
:transformer/layer_normalization_6/beta/Read/ReadVariableOpReadVariableOp&transformer/layer_normalization_6/beta*
_output_shapes	
:�*
dtype0
�
transformer/dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*+
shared_nametransformer/dense_7/kernel
�
.transformer/dense_7/kernel/Read/ReadVariableOpReadVariableOptransformer/dense_7/kernel*
_output_shapes
:	�*
dtype0
�
transformer/dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nametransformer/dense_7/bias
�
,transformer/dense_7/bias/Read/ReadVariableOpReadVariableOptransformer/dense_7/bias*
_output_shapes
:*
dtype0
�
-transformer/positional_embedding/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*>
shared_name/-transformer/positional_embedding/dense/kernel
�
Atransformer/positional_embedding/dense/kernel/Read/ReadVariableOpReadVariableOp-transformer/positional_embedding/dense/kernel*
_output_shapes
:	�*
dtype0
�
+transformer/positional_embedding/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*<
shared_name-+transformer/positional_embedding/dense/bias
�
?transformer/positional_embedding/dense/bias/Read/ReadVariableOpReadVariableOp+transformer/positional_embedding/dense/bias*
_output_shapes	
:�*
dtype0
�
5transformer/encoder/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*F
shared_name75transformer/encoder/multi_head_attention/query/kernel
�
Itransformer/encoder/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp5transformer/encoder/multi_head_attention/query/kernel*$
_output_shapes
:��*
dtype0
�
3transformer/encoder/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*D
shared_name53transformer/encoder/multi_head_attention/query/bias
�
Gtransformer/encoder/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp3transformer/encoder/multi_head_attention/query/bias*
_output_shapes
:	�*
dtype0
�
3transformer/encoder/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*D
shared_name53transformer/encoder/multi_head_attention/key/kernel
�
Gtransformer/encoder/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp3transformer/encoder/multi_head_attention/key/kernel*$
_output_shapes
:��*
dtype0
�
1transformer/encoder/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*B
shared_name31transformer/encoder/multi_head_attention/key/bias
�
Etransformer/encoder/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp1transformer/encoder/multi_head_attention/key/bias*
_output_shapes
:	�*
dtype0
�
5transformer/encoder/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*F
shared_name75transformer/encoder/multi_head_attention/value/kernel
�
Itransformer/encoder/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp5transformer/encoder/multi_head_attention/value/kernel*$
_output_shapes
:��*
dtype0
�
3transformer/encoder/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*D
shared_name53transformer/encoder/multi_head_attention/value/bias
�
Gtransformer/encoder/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp3transformer/encoder/multi_head_attention/value/bias*
_output_shapes
:	�*
dtype0
�
@transformer/encoder/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*Q
shared_nameB@transformer/encoder/multi_head_attention/attention_output/kernel
�
Ttransformer/encoder/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp@transformer/encoder/multi_head_attention/attention_output/kernel*$
_output_shapes
:��*
dtype0
�
>transformer/encoder/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*O
shared_name@>transformer/encoder/multi_head_attention/attention_output/bias
�
Rtransformer/encoder/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp>transformer/encoder/multi_head_attention/attention_output/bias*
_output_shapes	
:�*
dtype0
�
"transformer/encoder/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*3
shared_name$"transformer/encoder/dense_1/kernel
�
6transformer/encoder/dense_1/kernel/Read/ReadVariableOpReadVariableOp"transformer/encoder/dense_1/kernel* 
_output_shapes
:
��*
dtype0
�
 transformer/encoder/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" transformer/encoder/dense_1/bias
�
4transformer/encoder/dense_1/bias/Read/ReadVariableOpReadVariableOp transformer/encoder/dense_1/bias*
_output_shapes	
:�*
dtype0
�
"transformer/encoder/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*3
shared_name$"transformer/encoder/dense_2/kernel
�
6transformer/encoder/dense_2/kernel/Read/ReadVariableOpReadVariableOp"transformer/encoder/dense_2/kernel* 
_output_shapes
:
��*
dtype0
�
 transformer/encoder/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*1
shared_name" transformer/encoder/dense_2/bias
�
4transformer/encoder/dense_2/bias/Read/ReadVariableOpReadVariableOp transformer/encoder/dense_2/bias*
_output_shapes	
:�*
dtype0
�
-transformer/encoder/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*>
shared_name/-transformer/encoder/layer_normalization/gamma
�
Atransformer/encoder/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp-transformer/encoder/layer_normalization/gamma*
_output_shapes	
:�*
dtype0
�
,transformer/encoder/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*=
shared_name.,transformer/encoder/layer_normalization/beta
�
@transformer/encoder/layer_normalization/beta/Read/ReadVariableOpReadVariableOp,transformer/encoder/layer_normalization/beta*
_output_shapes	
:�*
dtype0
�
/transformer/encoder/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*@
shared_name1/transformer/encoder/layer_normalization_1/gamma
�
Ctransformer/encoder/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp/transformer/encoder/layer_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
.transformer/encoder/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*?
shared_name0.transformer/encoder/layer_normalization_1/beta
�
Btransformer/encoder/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp.transformer/encoder/layer_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
9transformer/encoder_1/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*J
shared_name;9transformer/encoder_1/multi_head_attention_1/query/kernel
�
Mtransformer/encoder_1/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp9transformer/encoder_1/multi_head_attention_1/query/kernel*$
_output_shapes
:��*
dtype0
�
7transformer/encoder_1/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*H
shared_name97transformer/encoder_1/multi_head_attention_1/query/bias
�
Ktransformer/encoder_1/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp7transformer/encoder_1/multi_head_attention_1/query/bias*
_output_shapes
:	�*
dtype0
�
7transformer/encoder_1/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*H
shared_name97transformer/encoder_1/multi_head_attention_1/key/kernel
�
Ktransformer/encoder_1/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp7transformer/encoder_1/multi_head_attention_1/key/kernel*$
_output_shapes
:��*
dtype0
�
5transformer/encoder_1/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*F
shared_name75transformer/encoder_1/multi_head_attention_1/key/bias
�
Itransformer/encoder_1/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp5transformer/encoder_1/multi_head_attention_1/key/bias*
_output_shapes
:	�*
dtype0
�
9transformer/encoder_1/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*J
shared_name;9transformer/encoder_1/multi_head_attention_1/value/kernel
�
Mtransformer/encoder_1/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp9transformer/encoder_1/multi_head_attention_1/value/kernel*$
_output_shapes
:��*
dtype0
�
7transformer/encoder_1/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*H
shared_name97transformer/encoder_1/multi_head_attention_1/value/bias
�
Ktransformer/encoder_1/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp7transformer/encoder_1/multi_head_attention_1/value/bias*
_output_shapes
:	�*
dtype0
�
Dtransformer/encoder_1/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*U
shared_nameFDtransformer/encoder_1/multi_head_attention_1/attention_output/kernel
�
Xtransformer/encoder_1/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOpDtransformer/encoder_1/multi_head_attention_1/attention_output/kernel*$
_output_shapes
:��*
dtype0
�
Btransformer/encoder_1/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*S
shared_nameDBtransformer/encoder_1/multi_head_attention_1/attention_output/bias
�
Vtransformer/encoder_1/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOpBtransformer/encoder_1/multi_head_attention_1/attention_output/bias*
_output_shapes	
:�*
dtype0
�
$transformer/encoder_1/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$transformer/encoder_1/dense_3/kernel
�
8transformer/encoder_1/dense_3/kernel/Read/ReadVariableOpReadVariableOp$transformer/encoder_1/dense_3/kernel* 
_output_shapes
:
��*
dtype0
�
"transformer/encoder_1/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"transformer/encoder_1/dense_3/bias
�
6transformer/encoder_1/dense_3/bias/Read/ReadVariableOpReadVariableOp"transformer/encoder_1/dense_3/bias*
_output_shapes	
:�*
dtype0
�
$transformer/encoder_1/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$transformer/encoder_1/dense_4/kernel
�
8transformer/encoder_1/dense_4/kernel/Read/ReadVariableOpReadVariableOp$transformer/encoder_1/dense_4/kernel* 
_output_shapes
:
��*
dtype0
�
"transformer/encoder_1/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"transformer/encoder_1/dense_4/bias
�
6transformer/encoder_1/dense_4/bias/Read/ReadVariableOpReadVariableOp"transformer/encoder_1/dense_4/bias*
_output_shapes	
:�*
dtype0
�
1transformer/encoder_1/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*B
shared_name31transformer/encoder_1/layer_normalization_2/gamma
�
Etransformer/encoder_1/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp1transformer/encoder_1/layer_normalization_2/gamma*
_output_shapes	
:�*
dtype0
�
0transformer/encoder_1/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*A
shared_name20transformer/encoder_1/layer_normalization_2/beta
�
Dtransformer/encoder_1/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp0transformer/encoder_1/layer_normalization_2/beta*
_output_shapes	
:�*
dtype0
�
1transformer/encoder_1/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*B
shared_name31transformer/encoder_1/layer_normalization_3/gamma
�
Etransformer/encoder_1/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp1transformer/encoder_1/layer_normalization_3/gamma*
_output_shapes	
:�*
dtype0
�
0transformer/encoder_1/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*A
shared_name20transformer/encoder_1/layer_normalization_3/beta
�
Dtransformer/encoder_1/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp0transformer/encoder_1/layer_normalization_3/beta*
_output_shapes	
:�*
dtype0
�
9transformer/encoder_2/multi_head_attention_2/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*J
shared_name;9transformer/encoder_2/multi_head_attention_2/query/kernel
�
Mtransformer/encoder_2/multi_head_attention_2/query/kernel/Read/ReadVariableOpReadVariableOp9transformer/encoder_2/multi_head_attention_2/query/kernel*$
_output_shapes
:��*
dtype0
�
7transformer/encoder_2/multi_head_attention_2/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*H
shared_name97transformer/encoder_2/multi_head_attention_2/query/bias
�
Ktransformer/encoder_2/multi_head_attention_2/query/bias/Read/ReadVariableOpReadVariableOp7transformer/encoder_2/multi_head_attention_2/query/bias*
_output_shapes
:	�*
dtype0
�
7transformer/encoder_2/multi_head_attention_2/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*H
shared_name97transformer/encoder_2/multi_head_attention_2/key/kernel
�
Ktransformer/encoder_2/multi_head_attention_2/key/kernel/Read/ReadVariableOpReadVariableOp7transformer/encoder_2/multi_head_attention_2/key/kernel*$
_output_shapes
:��*
dtype0
�
5transformer/encoder_2/multi_head_attention_2/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*F
shared_name75transformer/encoder_2/multi_head_attention_2/key/bias
�
Itransformer/encoder_2/multi_head_attention_2/key/bias/Read/ReadVariableOpReadVariableOp5transformer/encoder_2/multi_head_attention_2/key/bias*
_output_shapes
:	�*
dtype0
�
9transformer/encoder_2/multi_head_attention_2/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*J
shared_name;9transformer/encoder_2/multi_head_attention_2/value/kernel
�
Mtransformer/encoder_2/multi_head_attention_2/value/kernel/Read/ReadVariableOpReadVariableOp9transformer/encoder_2/multi_head_attention_2/value/kernel*$
_output_shapes
:��*
dtype0
�
7transformer/encoder_2/multi_head_attention_2/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*H
shared_name97transformer/encoder_2/multi_head_attention_2/value/bias
�
Ktransformer/encoder_2/multi_head_attention_2/value/bias/Read/ReadVariableOpReadVariableOp7transformer/encoder_2/multi_head_attention_2/value/bias*
_output_shapes
:	�*
dtype0
�
Dtransformer/encoder_2/multi_head_attention_2/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*U
shared_nameFDtransformer/encoder_2/multi_head_attention_2/attention_output/kernel
�
Xtransformer/encoder_2/multi_head_attention_2/attention_output/kernel/Read/ReadVariableOpReadVariableOpDtransformer/encoder_2/multi_head_attention_2/attention_output/kernel*$
_output_shapes
:��*
dtype0
�
Btransformer/encoder_2/multi_head_attention_2/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*S
shared_nameDBtransformer/encoder_2/multi_head_attention_2/attention_output/bias
�
Vtransformer/encoder_2/multi_head_attention_2/attention_output/bias/Read/ReadVariableOpReadVariableOpBtransformer/encoder_2/multi_head_attention_2/attention_output/bias*
_output_shapes	
:�*
dtype0
�
$transformer/encoder_2/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$transformer/encoder_2/dense_5/kernel
�
8transformer/encoder_2/dense_5/kernel/Read/ReadVariableOpReadVariableOp$transformer/encoder_2/dense_5/kernel* 
_output_shapes
:
��*
dtype0
�
"transformer/encoder_2/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"transformer/encoder_2/dense_5/bias
�
6transformer/encoder_2/dense_5/bias/Read/ReadVariableOpReadVariableOp"transformer/encoder_2/dense_5/bias*
_output_shapes	
:�*
dtype0
�
$transformer/encoder_2/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*5
shared_name&$transformer/encoder_2/dense_6/kernel
�
8transformer/encoder_2/dense_6/kernel/Read/ReadVariableOpReadVariableOp$transformer/encoder_2/dense_6/kernel* 
_output_shapes
:
��*
dtype0
�
"transformer/encoder_2/dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"transformer/encoder_2/dense_6/bias
�
6transformer/encoder_2/dense_6/bias/Read/ReadVariableOpReadVariableOp"transformer/encoder_2/dense_6/bias*
_output_shapes	
:�*
dtype0
�
1transformer/encoder_2/layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*B
shared_name31transformer/encoder_2/layer_normalization_4/gamma
�
Etransformer/encoder_2/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOp1transformer/encoder_2/layer_normalization_4/gamma*
_output_shapes	
:�*
dtype0
�
0transformer/encoder_2/layer_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*A
shared_name20transformer/encoder_2/layer_normalization_4/beta
�
Dtransformer/encoder_2/layer_normalization_4/beta/Read/ReadVariableOpReadVariableOp0transformer/encoder_2/layer_normalization_4/beta*
_output_shapes	
:�*
dtype0
�
1transformer/encoder_2/layer_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*B
shared_name31transformer/encoder_2/layer_normalization_5/gamma
�
Etransformer/encoder_2/layer_normalization_5/gamma/Read/ReadVariableOpReadVariableOp1transformer/encoder_2/layer_normalization_5/gamma*
_output_shapes	
:�*
dtype0
�
0transformer/encoder_2/layer_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*A
shared_name20transformer/encoder_2/layer_normalization_5/beta
�
Dtransformer/encoder_2/layer_normalization_5/beta/Read/ReadVariableOpReadVariableOp0transformer/encoder_2/layer_normalization_5/beta*
_output_shapes	
:�*
dtype0
v
ConstConst*"
_output_shapes
:*
dtype0*5
value,B*"���=)����׳�H��<�f <S�;
x
Const_1Const*"
_output_shapes
:*
dtype0*5
value,B*"�x�A��AﬀAF�A@���?<@

NoOpNoOp
��
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�

input_norm
pos_embs
e_layers
norm
final_layer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
�

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
	keras_api
�

projection
add
dropout
position
	variables
trainable_variables
regularization_losses
	keras_api

0
1
2
q
axis
	gamma
 beta
!	variables
"trainable_variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
�
0
1
2
3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615
716
817
918
:19
;20
<21
=22
>23
?24
@25
A26
B27
C28
D29
E30
F31
G32
H33
I34
J35
K36
L37
M38
N39
O40
P41
Q42
R43
S44
T45
U46
V47
W48
X49
Y50
Z51
[52
\53
54
 55
%56
&57
�
0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
814
915
:16
;17
<18
=19
>20
?21
@22
A23
B24
C25
D26
E27
F28
G29
H30
I31
J32
K33
L34
M35
N36
O37
P38
Q39
R40
S41
T42
U43
V44
W45
X46
Y47
Z48
[49
\50
51
 52
%53
&54
 
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
 
 
^\
VARIABLE_VALUEtransformer/normalization/mean*input_norm/mean/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE"transformer/normalization/variance.input_norm/variance/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUEtransformer/normalization/count+input_norm/count/.ATTRIBUTES/VARIABLE_VALUE
 
h

+kernel
,bias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
R
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
R
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
ki
VARIABLE_VALUE)transformer/positional_embedding/position,pos_embs/position/.ATTRIBUTES/VARIABLE_VALUE

0
+1
,2

0
+1
,2
 
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
�
smha
tdense_0
udense_1
v	dropout_0
w	dropout_1

xnorm_0

ynorm_1
	zadd_0
	{add_1
|	variables
}trainable_variables
~regularization_losses
	keras_api
�
�mha
�dense_0
�dense_1
�	dropout_0
�	dropout_1
�norm_0
�norm_1

�add_0

�add_1
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�mha
�dense_0
�dense_1
�	dropout_0
�	dropout_1
�norm_0
�norm_1

�add_0

�add_1
�	variables
�trainable_variables
�regularization_losses
�	keras_api
 
b`
VARIABLE_VALUE'transformer/layer_normalization_6/gamma%norm/gamma/.ATTRIBUTES/VARIABLE_VALUE
`^
VARIABLE_VALUE&transformer/layer_normalization_6/beta$norm/beta/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
][
VARIABLE_VALUEtransformer/dense_7/kernel-final_layer/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEtransformer/dense_7/bias+final_layer/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
ig
VARIABLE_VALUE-transformer/positional_embedding/dense/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE+transformer/positional_embedding/dense/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE5transformer/encoder/multi_head_attention/query/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3transformer/encoder/multi_head_attention/query/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUE3transformer/encoder/multi_head_attention/key/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE1transformer/encoder/multi_head_attention/key/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE5transformer/encoder/multi_head_attention/value/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE3transformer/encoder/multi_head_attention/value/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE@transformer/encoder/multi_head_attention/attention_output/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE>transformer/encoder/multi_head_attention/attention_output/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"transformer/encoder/dense_1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE transformer/encoder/dense_1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"transformer/encoder/dense_2/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE transformer/encoder/dense_2/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE-transformer/encoder/layer_normalization/gamma'variables/18/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,transformer/encoder/layer_normalization/beta'variables/19/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUE/transformer/encoder/layer_normalization_1/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.transformer/encoder/layer_normalization_1/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE9transformer/encoder_1/multi_head_attention_1/query/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7transformer/encoder_1/multi_head_attention_1/query/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7transformer/encoder_1/multi_head_attention_1/key/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE5transformer/encoder_1/multi_head_attention_1/key/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE9transformer/encoder_1/multi_head_attention_1/value/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7transformer/encoder_1/multi_head_attention_1/value/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEDtransformer/encoder_1/multi_head_attention_1/attention_output/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEBtransformer/encoder_1/multi_head_attention_1/attention_output/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE$transformer/encoder_1/dense_3/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"transformer/encoder_1/dense_3/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE$transformer/encoder_1/dense_4/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"transformer/encoder_1/dense_4/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE1transformer/encoder_1/layer_normalization_2/gamma'variables/34/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE0transformer/encoder_1/layer_normalization_2/beta'variables/35/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE1transformer/encoder_1/layer_normalization_3/gamma'variables/36/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE0transformer/encoder_1/layer_normalization_3/beta'variables/37/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE9transformer/encoder_2/multi_head_attention_2/query/kernel'variables/38/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7transformer/encoder_2/multi_head_attention_2/query/bias'variables/39/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7transformer/encoder_2/multi_head_attention_2/key/kernel'variables/40/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE5transformer/encoder_2/multi_head_attention_2/key/bias'variables/41/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE9transformer/encoder_2/multi_head_attention_2/value/kernel'variables/42/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7transformer/encoder_2/multi_head_attention_2/value/bias'variables/43/.ATTRIBUTES/VARIABLE_VALUE
�
VARIABLE_VALUEDtransformer/encoder_2/multi_head_attention_2/attention_output/kernel'variables/44/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEBtransformer/encoder_2/multi_head_attention_2/attention_output/bias'variables/45/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE$transformer/encoder_2/dense_5/kernel'variables/46/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"transformer/encoder_2/dense_5/bias'variables/47/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE$transformer/encoder_2/dense_6/kernel'variables/48/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE"transformer/encoder_2/dense_6/bias'variables/49/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE1transformer/encoder_2/layer_normalization_4/gamma'variables/50/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE0transformer/encoder_2/layer_normalization_4/beta'variables/51/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUE1transformer/encoder_2/layer_normalization_5/gamma'variables/52/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE0transformer/encoder_2/layer_normalization_5/beta'variables/53/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
1
0
1
2
3
4
5
6
 
 
 

+0
,1

+0
,1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
 

0
1
2
 
 
 
�
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
�	variables
�trainable_variables
�regularization_losses
�	keras_api
l

5kernel
6bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
l

7kernel
8bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
v
	�axis
	9gamma
:beta
�	variables
�trainable_variables
�regularization_losses
�	keras_api
v
	�axis
	;gamma
<beta
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
v
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
v
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
|	variables
}trainable_variables
~regularization_losses
�
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
�	variables
�trainable_variables
�regularization_losses
�	keras_api
l

Ekernel
Fbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
l

Gkernel
Hbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
v
	�axis
	Igamma
Jbeta
�	variables
�trainable_variables
�regularization_losses
�	keras_api
v
	�axis
	Kgamma
Lbeta
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
v
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
v
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
�	variables
�trainable_variables
�regularization_losses
�	keras_api
l

Ukernel
Vbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
l

Wkernel
Xbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
v
	�axis
	Ygamma
Zbeta
�	variables
�trainable_variables
�regularization_losses
�	keras_api
v
	�axis
	[gamma
\beta
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
v
M0
N1
O2
P3
Q4
R5
S6
T7
U8
V9
W10
X11
Y12
Z13
[14
\15
v
M0
N1
O2
P3
Q4
R5
S6
T7
U8
V9
W10
X11
Y12
Z13
[14
\15
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
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
�
�partial_output_shape
�full_output_shape

-kernel
.bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

/kernel
0bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

1kernel
2bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

3kernel
4bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
8
-0
.1
/2
03
14
25
36
47
8
-0
.1
/2
03
14
25
36
47
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses

50
61

50
61
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses

70
81

70
81
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 

90
:1

90
:1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 

;0
<1

;0
<1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
?
s0
t1
u2
v3
w4
x5
y6
z7
{8
 
 
 
�
�partial_output_shape
�full_output_shape

=kernel
>bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

?kernel
@bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

Akernel
Bbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

Ckernel
Dbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
8
=0
>1
?2
@3
A4
B5
C6
D7
8
=0
>1
?2
@3
A4
B5
C6
D7
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses

E0
F1

E0
F1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses

G0
H1

G0
H1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 

I0
J1

I0
J1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 

K0
L1

K0
L1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
H
�0
�1
�2
�3
�4
�5
�6
�7
�8
 
 
 
�
�partial_output_shape
�full_output_shape

Mkernel
Nbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

Okernel
Pbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

Qkernel
Rbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
V
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�
�partial_output_shape
�full_output_shape

Skernel
Tbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
8
M0
N1
O2
P3
Q4
R5
S6
T7
8
M0
N1
O2
P3
Q4
R5
S6
T7
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses

U0
V1

U0
V1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses

W0
X1

W0
X1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 

Y0
Z1

Y0
Z1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 

[0
\1

[0
\1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
H
�0
�1
�2
�3
�4
�5
�6
�7
�8
 
 
 
 
 

-0
.1

-0
.1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

/0
01

/0
01
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

10
21

10
21
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

30
41

30
41
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
0
�0
�1
�2
�3
�4
�5
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

=0
>1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

?0
@1

?0
@1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

A0
B1

A0
B1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

C0
D1

C0
D1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
0
�0
�1
�2
�3
�4
�5
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
 
 
 
 
 
 
 

M0
N1

M0
N1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

O0
P1

O0
P1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

Q0
R1

Q0
R1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
 

S0
T1

S0
T1
 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
 
0
�0
�1
�2
�3
�4
�5
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
�
serving_default_input_1Placeholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1ConstConst_1-transformer/positional_embedding/dense/kernel+transformer/positional_embedding/dense/bias)transformer/positional_embedding/position-transformer/encoder/layer_normalization/gamma,transformer/encoder/layer_normalization/beta5transformer/encoder/multi_head_attention/query/kernel3transformer/encoder/multi_head_attention/query/bias3transformer/encoder/multi_head_attention/key/kernel1transformer/encoder/multi_head_attention/key/bias5transformer/encoder/multi_head_attention/value/kernel3transformer/encoder/multi_head_attention/value/bias@transformer/encoder/multi_head_attention/attention_output/kernel>transformer/encoder/multi_head_attention/attention_output/bias/transformer/encoder/layer_normalization_1/gamma.transformer/encoder/layer_normalization_1/beta"transformer/encoder/dense_1/kernel transformer/encoder/dense_1/bias"transformer/encoder/dense_2/kernel transformer/encoder/dense_2/bias1transformer/encoder_1/layer_normalization_2/gamma0transformer/encoder_1/layer_normalization_2/beta9transformer/encoder_1/multi_head_attention_1/query/kernel7transformer/encoder_1/multi_head_attention_1/query/bias7transformer/encoder_1/multi_head_attention_1/key/kernel5transformer/encoder_1/multi_head_attention_1/key/bias9transformer/encoder_1/multi_head_attention_1/value/kernel7transformer/encoder_1/multi_head_attention_1/value/biasDtransformer/encoder_1/multi_head_attention_1/attention_output/kernelBtransformer/encoder_1/multi_head_attention_1/attention_output/bias1transformer/encoder_1/layer_normalization_3/gamma0transformer/encoder_1/layer_normalization_3/beta$transformer/encoder_1/dense_3/kernel"transformer/encoder_1/dense_3/bias$transformer/encoder_1/dense_4/kernel"transformer/encoder_1/dense_4/bias1transformer/encoder_2/layer_normalization_4/gamma0transformer/encoder_2/layer_normalization_4/beta9transformer/encoder_2/multi_head_attention_2/query/kernel7transformer/encoder_2/multi_head_attention_2/query/bias7transformer/encoder_2/multi_head_attention_2/key/kernel5transformer/encoder_2/multi_head_attention_2/key/bias9transformer/encoder_2/multi_head_attention_2/value/kernel7transformer/encoder_2/multi_head_attention_2/value/biasDtransformer/encoder_2/multi_head_attention_2/attention_output/kernelBtransformer/encoder_2/multi_head_attention_2/attention_output/bias1transformer/encoder_2/layer_normalization_5/gamma0transformer/encoder_2/layer_normalization_5/beta$transformer/encoder_2/dense_5/kernel"transformer/encoder_2/dense_5/bias$transformer/encoder_2/dense_6/kernel"transformer/encoder_2/dense_6/bias'transformer/layer_normalization_6/gamma&transformer/layer_normalization_6/betatransformer/dense_7/kerneltransformer/dense_7/bias*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:����������:�����������*Y
_read_only_resource_inputs;
97	
 !"#$%&'()*+,-./0123456789*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference_signature_wrapper_4181
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�!
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename2transformer/normalization/mean/Read/ReadVariableOp6transformer/normalization/variance/Read/ReadVariableOp3transformer/normalization/count/Read/ReadVariableOp=transformer/positional_embedding/position/Read/ReadVariableOp;transformer/layer_normalization_6/gamma/Read/ReadVariableOp:transformer/layer_normalization_6/beta/Read/ReadVariableOp.transformer/dense_7/kernel/Read/ReadVariableOp,transformer/dense_7/bias/Read/ReadVariableOpAtransformer/positional_embedding/dense/kernel/Read/ReadVariableOp?transformer/positional_embedding/dense/bias/Read/ReadVariableOpItransformer/encoder/multi_head_attention/query/kernel/Read/ReadVariableOpGtransformer/encoder/multi_head_attention/query/bias/Read/ReadVariableOpGtransformer/encoder/multi_head_attention/key/kernel/Read/ReadVariableOpEtransformer/encoder/multi_head_attention/key/bias/Read/ReadVariableOpItransformer/encoder/multi_head_attention/value/kernel/Read/ReadVariableOpGtransformer/encoder/multi_head_attention/value/bias/Read/ReadVariableOpTtransformer/encoder/multi_head_attention/attention_output/kernel/Read/ReadVariableOpRtransformer/encoder/multi_head_attention/attention_output/bias/Read/ReadVariableOp6transformer/encoder/dense_1/kernel/Read/ReadVariableOp4transformer/encoder/dense_1/bias/Read/ReadVariableOp6transformer/encoder/dense_2/kernel/Read/ReadVariableOp4transformer/encoder/dense_2/bias/Read/ReadVariableOpAtransformer/encoder/layer_normalization/gamma/Read/ReadVariableOp@transformer/encoder/layer_normalization/beta/Read/ReadVariableOpCtransformer/encoder/layer_normalization_1/gamma/Read/ReadVariableOpBtransformer/encoder/layer_normalization_1/beta/Read/ReadVariableOpMtransformer/encoder_1/multi_head_attention_1/query/kernel/Read/ReadVariableOpKtransformer/encoder_1/multi_head_attention_1/query/bias/Read/ReadVariableOpKtransformer/encoder_1/multi_head_attention_1/key/kernel/Read/ReadVariableOpItransformer/encoder_1/multi_head_attention_1/key/bias/Read/ReadVariableOpMtransformer/encoder_1/multi_head_attention_1/value/kernel/Read/ReadVariableOpKtransformer/encoder_1/multi_head_attention_1/value/bias/Read/ReadVariableOpXtransformer/encoder_1/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpVtransformer/encoder_1/multi_head_attention_1/attention_output/bias/Read/ReadVariableOp8transformer/encoder_1/dense_3/kernel/Read/ReadVariableOp6transformer/encoder_1/dense_3/bias/Read/ReadVariableOp8transformer/encoder_1/dense_4/kernel/Read/ReadVariableOp6transformer/encoder_1/dense_4/bias/Read/ReadVariableOpEtransformer/encoder_1/layer_normalization_2/gamma/Read/ReadVariableOpDtransformer/encoder_1/layer_normalization_2/beta/Read/ReadVariableOpEtransformer/encoder_1/layer_normalization_3/gamma/Read/ReadVariableOpDtransformer/encoder_1/layer_normalization_3/beta/Read/ReadVariableOpMtransformer/encoder_2/multi_head_attention_2/query/kernel/Read/ReadVariableOpKtransformer/encoder_2/multi_head_attention_2/query/bias/Read/ReadVariableOpKtransformer/encoder_2/multi_head_attention_2/key/kernel/Read/ReadVariableOpItransformer/encoder_2/multi_head_attention_2/key/bias/Read/ReadVariableOpMtransformer/encoder_2/multi_head_attention_2/value/kernel/Read/ReadVariableOpKtransformer/encoder_2/multi_head_attention_2/value/bias/Read/ReadVariableOpXtransformer/encoder_2/multi_head_attention_2/attention_output/kernel/Read/ReadVariableOpVtransformer/encoder_2/multi_head_attention_2/attention_output/bias/Read/ReadVariableOp8transformer/encoder_2/dense_5/kernel/Read/ReadVariableOp6transformer/encoder_2/dense_5/bias/Read/ReadVariableOp8transformer/encoder_2/dense_6/kernel/Read/ReadVariableOp6transformer/encoder_2/dense_6/bias/Read/ReadVariableOpEtransformer/encoder_2/layer_normalization_4/gamma/Read/ReadVariableOpDtransformer/encoder_2/layer_normalization_4/beta/Read/ReadVariableOpEtransformer/encoder_2/layer_normalization_5/gamma/Read/ReadVariableOpDtransformer/encoder_2/layer_normalization_5/beta/Read/ReadVariableOpConst_2*G
Tin@
>2<	*
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
GPU2*0J 8� *&
f!R
__inference__traced_save_6759
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenametransformer/normalization/mean"transformer/normalization/variancetransformer/normalization/count)transformer/positional_embedding/position'transformer/layer_normalization_6/gamma&transformer/layer_normalization_6/betatransformer/dense_7/kerneltransformer/dense_7/bias-transformer/positional_embedding/dense/kernel+transformer/positional_embedding/dense/bias5transformer/encoder/multi_head_attention/query/kernel3transformer/encoder/multi_head_attention/query/bias3transformer/encoder/multi_head_attention/key/kernel1transformer/encoder/multi_head_attention/key/bias5transformer/encoder/multi_head_attention/value/kernel3transformer/encoder/multi_head_attention/value/bias@transformer/encoder/multi_head_attention/attention_output/kernel>transformer/encoder/multi_head_attention/attention_output/bias"transformer/encoder/dense_1/kernel transformer/encoder/dense_1/bias"transformer/encoder/dense_2/kernel transformer/encoder/dense_2/bias-transformer/encoder/layer_normalization/gamma,transformer/encoder/layer_normalization/beta/transformer/encoder/layer_normalization_1/gamma.transformer/encoder/layer_normalization_1/beta9transformer/encoder_1/multi_head_attention_1/query/kernel7transformer/encoder_1/multi_head_attention_1/query/bias7transformer/encoder_1/multi_head_attention_1/key/kernel5transformer/encoder_1/multi_head_attention_1/key/bias9transformer/encoder_1/multi_head_attention_1/value/kernel7transformer/encoder_1/multi_head_attention_1/value/biasDtransformer/encoder_1/multi_head_attention_1/attention_output/kernelBtransformer/encoder_1/multi_head_attention_1/attention_output/bias$transformer/encoder_1/dense_3/kernel"transformer/encoder_1/dense_3/bias$transformer/encoder_1/dense_4/kernel"transformer/encoder_1/dense_4/bias1transformer/encoder_1/layer_normalization_2/gamma0transformer/encoder_1/layer_normalization_2/beta1transformer/encoder_1/layer_normalization_3/gamma0transformer/encoder_1/layer_normalization_3/beta9transformer/encoder_2/multi_head_attention_2/query/kernel7transformer/encoder_2/multi_head_attention_2/query/bias7transformer/encoder_2/multi_head_attention_2/key/kernel5transformer/encoder_2/multi_head_attention_2/key/bias9transformer/encoder_2/multi_head_attention_2/value/kernel7transformer/encoder_2/multi_head_attention_2/value/biasDtransformer/encoder_2/multi_head_attention_2/attention_output/kernelBtransformer/encoder_2/multi_head_attention_2/attention_output/bias$transformer/encoder_2/dense_5/kernel"transformer/encoder_2/dense_5/bias$transformer/encoder_2/dense_6/kernel"transformer/encoder_2/dense_6/bias1transformer/encoder_2/layer_normalization_4/gamma0transformer/encoder_2/layer_normalization_4/beta1transformer/encoder_2/layer_normalization_5/gamma0transformer/encoder_2/layer_normalization_5/beta*F
Tin?
=2;*
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
GPU2*0J 8� *)
f$R"
 __inference__traced_restore_6943��+
��
�
C__inference_encoder_2_layer_call_and_return_conditional_losses_2787

inputsJ
;layer_normalization_4_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_4_batchnorm_readvariableop_resource:	�Z
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_2_query_add_readvariableop_resource:	�X
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_2_key_add_readvariableop_resource:	�Z
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_2_value_add_readvariableop_resource:	�e
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:��R
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:	�J
;layer_normalization_5_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_5_batchnorm_readvariableop_resource:	�=
)dense_5_tensordot_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�=
)dense_6_tensordot_readvariableop_resource:
��6
'dense_6_biasadd_readvariableop_resource:	�
identity

identity_1��dense_5/BiasAdd/ReadVariableOp� dense_5/Tensordot/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp� dense_6/Tensordot/ReadVariableOp�.layer_normalization_4/batchnorm/ReadVariableOp�2layer_normalization_4/batchnorm/mul/ReadVariableOp�.layer_normalization_5/batchnorm/ReadVariableOp�2layer_normalization_5/batchnorm/mul/ReadVariableOp�:multi_head_attention_2/attention_output/add/ReadVariableOp�Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp�-multi_head_attention_2/key/add/ReadVariableOp�7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp�/multi_head_attention_2/query/add/ReadVariableOp�9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp�/multi_head_attention_2/value/add/ReadVariableOp�9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_4/moments/meanMeaninputs=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceinputs3layer_normalization_4/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_4/batchnorm/mul_1Mulinputs'layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_2/query/einsum/EinsumEinsum)layer_normalization_4/batchnorm/add_1:z:0Amulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention_2/key/einsum/EinsumEinsum)layer_normalization_4/batchnorm/add_1:z:0?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_2/value/einsum/EinsumEinsum)layer_normalization_4/batchnorm/add_1:z:0Amulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*1
_output_shapes
:������������
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
(multi_head_attention_2/softmax_2/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
&multi_head_attention_2/einsum_1/EinsumEinsum2multi_head_attention_2/softmax_2/Softmax:softmax:0$multi_head_attention_2/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
	add_5/addAddV2/multi_head_attention_2/attention_output/add:z:0inputs*
T0*-
_output_shapes
:�����������~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_5/moments/meanMeanadd_5/add:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_5/moments/SquaredDifferenceSquaredDifferenceadd_5/add:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_5/batchnorm/mul_1Muladd_5/add:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_5/Tensordot/ShapeShape)layer_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/transpose	Transpose)layer_normalization_5/batchnorm/add_1:z:0!dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������W
dense_5/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dense_5/Gelu/mulMuldense_5/Gelu/mul/x:output:0dense_5/BiasAdd:output:0*
T0*-
_output_shapes
:�����������X
dense_5/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dense_5/Gelu/truedivRealDivdense_5/BiasAdd:output:0dense_5/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������i
dense_5/Gelu/ErfErfdense_5/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������W
dense_5/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dense_5/Gelu/addAddV2dense_5/Gelu/add/x:output:0dense_5/Gelu/Erf:y:0*
T0*-
_output_shapes
:�����������}
dense_5/Gelu/mul_1Muldense_5/Gelu/mul:z:0dense_5/Gelu/add:z:0*
T0*-
_output_shapes
:������������
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_6/Tensordot/ShapeShapedense_5/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_6/Tensordot/transpose	Transposedense_5/Gelu/mul_1:z:0!dense_6/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������s
	add_6/addAddV2add_5/add:z:0dense_6/BiasAdd:output:0*
T0*-
_output_shapes
:�����������b
IdentityIdentityadd_6/add:z:0^NoOp*
T0*-
_output_shapes
:������������

Identity_1Identity2multi_head_attention_2/softmax_2/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2�
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
&__inference_dense_7_layer_call_fn_5494

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_2466t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�=
�
E__inference_transformer_layer_call_and_return_conditional_losses_3927
input_1
normalization_sub_y
normalization_sqrt_x,
positional_embedding_3806:	�(
positional_embedding_3808:	�1
positional_embedding_3810:��
encoder_3813:	�
encoder_3815:	�$
encoder_3817:��
encoder_3819:	�$
encoder_3821:��
encoder_3823:	�$
encoder_3825:��
encoder_3827:	�$
encoder_3829:��
encoder_3831:	�
encoder_3833:	�
encoder_3835:	� 
encoder_3837:
��
encoder_3839:	� 
encoder_3841:
��
encoder_3843:	�
encoder_1_3847:	�
encoder_1_3849:	�&
encoder_1_3851:��!
encoder_1_3853:	�&
encoder_1_3855:��!
encoder_1_3857:	�&
encoder_1_3859:��!
encoder_1_3861:	�&
encoder_1_3863:��
encoder_1_3865:	�
encoder_1_3867:	�
encoder_1_3869:	�"
encoder_1_3871:
��
encoder_1_3873:	�"
encoder_1_3875:
��
encoder_1_3877:	�
encoder_2_3881:	�
encoder_2_3883:	�&
encoder_2_3885:��!
encoder_2_3887:	�&
encoder_2_3889:��!
encoder_2_3891:	�&
encoder_2_3893:��!
encoder_2_3895:	�&
encoder_2_3897:��
encoder_2_3899:	�
encoder_2_3901:	�
encoder_2_3903:	�"
encoder_2_3905:
��
encoder_2_3907:	�"
encoder_2_3909:
��
encoder_2_3911:	�)
layer_normalization_6_3915:	�)
layer_normalization_6_3917:	�
dense_7_3920:	�
dense_7_3922:
identity

identity_1��dense_7/StatefulPartitionedCall�encoder/StatefulPartitionedCall�!encoder_1/StatefulPartitionedCall�!encoder_2/StatefulPartitionedCall�-layer_normalization_6/StatefulPartitionedCall�,positional_embedding/StatefulPartitionedCallm
normalization/subSubinput_1normalization_sub_y*
T0*,
_output_shapes
:����������]
normalization/SqrtSqrtnormalization_sqrt_x*
T0*"
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*"
_output_shapes
:�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*,
_output_shapes
:�����������
,positional_embedding/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0positional_embedding_3806positional_embedding_3808positional_embedding_3810*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_positional_embedding_layer_call_and_return_conditional_losses_1890�
encoder/StatefulPartitionedCallStatefulPartitionedCall5positional_embedding/StatefulPartitionedCall:output:0encoder_3813encoder_3815encoder_3817encoder_3819encoder_3821encoder_3823encoder_3825encoder_3827encoder_3829encoder_3831encoder_3833encoder_3835encoder_3837encoder_3839encoder_3841encoder_3843*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_2033�
!encoder_1/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0encoder_1_3847encoder_1_3849encoder_1_3851encoder_1_3853encoder_1_3855encoder_1_3857encoder_1_3859encoder_1_3861encoder_1_3863encoder_1_3865encoder_1_3867encoder_1_3869encoder_1_3871encoder_1_3873encoder_1_3875encoder_1_3877*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_1_layer_call_and_return_conditional_losses_2203�
!encoder_2/StatefulPartitionedCallStatefulPartitionedCall*encoder_1/StatefulPartitionedCall:output:0encoder_2_3881encoder_2_3883encoder_2_3885encoder_2_3887encoder_2_3889encoder_2_3891encoder_2_3893encoder_2_3895encoder_2_3897encoder_2_3899encoder_2_3901encoder_2_3903encoder_2_3905encoder_2_3907encoder_2_3909encoder_2_3911*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_2_layer_call_and_return_conditional_losses_2373�
-layer_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*encoder_2/StatefulPartitionedCall:output:0layer_normalization_6_3915layer_normalization_6_3917*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2430�
dense_7/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_6/StatefulPartitionedCall:output:0dense_7_3920dense_7_3922*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_2466|
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:�����������

Identity_1Identity*encoder_2/StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp ^dense_7/StatefulPartitionedCall ^encoder/StatefulPartitionedCall"^encoder_1/StatefulPartitionedCall"^encoder_2/StatefulPartitionedCall.^layer_normalization_6/StatefulPartitionedCall-^positional_embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2F
!encoder_1/StatefulPartitionedCall!encoder_1/StatefulPartitionedCall2F
!encoder_2/StatefulPartitionedCall!encoder_2/StatefulPartitionedCall2^
-layer_normalization_6/StatefulPartitionedCall-layer_normalization_6/StatefulPartitionedCall2\
,positional_embedding/StatefulPartitionedCall,positional_embedding/StatefulPartitionedCall:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_1:($
"
_output_shapes
::($
"
_output_shapes
:
��
�
C__inference_encoder_2_layer_call_and_return_conditional_losses_2373

inputsJ
;layer_normalization_4_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_4_batchnorm_readvariableop_resource:	�Z
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_2_query_add_readvariableop_resource:	�X
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_2_key_add_readvariableop_resource:	�Z
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_2_value_add_readvariableop_resource:	�e
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:��R
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:	�J
;layer_normalization_5_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_5_batchnorm_readvariableop_resource:	�=
)dense_5_tensordot_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�=
)dense_6_tensordot_readvariableop_resource:
��6
'dense_6_biasadd_readvariableop_resource:	�
identity

identity_1��dense_5/BiasAdd/ReadVariableOp� dense_5/Tensordot/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp� dense_6/Tensordot/ReadVariableOp�.layer_normalization_4/batchnorm/ReadVariableOp�2layer_normalization_4/batchnorm/mul/ReadVariableOp�.layer_normalization_5/batchnorm/ReadVariableOp�2layer_normalization_5/batchnorm/mul/ReadVariableOp�:multi_head_attention_2/attention_output/add/ReadVariableOp�Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp�-multi_head_attention_2/key/add/ReadVariableOp�7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp�/multi_head_attention_2/query/add/ReadVariableOp�9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp�/multi_head_attention_2/value/add/ReadVariableOp�9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_4/moments/meanMeaninputs=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceinputs3layer_normalization_4/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_4/batchnorm/mul_1Mulinputs'layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_2/query/einsum/EinsumEinsum)layer_normalization_4/batchnorm/add_1:z:0Amulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention_2/key/einsum/EinsumEinsum)layer_normalization_4/batchnorm/add_1:z:0?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_2/value/einsum/EinsumEinsum)layer_normalization_4/batchnorm/add_1:z:0Amulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*1
_output_shapes
:������������
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
(multi_head_attention_2/softmax_2/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
)multi_head_attention_2/dropout_9/IdentityIdentity2multi_head_attention_2/softmax_2/Softmax:softmax:0*
T0*1
_output_shapes
:������������
&multi_head_attention_2/einsum_1/EinsumEinsum2multi_head_attention_2/dropout_9/Identity:output:0$multi_head_attention_2/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
dropout_5/IdentityIdentity/multi_head_attention_2/attention_output/add:z:0*
T0*-
_output_shapes
:�����������o
	add_5/addAddV2dropout_5/Identity:output:0inputs*
T0*-
_output_shapes
:�����������~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_5/moments/meanMeanadd_5/add:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_5/moments/SquaredDifferenceSquaredDifferenceadd_5/add:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_5/batchnorm/mul_1Muladd_5/add:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_5/Tensordot/ShapeShape)layer_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/transpose	Transpose)layer_normalization_5/batchnorm/add_1:z:0!dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������W
dense_5/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dense_5/Gelu/mulMuldense_5/Gelu/mul/x:output:0dense_5/BiasAdd:output:0*
T0*-
_output_shapes
:�����������X
dense_5/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dense_5/Gelu/truedivRealDivdense_5/BiasAdd:output:0dense_5/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������i
dense_5/Gelu/ErfErfdense_5/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������W
dense_5/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dense_5/Gelu/addAddV2dense_5/Gelu/add/x:output:0dense_5/Gelu/Erf:y:0*
T0*-
_output_shapes
:�����������}
dense_5/Gelu/mul_1Muldense_5/Gelu/mul:z:0dense_5/Gelu/add:z:0*
T0*-
_output_shapes
:������������
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_6/Tensordot/ShapeShapedense_5/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_6/Tensordot/transpose	Transposedense_5/Gelu/mul_1:z:0!dense_6/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������p
dropout_6/IdentityIdentitydense_6/BiasAdd:output:0*
T0*-
_output_shapes
:�����������v
	add_6/addAddV2add_5/add:z:0dropout_6/Identity:output:0*
T0*-
_output_shapes
:�����������b
IdentityIdentityadd_6/add:z:0^NoOp*
T0*-
_output_shapes
:������������

Identity_1Identity2multi_head_attention_2/softmax_2/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2�
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
(__inference_encoder_1_layer_call_fn_5947

inputs
unknown:	�
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�!
	unknown_7:��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_1_layer_call_and_return_conditional_losses_2998u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
*__inference_transformer_layer_call_fn_4423

inputs
unknown
	unknown_0
	unknown_1:	�
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�
	unknown_5:	�!
	unknown_6:��
	unknown_7:	�!
	unknown_8:��
	unknown_9:	�"

unknown_10:��

unknown_11:	�"

unknown_12:��

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:
��

unknown_17:	�

unknown_18:
��

unknown_19:	�

unknown_20:	�

unknown_21:	�"

unknown_22:��

unknown_23:	�"

unknown_24:��

unknown_25:	�"

unknown_26:��

unknown_27:	�"

unknown_28:��

unknown_29:	�

unknown_30:	�

unknown_31:	�

unknown_32:
��

unknown_33:	�

unknown_34:
��

unknown_35:	�

unknown_36:	�

unknown_37:	�"

unknown_38:��

unknown_39:	�"

unknown_40:��

unknown_41:	�"

unknown_42:��

unknown_43:	�"

unknown_44:��

unknown_45:	�

unknown_46:	�

unknown_47:	�

unknown_48:
��

unknown_49:	�

unknown_50:
��

unknown_51:	�

unknown_52:	�

unknown_53:	�

unknown_54:	�

unknown_55:
identity

identity_1��StatefulPartitionedCall�
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
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:����������:�����������*Y
_read_only_resource_inputs;
97	
 !"#$%&'()*+,-./0123456789*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_transformer_layer_call_and_return_conditional_losses_3556t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
�=
�
E__inference_transformer_layer_call_and_return_conditional_losses_2474

inputs
normalization_sub_y
normalization_sqrt_x,
positional_embedding_1891:	�(
positional_embedding_1893:	�1
positional_embedding_1895:��
encoder_2034:	�
encoder_2036:	�$
encoder_2038:��
encoder_2040:	�$
encoder_2042:��
encoder_2044:	�$
encoder_2046:��
encoder_2048:	�$
encoder_2050:��
encoder_2052:	�
encoder_2054:	�
encoder_2056:	� 
encoder_2058:
��
encoder_2060:	� 
encoder_2062:
��
encoder_2064:	�
encoder_1_2204:	�
encoder_1_2206:	�&
encoder_1_2208:��!
encoder_1_2210:	�&
encoder_1_2212:��!
encoder_1_2214:	�&
encoder_1_2216:��!
encoder_1_2218:	�&
encoder_1_2220:��
encoder_1_2222:	�
encoder_1_2224:	�
encoder_1_2226:	�"
encoder_1_2228:
��
encoder_1_2230:	�"
encoder_1_2232:
��
encoder_1_2234:	�
encoder_2_2374:	�
encoder_2_2376:	�&
encoder_2_2378:��!
encoder_2_2380:	�&
encoder_2_2382:��!
encoder_2_2384:	�&
encoder_2_2386:��!
encoder_2_2388:	�&
encoder_2_2390:��
encoder_2_2392:	�
encoder_2_2394:	�
encoder_2_2396:	�"
encoder_2_2398:
��
encoder_2_2400:	�"
encoder_2_2402:
��
encoder_2_2404:	�)
layer_normalization_6_2431:	�)
layer_normalization_6_2433:	�
dense_7_2467:	�
dense_7_2469:
identity

identity_1��dense_7/StatefulPartitionedCall�encoder/StatefulPartitionedCall�!encoder_1/StatefulPartitionedCall�!encoder_2/StatefulPartitionedCall�-layer_normalization_6/StatefulPartitionedCall�,positional_embedding/StatefulPartitionedCalll
normalization/subSubinputsnormalization_sub_y*
T0*,
_output_shapes
:����������]
normalization/SqrtSqrtnormalization_sqrt_x*
T0*"
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*"
_output_shapes
:�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*,
_output_shapes
:�����������
,positional_embedding/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0positional_embedding_1891positional_embedding_1893positional_embedding_1895*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_positional_embedding_layer_call_and_return_conditional_losses_1890�
encoder/StatefulPartitionedCallStatefulPartitionedCall5positional_embedding/StatefulPartitionedCall:output:0encoder_2034encoder_2036encoder_2038encoder_2040encoder_2042encoder_2044encoder_2046encoder_2048encoder_2050encoder_2052encoder_2054encoder_2056encoder_2058encoder_2060encoder_2062encoder_2064*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_2033�
!encoder_1/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0encoder_1_2204encoder_1_2206encoder_1_2208encoder_1_2210encoder_1_2212encoder_1_2214encoder_1_2216encoder_1_2218encoder_1_2220encoder_1_2222encoder_1_2224encoder_1_2226encoder_1_2228encoder_1_2230encoder_1_2232encoder_1_2234*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_1_layer_call_and_return_conditional_losses_2203�
!encoder_2/StatefulPartitionedCallStatefulPartitionedCall*encoder_1/StatefulPartitionedCall:output:0encoder_2_2374encoder_2_2376encoder_2_2378encoder_2_2380encoder_2_2382encoder_2_2384encoder_2_2386encoder_2_2388encoder_2_2390encoder_2_2392encoder_2_2394encoder_2_2396encoder_2_2398encoder_2_2400encoder_2_2402encoder_2_2404*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_2_layer_call_and_return_conditional_losses_2373�
-layer_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*encoder_2/StatefulPartitionedCall:output:0layer_normalization_6_2431layer_normalization_6_2433*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2430�
dense_7/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_6/StatefulPartitionedCall:output:0dense_7_2467dense_7_2469*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_2466|
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:�����������

Identity_1Identity*encoder_2/StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp ^dense_7/StatefulPartitionedCall ^encoder/StatefulPartitionedCall"^encoder_1/StatefulPartitionedCall"^encoder_2/StatefulPartitionedCall.^layer_normalization_6/StatefulPartitionedCall-^positional_embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2F
!encoder_1/StatefulPartitionedCall!encoder_1/StatefulPartitionedCall2F
!encoder_2/StatefulPartitionedCall!encoder_2/StatefulPartitionedCall2^
-layer_normalization_6/StatefulPartitionedCall-layer_normalization_6/StatefulPartitionedCall2\
,positional_embedding/StatefulPartitionedCall,positional_embedding/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
�
�
*__inference_transformer_layer_call_fn_2593
input_1
unknown
	unknown_0
	unknown_1:	�
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�
	unknown_5:	�!
	unknown_6:��
	unknown_7:	�!
	unknown_8:��
	unknown_9:	�"

unknown_10:��

unknown_11:	�"

unknown_12:��

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:
��

unknown_17:	�

unknown_18:
��

unknown_19:	�

unknown_20:	�

unknown_21:	�"

unknown_22:��

unknown_23:	�"

unknown_24:��

unknown_25:	�"

unknown_26:��

unknown_27:	�"

unknown_28:��

unknown_29:	�

unknown_30:	�

unknown_31:	�

unknown_32:
��

unknown_33:	�

unknown_34:
��

unknown_35:	�

unknown_36:	�

unknown_37:	�"

unknown_38:��

unknown_39:	�"

unknown_40:��

unknown_41:	�"

unknown_42:��

unknown_43:	�"

unknown_44:��

unknown_45:	�

unknown_46:	�

unknown_47:	�

unknown_48:
��

unknown_49:	�

unknown_50:
��

unknown_51:	�

unknown_52:	�

unknown_53:	�

unknown_54:	�

unknown_55:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:����������:�����������*Y
_read_only_resource_inputs;
97	
 !"#$%&'()*+,-./0123456789*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_transformer_layer_call_and_return_conditional_losses_2474t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_1:($
"
_output_shapes
::($
"
_output_shapes
:
�
�
3__inference_positional_embedding_layer_call_fn_5387

inputs
unknown:	�
	unknown_0:	�!
	unknown_1:��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_positional_embedding_layer_call_and_return_conditional_losses_3293u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
&__inference_encoder_layer_call_fn_5563

inputs
unknown:	�
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�!
	unknown_7:��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_2033u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�1
 __inference__traced_restore_6943
file_prefix=
/assignvariableop_transformer_normalization_mean:C
5assignvariableop_1_transformer_normalization_variance:<
2assignvariableop_2_transformer_normalization_count:	 T
<assignvariableop_3_transformer_positional_embedding_position:��I
:assignvariableop_4_transformer_layer_normalization_6_gamma:	�H
9assignvariableop_5_transformer_layer_normalization_6_beta:	�@
-assignvariableop_6_transformer_dense_7_kernel:	�9
+assignvariableop_7_transformer_dense_7_bias:S
@assignvariableop_8_transformer_positional_embedding_dense_kernel:	�M
>assignvariableop_9_transformer_positional_embedding_dense_bias:	�a
Iassignvariableop_10_transformer_encoder_multi_head_attention_query_kernel:��Z
Gassignvariableop_11_transformer_encoder_multi_head_attention_query_bias:	�_
Gassignvariableop_12_transformer_encoder_multi_head_attention_key_kernel:��X
Eassignvariableop_13_transformer_encoder_multi_head_attention_key_bias:	�a
Iassignvariableop_14_transformer_encoder_multi_head_attention_value_kernel:��Z
Gassignvariableop_15_transformer_encoder_multi_head_attention_value_bias:	�l
Tassignvariableop_16_transformer_encoder_multi_head_attention_attention_output_kernel:��a
Rassignvariableop_17_transformer_encoder_multi_head_attention_attention_output_bias:	�J
6assignvariableop_18_transformer_encoder_dense_1_kernel:
��C
4assignvariableop_19_transformer_encoder_dense_1_bias:	�J
6assignvariableop_20_transformer_encoder_dense_2_kernel:
��C
4assignvariableop_21_transformer_encoder_dense_2_bias:	�P
Aassignvariableop_22_transformer_encoder_layer_normalization_gamma:	�O
@assignvariableop_23_transformer_encoder_layer_normalization_beta:	�R
Cassignvariableop_24_transformer_encoder_layer_normalization_1_gamma:	�Q
Bassignvariableop_25_transformer_encoder_layer_normalization_1_beta:	�e
Massignvariableop_26_transformer_encoder_1_multi_head_attention_1_query_kernel:��^
Kassignvariableop_27_transformer_encoder_1_multi_head_attention_1_query_bias:	�c
Kassignvariableop_28_transformer_encoder_1_multi_head_attention_1_key_kernel:��\
Iassignvariableop_29_transformer_encoder_1_multi_head_attention_1_key_bias:	�e
Massignvariableop_30_transformer_encoder_1_multi_head_attention_1_value_kernel:��^
Kassignvariableop_31_transformer_encoder_1_multi_head_attention_1_value_bias:	�p
Xassignvariableop_32_transformer_encoder_1_multi_head_attention_1_attention_output_kernel:��e
Vassignvariableop_33_transformer_encoder_1_multi_head_attention_1_attention_output_bias:	�L
8assignvariableop_34_transformer_encoder_1_dense_3_kernel:
��E
6assignvariableop_35_transformer_encoder_1_dense_3_bias:	�L
8assignvariableop_36_transformer_encoder_1_dense_4_kernel:
��E
6assignvariableop_37_transformer_encoder_1_dense_4_bias:	�T
Eassignvariableop_38_transformer_encoder_1_layer_normalization_2_gamma:	�S
Dassignvariableop_39_transformer_encoder_1_layer_normalization_2_beta:	�T
Eassignvariableop_40_transformer_encoder_1_layer_normalization_3_gamma:	�S
Dassignvariableop_41_transformer_encoder_1_layer_normalization_3_beta:	�e
Massignvariableop_42_transformer_encoder_2_multi_head_attention_2_query_kernel:��^
Kassignvariableop_43_transformer_encoder_2_multi_head_attention_2_query_bias:	�c
Kassignvariableop_44_transformer_encoder_2_multi_head_attention_2_key_kernel:��\
Iassignvariableop_45_transformer_encoder_2_multi_head_attention_2_key_bias:	�e
Massignvariableop_46_transformer_encoder_2_multi_head_attention_2_value_kernel:��^
Kassignvariableop_47_transformer_encoder_2_multi_head_attention_2_value_bias:	�p
Xassignvariableop_48_transformer_encoder_2_multi_head_attention_2_attention_output_kernel:��e
Vassignvariableop_49_transformer_encoder_2_multi_head_attention_2_attention_output_bias:	�L
8assignvariableop_50_transformer_encoder_2_dense_5_kernel:
��E
6assignvariableop_51_transformer_encoder_2_dense_5_bias:	�L
8assignvariableop_52_transformer_encoder_2_dense_6_kernel:
��E
6assignvariableop_53_transformer_encoder_2_dense_6_bias:	�T
Eassignvariableop_54_transformer_encoder_2_layer_normalization_4_gamma:	�S
Dassignvariableop_55_transformer_encoder_2_layer_normalization_4_beta:	�T
Eassignvariableop_56_transformer_encoder_2_layer_normalization_5_gamma:	�S
Dassignvariableop_57_transformer_encoder_2_layer_normalization_5_beta:	�
identity_59��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:;*
dtype0*�
value�B�;B*input_norm/mean/.ATTRIBUTES/VARIABLE_VALUEB.input_norm/variance/.ATTRIBUTES/VARIABLE_VALUEB+input_norm/count/.ATTRIBUTES/VARIABLE_VALUEB,pos_embs/position/.ATTRIBUTES/VARIABLE_VALUEB%norm/gamma/.ATTRIBUTES/VARIABLE_VALUEB$norm/beta/.ATTRIBUTES/VARIABLE_VALUEB-final_layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB+final_layer/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB'variables/48/.ATTRIBUTES/VARIABLE_VALUEB'variables/49/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:;*
dtype0*�
value�B~;B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*I
dtypes?
=2;	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp/assignvariableop_transformer_normalization_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp5assignvariableop_1_transformer_normalization_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp2assignvariableop_2_transformer_normalization_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp<assignvariableop_3_transformer_positional_embedding_positionIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp:assignvariableop_4_transformer_layer_normalization_6_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_transformer_layer_normalization_6_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp-assignvariableop_6_transformer_dense_7_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp+assignvariableop_7_transformer_dense_7_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp@assignvariableop_8_transformer_positional_embedding_dense_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp>assignvariableop_9_transformer_positional_embedding_dense_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpIassignvariableop_10_transformer_encoder_multi_head_attention_query_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpGassignvariableop_11_transformer_encoder_multi_head_attention_query_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpGassignvariableop_12_transformer_encoder_multi_head_attention_key_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpEassignvariableop_13_transformer_encoder_multi_head_attention_key_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpIassignvariableop_14_transformer_encoder_multi_head_attention_value_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpGassignvariableop_15_transformer_encoder_multi_head_attention_value_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpTassignvariableop_16_transformer_encoder_multi_head_attention_attention_output_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpRassignvariableop_17_transformer_encoder_multi_head_attention_attention_output_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp6assignvariableop_18_transformer_encoder_dense_1_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp4assignvariableop_19_transformer_encoder_dense_1_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp6assignvariableop_20_transformer_encoder_dense_2_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp4assignvariableop_21_transformer_encoder_dense_2_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpAassignvariableop_22_transformer_encoder_layer_normalization_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp@assignvariableop_23_transformer_encoder_layer_normalization_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpCassignvariableop_24_transformer_encoder_layer_normalization_1_gammaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpBassignvariableop_25_transformer_encoder_layer_normalization_1_betaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpMassignvariableop_26_transformer_encoder_1_multi_head_attention_1_query_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpKassignvariableop_27_transformer_encoder_1_multi_head_attention_1_query_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpKassignvariableop_28_transformer_encoder_1_multi_head_attention_1_key_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpIassignvariableop_29_transformer_encoder_1_multi_head_attention_1_key_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpMassignvariableop_30_transformer_encoder_1_multi_head_attention_1_value_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpKassignvariableop_31_transformer_encoder_1_multi_head_attention_1_value_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpXassignvariableop_32_transformer_encoder_1_multi_head_attention_1_attention_output_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpVassignvariableop_33_transformer_encoder_1_multi_head_attention_1_attention_output_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp8assignvariableop_34_transformer_encoder_1_dense_3_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp6assignvariableop_35_transformer_encoder_1_dense_3_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp8assignvariableop_36_transformer_encoder_1_dense_4_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp6assignvariableop_37_transformer_encoder_1_dense_4_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpEassignvariableop_38_transformer_encoder_1_layer_normalization_2_gammaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpDassignvariableop_39_transformer_encoder_1_layer_normalization_2_betaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpEassignvariableop_40_transformer_encoder_1_layer_normalization_3_gammaIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpDassignvariableop_41_transformer_encoder_1_layer_normalization_3_betaIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpMassignvariableop_42_transformer_encoder_2_multi_head_attention_2_query_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpKassignvariableop_43_transformer_encoder_2_multi_head_attention_2_query_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpKassignvariableop_44_transformer_encoder_2_multi_head_attention_2_key_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpIassignvariableop_45_transformer_encoder_2_multi_head_attention_2_key_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpMassignvariableop_46_transformer_encoder_2_multi_head_attention_2_value_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpKassignvariableop_47_transformer_encoder_2_multi_head_attention_2_value_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpXassignvariableop_48_transformer_encoder_2_multi_head_attention_2_attention_output_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpVassignvariableop_49_transformer_encoder_2_multi_head_attention_2_attention_output_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp8assignvariableop_50_transformer_encoder_2_dense_5_kernelIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp6assignvariableop_51_transformer_encoder_2_dense_5_biasIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp8assignvariableop_52_transformer_encoder_2_dense_6_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp6assignvariableop_53_transformer_encoder_2_dense_6_biasIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpEassignvariableop_54_transformer_encoder_2_layer_normalization_4_gammaIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpDassignvariableop_55_transformer_encoder_2_layer_normalization_4_betaIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOpEassignvariableop_56_transformer_encoder_2_layer_normalization_5_gammaIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpDassignvariableop_57_transformer_encoder_2_layer_normalization_5_betaIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_58Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_59IdentityIdentity_58:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_59Identity_59:output:0*�
_input_shapesx
v: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
*__inference_transformer_layer_call_fn_3796
input_1
unknown
	unknown_0
	unknown_1:	�
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�
	unknown_5:	�!
	unknown_6:��
	unknown_7:	�!
	unknown_8:��
	unknown_9:	�"

unknown_10:��

unknown_11:	�"

unknown_12:��

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:
��

unknown_17:	�

unknown_18:
��

unknown_19:	�

unknown_20:	�

unknown_21:	�"

unknown_22:��

unknown_23:	�"

unknown_24:��

unknown_25:	�"

unknown_26:��

unknown_27:	�"

unknown_28:��

unknown_29:	�

unknown_30:	�

unknown_31:	�

unknown_32:
��

unknown_33:	�

unknown_34:
��

unknown_35:	�

unknown_36:	�

unknown_37:	�"

unknown_38:��

unknown_39:	�"

unknown_40:��

unknown_41:	�"

unknown_42:��

unknown_43:	�"

unknown_44:��

unknown_45:	�

unknown_46:	�

unknown_47:	�

unknown_48:
��

unknown_49:	�

unknown_50:
��

unknown_51:	�

unknown_52:	�

unknown_53:	�

unknown_54:	�

unknown_55:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:����������:�����������*Y
_read_only_resource_inputs;
97	
 !"#$%&'()*+,-./0123456789*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_transformer_layer_call_and_return_conditional_losses_3556t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_1:($
"
_output_shapes
::($
"
_output_shapes
:
��
�
C__inference_encoder_1_layer_call_and_return_conditional_losses_2998

inputsJ
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_2_batchnorm_readvariableop_resource:	�Z
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_1_query_add_readvariableop_resource:	�X
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_1_key_add_readvariableop_resource:	�Z
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_1_value_add_readvariableop_resource:	�e
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:��R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	�J
;layer_normalization_3_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_3_batchnorm_readvariableop_resource:	�=
)dense_3_tensordot_readvariableop_resource:
��6
'dense_3_biasadd_readvariableop_resource:	�=
)dense_4_tensordot_readvariableop_resource:
��6
'dense_4_biasadd_readvariableop_resource:	�
identity

identity_1��dense_3/BiasAdd/ReadVariableOp� dense_3/Tensordot/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�.layer_normalization_2/batchnorm/ReadVariableOp�2layer_normalization_2/batchnorm/mul/ReadVariableOp�.layer_normalization_3/batchnorm/ReadVariableOp�2layer_normalization_3/batchnorm/mul/ReadVariableOp�:multi_head_attention_1/attention_output/add/ReadVariableOp�Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�-multi_head_attention_1/key/add/ReadVariableOp�7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�/multi_head_attention_1/query/add/ReadVariableOp�9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�/multi_head_attention_1/value/add/ReadVariableOp�9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_2/moments/meanMeaninputs=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceinputs3layer_normalization_2/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_2/batchnorm/mul_1Mulinputs'layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_1/query/einsum/EinsumEinsum)layer_normalization_2/batchnorm/add_1:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention_1/key/einsum/EinsumEinsum)layer_normalization_2/batchnorm/add_1:z:0?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_1/value/einsum/EinsumEinsum)layer_normalization_2/batchnorm/add_1:z:0Amulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*1
_output_shapes
:������������
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
(multi_head_attention_1/softmax_1/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
&multi_head_attention_1/einsum_1/EinsumEinsum2multi_head_attention_1/softmax_1/Softmax:softmax:0$multi_head_attention_1/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
	add_3/addAddV2/multi_head_attention_1/attention_output/add:z:0inputs*
T0*-
_output_shapes
:�����������~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_3/moments/meanMeanadd_3/add:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_3/moments/SquaredDifferenceSquaredDifferenceadd_3/add:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_3/batchnorm/mul_1Muladd_3/add:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_3/Tensordot/ShapeShape)layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_3/Tensordot/transpose	Transpose)layer_normalization_3/batchnorm/add_1:z:0!dense_3/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������W
dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dense_3/Gelu/mulMuldense_3/Gelu/mul/x:output:0dense_3/BiasAdd:output:0*
T0*-
_output_shapes
:�����������X
dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dense_3/Gelu/truedivRealDivdense_3/BiasAdd:output:0dense_3/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������i
dense_3/Gelu/ErfErfdense_3/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������W
dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dense_3/Gelu/addAddV2dense_3/Gelu/add/x:output:0dense_3/Gelu/Erf:y:0*
T0*-
_output_shapes
:�����������}
dense_3/Gelu/mul_1Muldense_3/Gelu/mul:z:0dense_3/Gelu/add:z:0*
T0*-
_output_shapes
:������������
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_4/Tensordot/ShapeShapedense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/transpose	Transposedense_3/Gelu/mul_1:z:0!dense_4/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������s
	add_4/addAddV2add_3/add:z:0dense_4/BiasAdd:output:0*
T0*-
_output_shapes
:�����������b
IdentityIdentityadd_4/add:z:0^NoOp*
T0*-
_output_shapes
:������������

Identity_1Identity2multi_head_attention_1/softmax_1/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2�
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
A__inference_encoder_layer_call_and_return_conditional_losses_5869

inputsH
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�X
@multi_head_attention_query_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_query_add_readvariableop_resource:	�V
>multi_head_attention_key_einsum_einsum_readvariableop_resource:��G
4multi_head_attention_key_add_readvariableop_resource:	�X
@multi_head_attention_value_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_value_add_readvariableop_resource:	�c
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:��P
Amulti_head_attention_attention_output_add_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�=
)dense_1_tensordot_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�=
)dense_2_tensordot_readvariableop_resource:
��6
'dense_2_biasadd_readvariableop_resource:	�
identity

identity_1��dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOp|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeaninputs;layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:�����������
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceinputs1layer_normalization/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
#layer_normalization/batchnorm/mul_1Mulinputs%layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/query/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
&multi_head_attention/key/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/value/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*1
_output_shapes
:������������
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/softmax/Softmax:softmax:0"multi_head_attention/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
	add_1/addAddV2-multi_head_attention/attention_output/add:z:0inputs*
T0*-
_output_shapes
:�����������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMeanadd_1/add:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceadd_1/add:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_1/batchnorm/mul_1Muladd_1/add:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_1/Tensordot/ShapeShape)layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/transpose	Transpose)layer_normalization_1/batchnorm/add_1:z:0!dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������W
dense_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dense_1/Gelu/mulMuldense_1/Gelu/mul/x:output:0dense_1/BiasAdd:output:0*
T0*-
_output_shapes
:�����������X
dense_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dense_1/Gelu/truedivRealDivdense_1/BiasAdd:output:0dense_1/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������i
dense_1/Gelu/ErfErfdense_1/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������W
dense_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dense_1/Gelu/addAddV2dense_1/Gelu/add/x:output:0dense_1/Gelu/Erf:y:0*
T0*-
_output_shapes
:�����������}
dense_1/Gelu/mul_1Muldense_1/Gelu/mul:z:0dense_1/Gelu/add:z:0*
T0*-
_output_shapes
:������������
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_2/Tensordot/ShapeShapedense_1/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/transpose	Transposedense_1/Gelu/mul_1:z:0!dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������s
	add_2/addAddV2add_1/add:z:0dense_2/BiasAdd:output:0*
T0*-
_output_shapes
:�����������b
IdentityIdentityadd_2/add:z:0^NoOp*
T0*-
_output_shapes
:������������

Identity_1Identity.multi_head_attention/softmax/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
*__inference_transformer_layer_call_fn_4302

inputs
unknown
	unknown_0
	unknown_1:	�
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�
	unknown_5:	�!
	unknown_6:��
	unknown_7:	�!
	unknown_8:��
	unknown_9:	�"

unknown_10:��

unknown_11:	�"

unknown_12:��

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:
��

unknown_17:	�

unknown_18:
��

unknown_19:	�

unknown_20:	�

unknown_21:	�"

unknown_22:��

unknown_23:	�"

unknown_24:��

unknown_25:	�"

unknown_26:��

unknown_27:	�"

unknown_28:��

unknown_29:	�

unknown_30:	�

unknown_31:	�

unknown_32:
��

unknown_33:	�

unknown_34:
��

unknown_35:	�

unknown_36:	�

unknown_37:	�"

unknown_38:��

unknown_39:	�"

unknown_40:��

unknown_41:	�"

unknown_42:��

unknown_43:	�"

unknown_44:��

unknown_45:	�

unknown_46:	�

unknown_47:	�

unknown_48:
��

unknown_49:	�

unknown_50:
��

unknown_51:	�

unknown_52:	�

unknown_53:	�

unknown_54:	�

unknown_55:
identity

identity_1��StatefulPartitionedCall�
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
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:����������:�����������*Y
_read_only_resource_inputs;
97	
 !"#$%&'()*+,-./0123456789*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_transformer_layer_call_and_return_conditional_losses_2474t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
�
�
3__inference_positional_embedding_layer_call_fn_5376

inputs
unknown:	�
	unknown_0:	�!
	unknown_1:��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_positional_embedding_layer_call_and_return_conditional_losses_1890u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
A__inference_encoder_layer_call_and_return_conditional_losses_5737

inputsH
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�X
@multi_head_attention_query_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_query_add_readvariableop_resource:	�V
>multi_head_attention_key_einsum_einsum_readvariableop_resource:��G
4multi_head_attention_key_add_readvariableop_resource:	�X
@multi_head_attention_value_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_value_add_readvariableop_resource:	�c
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:��P
Amulti_head_attention_attention_output_add_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�=
)dense_1_tensordot_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�=
)dense_2_tensordot_readvariableop_resource:
��6
'dense_2_biasadd_readvariableop_resource:	�
identity

identity_1��dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOp|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeaninputs;layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:�����������
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceinputs1layer_normalization/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
#layer_normalization/batchnorm/mul_1Mulinputs%layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/query/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
&multi_head_attention/key/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/value/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*1
_output_shapes
:������������
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
'multi_head_attention/dropout_7/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:������������
$multi_head_attention/einsum_1/EinsumEinsum0multi_head_attention/dropout_7/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
dropout_1/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*-
_output_shapes
:�����������o
	add_1/addAddV2dropout_1/Identity:output:0inputs*
T0*-
_output_shapes
:�����������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMeanadd_1/add:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceadd_1/add:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_1/batchnorm/mul_1Muladd_1/add:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_1/Tensordot/ShapeShape)layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/transpose	Transpose)layer_normalization_1/batchnorm/add_1:z:0!dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������W
dense_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dense_1/Gelu/mulMuldense_1/Gelu/mul/x:output:0dense_1/BiasAdd:output:0*
T0*-
_output_shapes
:�����������X
dense_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dense_1/Gelu/truedivRealDivdense_1/BiasAdd:output:0dense_1/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������i
dense_1/Gelu/ErfErfdense_1/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������W
dense_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dense_1/Gelu/addAddV2dense_1/Gelu/add/x:output:0dense_1/Gelu/Erf:y:0*
T0*-
_output_shapes
:�����������}
dense_1/Gelu/mul_1Muldense_1/Gelu/mul:z:0dense_1/Gelu/add:z:0*
T0*-
_output_shapes
:������������
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_2/Tensordot/ShapeShapedense_1/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/transpose	Transposedense_1/Gelu/mul_1:z:0!dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������p
dropout_2/IdentityIdentitydense_2/BiasAdd:output:0*
T0*-
_output_shapes
:�����������v
	add_2/addAddV2add_1/add:z:0dropout_2/Identity:output:0*
T0*-
_output_shapes
:�����������b
IdentityIdentityadd_2/add:z:0^NoOp*
T0*-
_output_shapes
:������������

Identity_1Identity.multi_head_attention/softmax/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
(__inference_encoder_2_layer_call_fn_6253

inputs
unknown:	�
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�!
	unknown_7:��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_2_layer_call_and_return_conditional_losses_2373u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2430

inputs4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:�����������
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:�����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:����������
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������i
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:�����������x
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*-
_output_shapes
:�����������w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*-
_output_shapes
:�����������x
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:�����������h
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*-
_output_shapes
:������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
&__inference_encoder_layer_call_fn_5602

inputs
unknown:	�
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�!
	unknown_7:��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_3209u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
"__inference_signature_wrapper_4181
input_1
unknown
	unknown_0
	unknown_1:	�
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�
	unknown_5:	�!
	unknown_6:��
	unknown_7:	�!
	unknown_8:��
	unknown_9:	�"

unknown_10:��

unknown_11:	�"

unknown_12:��

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:
��

unknown_17:	�

unknown_18:
��

unknown_19:	�

unknown_20:	�

unknown_21:	�"

unknown_22:��

unknown_23:	�"

unknown_24:��

unknown_25:	�"

unknown_26:��

unknown_27:	�"

unknown_28:��

unknown_29:	�

unknown_30:	�

unknown_31:	�

unknown_32:
��

unknown_33:	�

unknown_34:
��

unknown_35:	�

unknown_36:	�

unknown_37:	�"

unknown_38:��

unknown_39:	�"

unknown_40:��

unknown_41:	�"

unknown_42:��

unknown_43:	�"

unknown_44:��

unknown_45:	�

unknown_46:	�

unknown_47:	�

unknown_48:
��

unknown_49:	�

unknown_50:
��

unknown_51:	�

unknown_52:	�

unknown_53:	�

unknown_54:	�

unknown_55:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:����������:�����������*Y
_read_only_resource_inputs;
97	
 !"#$%&'()*+,-./0123456789*0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__wrapped_model_1842t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_1:($
"
_output_shapes
::($
"
_output_shapes
:
�
�
A__inference_encoder_layer_call_and_return_conditional_losses_3209

inputsH
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�X
@multi_head_attention_query_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_query_add_readvariableop_resource:	�V
>multi_head_attention_key_einsum_einsum_readvariableop_resource:��G
4multi_head_attention_key_add_readvariableop_resource:	�X
@multi_head_attention_value_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_value_add_readvariableop_resource:	�c
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:��P
Amulti_head_attention_attention_output_add_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�=
)dense_1_tensordot_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�=
)dense_2_tensordot_readvariableop_resource:
��6
'dense_2_biasadd_readvariableop_resource:	�
identity

identity_1��dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOp|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeaninputs;layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:�����������
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceinputs1layer_normalization/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
#layer_normalization/batchnorm/mul_1Mulinputs%layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/query/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
&multi_head_attention/key/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/value/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*1
_output_shapes
:������������
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/softmax/Softmax:softmax:0"multi_head_attention/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
	add_1/addAddV2-multi_head_attention/attention_output/add:z:0inputs*
T0*-
_output_shapes
:�����������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMeanadd_1/add:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceadd_1/add:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_1/batchnorm/mul_1Muladd_1/add:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_1/Tensordot/ShapeShape)layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/transpose	Transpose)layer_normalization_1/batchnorm/add_1:z:0!dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������W
dense_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dense_1/Gelu/mulMuldense_1/Gelu/mul/x:output:0dense_1/BiasAdd:output:0*
T0*-
_output_shapes
:�����������X
dense_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dense_1/Gelu/truedivRealDivdense_1/BiasAdd:output:0dense_1/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������i
dense_1/Gelu/ErfErfdense_1/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������W
dense_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dense_1/Gelu/addAddV2dense_1/Gelu/add/x:output:0dense_1/Gelu/Erf:y:0*
T0*-
_output_shapes
:�����������}
dense_1/Gelu/mul_1Muldense_1/Gelu/mul:z:0dense_1/Gelu/add:z:0*
T0*-
_output_shapes
:������������
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_2/Tensordot/ShapeShapedense_1/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/transpose	Transposedense_1/Gelu/mul_1:z:0!dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������s
	add_2/addAddV2add_1/add:z:0dense_2/BiasAdd:output:0*
T0*-
_output_shapes
:�����������b
IdentityIdentityadd_2/add:z:0^NoOp*
T0*-
_output_shapes
:������������

Identity_1Identity.multi_head_attention/softmax/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
C__inference_encoder_2_layer_call_and_return_conditional_losses_6427

inputsJ
;layer_normalization_4_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_4_batchnorm_readvariableop_resource:	�Z
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_2_query_add_readvariableop_resource:	�X
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_2_key_add_readvariableop_resource:	�Z
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_2_value_add_readvariableop_resource:	�e
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:��R
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:	�J
;layer_normalization_5_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_5_batchnorm_readvariableop_resource:	�=
)dense_5_tensordot_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�=
)dense_6_tensordot_readvariableop_resource:
��6
'dense_6_biasadd_readvariableop_resource:	�
identity

identity_1��dense_5/BiasAdd/ReadVariableOp� dense_5/Tensordot/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp� dense_6/Tensordot/ReadVariableOp�.layer_normalization_4/batchnorm/ReadVariableOp�2layer_normalization_4/batchnorm/mul/ReadVariableOp�.layer_normalization_5/batchnorm/ReadVariableOp�2layer_normalization_5/batchnorm/mul/ReadVariableOp�:multi_head_attention_2/attention_output/add/ReadVariableOp�Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp�-multi_head_attention_2/key/add/ReadVariableOp�7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp�/multi_head_attention_2/query/add/ReadVariableOp�9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp�/multi_head_attention_2/value/add/ReadVariableOp�9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_4/moments/meanMeaninputs=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceinputs3layer_normalization_4/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_4/batchnorm/mul_1Mulinputs'layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_2/query/einsum/EinsumEinsum)layer_normalization_4/batchnorm/add_1:z:0Amulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention_2/key/einsum/EinsumEinsum)layer_normalization_4/batchnorm/add_1:z:0?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_2/value/einsum/EinsumEinsum)layer_normalization_4/batchnorm/add_1:z:0Amulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*1
_output_shapes
:������������
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
(multi_head_attention_2/softmax_2/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
)multi_head_attention_2/dropout_9/IdentityIdentity2multi_head_attention_2/softmax_2/Softmax:softmax:0*
T0*1
_output_shapes
:������������
&multi_head_attention_2/einsum_1/EinsumEinsum2multi_head_attention_2/dropout_9/Identity:output:0$multi_head_attention_2/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
dropout_5/IdentityIdentity/multi_head_attention_2/attention_output/add:z:0*
T0*-
_output_shapes
:�����������o
	add_5/addAddV2dropout_5/Identity:output:0inputs*
T0*-
_output_shapes
:�����������~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_5/moments/meanMeanadd_5/add:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_5/moments/SquaredDifferenceSquaredDifferenceadd_5/add:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_5/batchnorm/mul_1Muladd_5/add:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_5/Tensordot/ShapeShape)layer_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/transpose	Transpose)layer_normalization_5/batchnorm/add_1:z:0!dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������W
dense_5/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dense_5/Gelu/mulMuldense_5/Gelu/mul/x:output:0dense_5/BiasAdd:output:0*
T0*-
_output_shapes
:�����������X
dense_5/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dense_5/Gelu/truedivRealDivdense_5/BiasAdd:output:0dense_5/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������i
dense_5/Gelu/ErfErfdense_5/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������W
dense_5/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dense_5/Gelu/addAddV2dense_5/Gelu/add/x:output:0dense_5/Gelu/Erf:y:0*
T0*-
_output_shapes
:�����������}
dense_5/Gelu/mul_1Muldense_5/Gelu/mul:z:0dense_5/Gelu/add:z:0*
T0*-
_output_shapes
:������������
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_6/Tensordot/ShapeShapedense_5/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_6/Tensordot/transpose	Transposedense_5/Gelu/mul_1:z:0!dense_6/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������p
dropout_6/IdentityIdentitydense_6/BiasAdd:output:0*
T0*-
_output_shapes
:�����������v
	add_6/addAddV2add_5/add:z:0dropout_6/Identity:output:0*
T0*-
_output_shapes
:�����������b
IdentityIdentityadd_6/add:z:0^NoOp*
T0*-
_output_shapes
:������������

Identity_1Identity2multi_head_attention_2/softmax_2/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2�
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�=
E__inference_transformer_layer_call_and_return_conditional_losses_4899

inputs
normalization_sub_y
normalization_sqrt_xO
<positional_embedding_dense_tensordot_readvariableop_resource:	�I
:positional_embedding_dense_biasadd_readvariableop_resource:	�L
4positional_embedding_add_add_readvariableop_resource:��P
Aencoder_layer_normalization_batchnorm_mul_readvariableop_resource:	�L
=encoder_layer_normalization_batchnorm_readvariableop_resource:	�`
Hencoder_multi_head_attention_query_einsum_einsum_readvariableop_resource:��Q
>encoder_multi_head_attention_query_add_readvariableop_resource:	�^
Fencoder_multi_head_attention_key_einsum_einsum_readvariableop_resource:��O
<encoder_multi_head_attention_key_add_readvariableop_resource:	�`
Hencoder_multi_head_attention_value_einsum_einsum_readvariableop_resource:��Q
>encoder_multi_head_attention_value_add_readvariableop_resource:	�k
Sencoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:��X
Iencoder_multi_head_attention_attention_output_add_readvariableop_resource:	�R
Cencoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:	�N
?encoder_layer_normalization_1_batchnorm_readvariableop_resource:	�E
1encoder_dense_1_tensordot_readvariableop_resource:
��>
/encoder_dense_1_biasadd_readvariableop_resource:	�E
1encoder_dense_2_tensordot_readvariableop_resource:
��>
/encoder_dense_2_biasadd_readvariableop_resource:	�T
Eencoder_1_layer_normalization_2_batchnorm_mul_readvariableop_resource:	�P
Aencoder_1_layer_normalization_2_batchnorm_readvariableop_resource:	�d
Lencoder_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:��U
Bencoder_1_multi_head_attention_1_query_add_readvariableop_resource:	�b
Jencoder_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:��S
@encoder_1_multi_head_attention_1_key_add_readvariableop_resource:	�d
Lencoder_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:��U
Bencoder_1_multi_head_attention_1_value_add_readvariableop_resource:	�o
Wencoder_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:��\
Mencoder_1_multi_head_attention_1_attention_output_add_readvariableop_resource:	�T
Eencoder_1_layer_normalization_3_batchnorm_mul_readvariableop_resource:	�P
Aencoder_1_layer_normalization_3_batchnorm_readvariableop_resource:	�G
3encoder_1_dense_3_tensordot_readvariableop_resource:
��@
1encoder_1_dense_3_biasadd_readvariableop_resource:	�G
3encoder_1_dense_4_tensordot_readvariableop_resource:
��@
1encoder_1_dense_4_biasadd_readvariableop_resource:	�T
Eencoder_2_layer_normalization_4_batchnorm_mul_readvariableop_resource:	�P
Aencoder_2_layer_normalization_4_batchnorm_readvariableop_resource:	�d
Lencoder_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource:��U
Bencoder_2_multi_head_attention_2_query_add_readvariableop_resource:	�b
Jencoder_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource:��S
@encoder_2_multi_head_attention_2_key_add_readvariableop_resource:	�d
Lencoder_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource:��U
Bencoder_2_multi_head_attention_2_value_add_readvariableop_resource:	�o
Wencoder_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:��\
Mencoder_2_multi_head_attention_2_attention_output_add_readvariableop_resource:	�T
Eencoder_2_layer_normalization_5_batchnorm_mul_readvariableop_resource:	�P
Aencoder_2_layer_normalization_5_batchnorm_readvariableop_resource:	�G
3encoder_2_dense_5_tensordot_readvariableop_resource:
��@
1encoder_2_dense_5_biasadd_readvariableop_resource:	�G
3encoder_2_dense_6_tensordot_readvariableop_resource:
��@
1encoder_2_dense_6_biasadd_readvariableop_resource:	�J
;layer_normalization_6_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_6_batchnorm_readvariableop_resource:	�<
)dense_7_tensordot_readvariableop_resource:	�5
'dense_7_biasadd_readvariableop_resource:
identity

identity_1��dense_7/BiasAdd/ReadVariableOp� dense_7/Tensordot/ReadVariableOp�&encoder/dense_1/BiasAdd/ReadVariableOp�(encoder/dense_1/Tensordot/ReadVariableOp�&encoder/dense_2/BiasAdd/ReadVariableOp�(encoder/dense_2/Tensordot/ReadVariableOp�4encoder/layer_normalization/batchnorm/ReadVariableOp�8encoder/layer_normalization/batchnorm/mul/ReadVariableOp�6encoder/layer_normalization_1/batchnorm/ReadVariableOp�:encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp�@encoder/multi_head_attention/attention_output/add/ReadVariableOp�Jencoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�3encoder/multi_head_attention/key/add/ReadVariableOp�=encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp�5encoder/multi_head_attention/query/add/ReadVariableOp�?encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp�5encoder/multi_head_attention/value/add/ReadVariableOp�?encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp�(encoder_1/dense_3/BiasAdd/ReadVariableOp�*encoder_1/dense_3/Tensordot/ReadVariableOp�(encoder_1/dense_4/BiasAdd/ReadVariableOp�*encoder_1/dense_4/Tensordot/ReadVariableOp�8encoder_1/layer_normalization_2/batchnorm/ReadVariableOp�<encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp�8encoder_1/layer_normalization_3/batchnorm/ReadVariableOp�<encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp�Dencoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp�Nencoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�7encoder_1/multi_head_attention_1/key/add/ReadVariableOp�Aencoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�9encoder_1/multi_head_attention_1/query/add/ReadVariableOp�Cencoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�9encoder_1/multi_head_attention_1/value/add/ReadVariableOp�Cencoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp�(encoder_2/dense_5/BiasAdd/ReadVariableOp�*encoder_2/dense_5/Tensordot/ReadVariableOp�(encoder_2/dense_6/BiasAdd/ReadVariableOp�*encoder_2/dense_6/Tensordot/ReadVariableOp�8encoder_2/layer_normalization_4/batchnorm/ReadVariableOp�<encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp�8encoder_2/layer_normalization_5/batchnorm/ReadVariableOp�<encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp�Dencoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp�Nencoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp�7encoder_2/multi_head_attention_2/key/add/ReadVariableOp�Aencoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp�9encoder_2/multi_head_attention_2/query/add/ReadVariableOp�Cencoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp�9encoder_2/multi_head_attention_2/value/add/ReadVariableOp�Cencoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp�.layer_normalization_6/batchnorm/ReadVariableOp�2layer_normalization_6/batchnorm/mul/ReadVariableOp�+positional_embedding/add/add/ReadVariableOp�1positional_embedding/dense/BiasAdd/ReadVariableOp�3positional_embedding/dense/Tensordot/ReadVariableOpl
normalization/subSubinputsnormalization_sub_y*
T0*,
_output_shapes
:����������]
normalization/SqrtSqrtnormalization_sqrt_x*
T0*"
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*"
_output_shapes
:�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*,
_output_shapes
:�����������
3positional_embedding/dense/Tensordot/ReadVariableOpReadVariableOp<positional_embedding_dense_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0s
)positional_embedding/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:z
)positional_embedding/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       s
*positional_embedding/dense/Tensordot/ShapeShapenormalization/truediv:z:0*
T0*
_output_shapes
:t
2positional_embedding/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-positional_embedding/dense/Tensordot/GatherV2GatherV23positional_embedding/dense/Tensordot/Shape:output:02positional_embedding/dense/Tensordot/free:output:0;positional_embedding/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
4positional_embedding/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
/positional_embedding/dense/Tensordot/GatherV2_1GatherV23positional_embedding/dense/Tensordot/Shape:output:02positional_embedding/dense/Tensordot/axes:output:0=positional_embedding/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
*positional_embedding/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
)positional_embedding/dense/Tensordot/ProdProd6positional_embedding/dense/Tensordot/GatherV2:output:03positional_embedding/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: v
,positional_embedding/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
+positional_embedding/dense/Tensordot/Prod_1Prod8positional_embedding/dense/Tensordot/GatherV2_1:output:05positional_embedding/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: r
0positional_embedding/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
+positional_embedding/dense/Tensordot/concatConcatV22positional_embedding/dense/Tensordot/free:output:02positional_embedding/dense/Tensordot/axes:output:09positional_embedding/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
*positional_embedding/dense/Tensordot/stackPack2positional_embedding/dense/Tensordot/Prod:output:04positional_embedding/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
.positional_embedding/dense/Tensordot/transpose	Transposenormalization/truediv:z:04positional_embedding/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
,positional_embedding/dense/Tensordot/ReshapeReshape2positional_embedding/dense/Tensordot/transpose:y:03positional_embedding/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
+positional_embedding/dense/Tensordot/MatMulMatMul5positional_embedding/dense/Tensordot/Reshape:output:0;positional_embedding/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
,positional_embedding/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�t
2positional_embedding/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-positional_embedding/dense/Tensordot/concat_1ConcatV26positional_embedding/dense/Tensordot/GatherV2:output:05positional_embedding/dense/Tensordot/Const_2:output:0;positional_embedding/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
$positional_embedding/dense/TensordotReshape5positional_embedding/dense/Tensordot/MatMul:product:06positional_embedding/dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
1positional_embedding/dense/BiasAdd/ReadVariableOpReadVariableOp:positional_embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"positional_embedding/dense/BiasAddBiasAdd-positional_embedding/dense/Tensordot:output:09positional_embedding/dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
+positional_embedding/add/add/ReadVariableOpReadVariableOp4positional_embedding_add_add_readvariableop_resource*$
_output_shapes
:��*
dtype0�
positional_embedding/add/addAddV2+positional_embedding/dense/BiasAdd:output:03positional_embedding/add/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%positional_embedding/dropout/IdentityIdentity positional_embedding/add/add:z:0*
T0*-
_output_shapes
:������������
:encoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(encoder/layer_normalization/moments/meanMean.positional_embedding/dropout/Identity:output:0Cencoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
0encoder/layer_normalization/moments/StopGradientStopGradient1encoder/layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:�����������
5encoder/layer_normalization/moments/SquaredDifferenceSquaredDifference.positional_embedding/dropout/Identity:output:09encoder/layer_normalization/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
>encoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,encoder/layer_normalization/moments/varianceMean9encoder/layer_normalization/moments/SquaredDifference:z:0Gencoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(p
+encoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
)encoder/layer_normalization/batchnorm/addAddV25encoder/layer_normalization/moments/variance:output:04encoder/layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
+encoder/layer_normalization/batchnorm/RsqrtRsqrt-encoder/layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
8encoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpAencoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)encoder/layer_normalization/batchnorm/mulMul/encoder/layer_normalization/batchnorm/Rsqrt:y:0@encoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
+encoder/layer_normalization/batchnorm/mul_1Mul.positional_embedding/dropout/Identity:output:0-encoder/layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
+encoder/layer_normalization/batchnorm/mul_2Mul1encoder/layer_normalization/moments/mean:output:0-encoder/layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
4encoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOp=encoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)encoder/layer_normalization/batchnorm/subSub<encoder/layer_normalization/batchnorm/ReadVariableOp:value:0/encoder/layer_normalization/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
+encoder/layer_normalization/batchnorm/add_1AddV2/encoder/layer_normalization/batchnorm/mul_1:z:0-encoder/layer_normalization/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
?encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpHencoder_multi_head_attention_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
0encoder/multi_head_attention/query/einsum/EinsumEinsum/encoder/layer_normalization/batchnorm/add_1:z:0Gencoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
5encoder/multi_head_attention/query/add/ReadVariableOpReadVariableOp>encoder_multi_head_attention_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&encoder/multi_head_attention/query/addAddV29encoder/multi_head_attention/query/einsum/Einsum:output:0=encoder/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
=encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpFencoder_multi_head_attention_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
.encoder/multi_head_attention/key/einsum/EinsumEinsum/encoder/layer_normalization/batchnorm/add_1:z:0Eencoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
3encoder/multi_head_attention/key/add/ReadVariableOpReadVariableOp<encoder_multi_head_attention_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
$encoder/multi_head_attention/key/addAddV27encoder/multi_head_attention/key/einsum/Einsum:output:0;encoder/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
?encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpHencoder_multi_head_attention_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
0encoder/multi_head_attention/value/einsum/EinsumEinsum/encoder/layer_normalization/batchnorm/add_1:z:0Gencoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
5encoder/multi_head_attention/value/add/ReadVariableOpReadVariableOp>encoder_multi_head_attention_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&encoder/multi_head_attention/value/addAddV29encoder/multi_head_attention/value/einsum/Einsum:output:0=encoder/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������g
"encoder/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
 encoder/multi_head_attention/MulMul*encoder/multi_head_attention/query/add:z:0+encoder/multi_head_attention/Mul/y:output:0*
T0*1
_output_shapes
:������������
*encoder/multi_head_attention/einsum/EinsumEinsum(encoder/multi_head_attention/key/add:z:0$encoder/multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
,encoder/multi_head_attention/softmax/SoftmaxSoftmax3encoder/multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
/encoder/multi_head_attention/dropout_7/IdentityIdentity6encoder/multi_head_attention/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:������������
,encoder/multi_head_attention/einsum_1/EinsumEinsum8encoder/multi_head_attention/dropout_7/Identity:output:0*encoder/multi_head_attention/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Jencoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSencoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
;encoder/multi_head_attention/attention_output/einsum/EinsumEinsum5encoder/multi_head_attention/einsum_1/Einsum:output:0Rencoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
@encoder/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpIencoder_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
1encoder/multi_head_attention/attention_output/addAddV2Dencoder/multi_head_attention/attention_output/einsum/Einsum:output:0Hencoder/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
encoder/dropout_1/IdentityIdentity5encoder/multi_head_attention/attention_output/add:z:0*
T0*-
_output_shapes
:������������
encoder/add_1/addAddV2#encoder/dropout_1/Identity:output:0.positional_embedding/dropout/Identity:output:0*
T0*-
_output_shapes
:������������
<encoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
*encoder/layer_normalization_1/moments/meanMeanencoder/add_1/add:z:0Eencoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
2encoder/layer_normalization_1/moments/StopGradientStopGradient3encoder/layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:�����������
7encoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceencoder/add_1/add:z:0;encoder/layer_normalization_1/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
@encoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
.encoder/layer_normalization_1/moments/varianceMean;encoder/layer_normalization_1/moments/SquaredDifference:z:0Iencoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(r
-encoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
+encoder/layer_normalization_1/batchnorm/addAddV27encoder/layer_normalization_1/moments/variance:output:06encoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
-encoder/layer_normalization_1/batchnorm/RsqrtRsqrt/encoder/layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
:encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpCencoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+encoder/layer_normalization_1/batchnorm/mulMul1encoder/layer_normalization_1/batchnorm/Rsqrt:y:0Bencoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
-encoder/layer_normalization_1/batchnorm/mul_1Mulencoder/add_1/add:z:0/encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
-encoder/layer_normalization_1/batchnorm/mul_2Mul3encoder/layer_normalization_1/moments/mean:output:0/encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
6encoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp?encoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+encoder/layer_normalization_1/batchnorm/subSub>encoder/layer_normalization_1/batchnorm/ReadVariableOp:value:01encoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
-encoder/layer_normalization_1/batchnorm/add_1AddV21encoder/layer_normalization_1/batchnorm/mul_1:z:0/encoder/layer_normalization_1/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
(encoder/dense_1/Tensordot/ReadVariableOpReadVariableOp1encoder_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0h
encoder/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
encoder/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
encoder/dense_1/Tensordot/ShapeShape1encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:i
'encoder/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder/dense_1/Tensordot/GatherV2GatherV2(encoder/dense_1/Tensordot/Shape:output:0'encoder/dense_1/Tensordot/free:output:00encoder/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)encoder/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder/dense_1/Tensordot/GatherV2_1GatherV2(encoder/dense_1/Tensordot/Shape:output:0'encoder/dense_1/Tensordot/axes:output:02encoder/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
encoder/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
encoder/dense_1/Tensordot/ProdProd+encoder/dense_1/Tensordot/GatherV2:output:0(encoder/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!encoder/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
 encoder/dense_1/Tensordot/Prod_1Prod-encoder/dense_1/Tensordot/GatherV2_1:output:0*encoder/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%encoder/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 encoder/dense_1/Tensordot/concatConcatV2'encoder/dense_1/Tensordot/free:output:0'encoder/dense_1/Tensordot/axes:output:0.encoder/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
encoder/dense_1/Tensordot/stackPack'encoder/dense_1/Tensordot/Prod:output:0)encoder/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
#encoder/dense_1/Tensordot/transpose	Transpose1encoder/layer_normalization_1/batchnorm/add_1:z:0)encoder/dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
!encoder/dense_1/Tensordot/ReshapeReshape'encoder/dense_1/Tensordot/transpose:y:0(encoder/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
 encoder/dense_1/Tensordot/MatMulMatMul*encoder/dense_1/Tensordot/Reshape:output:00encoder/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
!encoder/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�i
'encoder/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder/dense_1/Tensordot/concat_1ConcatV2+encoder/dense_1/Tensordot/GatherV2:output:0*encoder/dense_1/Tensordot/Const_2:output:00encoder/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
encoder/dense_1/TensordotReshape*encoder/dense_1/Tensordot/MatMul:product:0+encoder/dense_1/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
&encoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/dense_1/BiasAddBiasAdd"encoder/dense_1/Tensordot:output:0.encoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������_
encoder/dense_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
encoder/dense_1/Gelu/mulMul#encoder/dense_1/Gelu/mul/x:output:0 encoder/dense_1/BiasAdd:output:0*
T0*-
_output_shapes
:�����������`
encoder/dense_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
encoder/dense_1/Gelu/truedivRealDiv encoder/dense_1/BiasAdd:output:0$encoder/dense_1/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������y
encoder/dense_1/Gelu/ErfErf encoder/dense_1/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������_
encoder/dense_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
encoder/dense_1/Gelu/addAddV2#encoder/dense_1/Gelu/add/x:output:0encoder/dense_1/Gelu/Erf:y:0*
T0*-
_output_shapes
:������������
encoder/dense_1/Gelu/mul_1Mulencoder/dense_1/Gelu/mul:z:0encoder/dense_1/Gelu/add:z:0*
T0*-
_output_shapes
:������������
(encoder/dense_2/Tensordot/ReadVariableOpReadVariableOp1encoder_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0h
encoder/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
encoder/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       m
encoder/dense_2/Tensordot/ShapeShapeencoder/dense_1/Gelu/mul_1:z:0*
T0*
_output_shapes
:i
'encoder/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder/dense_2/Tensordot/GatherV2GatherV2(encoder/dense_2/Tensordot/Shape:output:0'encoder/dense_2/Tensordot/free:output:00encoder/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)encoder/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder/dense_2/Tensordot/GatherV2_1GatherV2(encoder/dense_2/Tensordot/Shape:output:0'encoder/dense_2/Tensordot/axes:output:02encoder/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
encoder/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
encoder/dense_2/Tensordot/ProdProd+encoder/dense_2/Tensordot/GatherV2:output:0(encoder/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!encoder/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
 encoder/dense_2/Tensordot/Prod_1Prod-encoder/dense_2/Tensordot/GatherV2_1:output:0*encoder/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%encoder/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 encoder/dense_2/Tensordot/concatConcatV2'encoder/dense_2/Tensordot/free:output:0'encoder/dense_2/Tensordot/axes:output:0.encoder/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
encoder/dense_2/Tensordot/stackPack'encoder/dense_2/Tensordot/Prod:output:0)encoder/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
#encoder/dense_2/Tensordot/transpose	Transposeencoder/dense_1/Gelu/mul_1:z:0)encoder/dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
!encoder/dense_2/Tensordot/ReshapeReshape'encoder/dense_2/Tensordot/transpose:y:0(encoder/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
 encoder/dense_2/Tensordot/MatMulMatMul*encoder/dense_2/Tensordot/Reshape:output:00encoder/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
!encoder/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�i
'encoder/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder/dense_2/Tensordot/concat_1ConcatV2+encoder/dense_2/Tensordot/GatherV2:output:0*encoder/dense_2/Tensordot/Const_2:output:00encoder/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
encoder/dense_2/TensordotReshape*encoder/dense_2/Tensordot/MatMul:product:0+encoder/dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
&encoder/dense_2/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/dense_2/BiasAddBiasAdd"encoder/dense_2/Tensordot:output:0.encoder/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
encoder/dropout_2/IdentityIdentity encoder/dense_2/BiasAdd:output:0*
T0*-
_output_shapes
:������������
encoder/add_2/addAddV2encoder/add_1/add:z:0#encoder/dropout_2/Identity:output:0*
T0*-
_output_shapes
:������������
>encoder_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,encoder_1/layer_normalization_2/moments/meanMeanencoder/add_2/add:z:0Gencoder_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
4encoder_1/layer_normalization_2/moments/StopGradientStopGradient5encoder_1/layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:�����������
9encoder_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceencoder/add_2/add:z:0=encoder_1/layer_normalization_2/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Bencoder_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
0encoder_1/layer_normalization_2/moments/varianceMean=encoder_1/layer_normalization_2/moments/SquaredDifference:z:0Kencoder_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(t
/encoder_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
-encoder_1/layer_normalization_2/batchnorm/addAddV29encoder_1/layer_normalization_2/moments/variance:output:08encoder_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
/encoder_1/layer_normalization_2/batchnorm/RsqrtRsqrt1encoder_1/layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
<encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpEencoder_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_1/layer_normalization_2/batchnorm/mulMul3encoder_1/layer_normalization_2/batchnorm/Rsqrt:y:0Dencoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
/encoder_1/layer_normalization_2/batchnorm/mul_1Mulencoder/add_2/add:z:01encoder_1/layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
/encoder_1/layer_normalization_2/batchnorm/mul_2Mul5encoder_1/layer_normalization_2/moments/mean:output:01encoder_1/layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
8encoder_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpAencoder_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_1/layer_normalization_2/batchnorm/subSub@encoder_1/layer_normalization_2/batchnorm/ReadVariableOp:value:03encoder_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
/encoder_1/layer_normalization_2/batchnorm/add_1AddV23encoder_1/layer_normalization_2/batchnorm/mul_1:z:01encoder_1/layer_normalization_2/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
Cencoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpLencoder_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
4encoder_1/multi_head_attention_1/query/einsum/EinsumEinsum3encoder_1/layer_normalization_2/batchnorm/add_1:z:0Kencoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
9encoder_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpBencoder_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*encoder_1/multi_head_attention_1/query/addAddV2=encoder_1/multi_head_attention_1/query/einsum/Einsum:output:0Aencoder_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Aencoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpJencoder_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
2encoder_1/multi_head_attention_1/key/einsum/EinsumEinsum3encoder_1/layer_normalization_2/batchnorm/add_1:z:0Iencoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
7encoder_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOp@encoder_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
(encoder_1/multi_head_attention_1/key/addAddV2;encoder_1/multi_head_attention_1/key/einsum/Einsum:output:0?encoder_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Cencoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpLencoder_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
4encoder_1/multi_head_attention_1/value/einsum/EinsumEinsum3encoder_1/layer_normalization_2/batchnorm/add_1:z:0Kencoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
9encoder_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpBencoder_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*encoder_1/multi_head_attention_1/value/addAddV2=encoder_1/multi_head_attention_1/value/einsum/Einsum:output:0Aencoder_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������k
&encoder_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
$encoder_1/multi_head_attention_1/MulMul.encoder_1/multi_head_attention_1/query/add:z:0/encoder_1/multi_head_attention_1/Mul/y:output:0*
T0*1
_output_shapes
:������������
.encoder_1/multi_head_attention_1/einsum/EinsumEinsum,encoder_1/multi_head_attention_1/key/add:z:0(encoder_1/multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
2encoder_1/multi_head_attention_1/softmax_1/SoftmaxSoftmax7encoder_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
3encoder_1/multi_head_attention_1/dropout_8/IdentityIdentity<encoder_1/multi_head_attention_1/softmax_1/Softmax:softmax:0*
T0*1
_output_shapes
:������������
0encoder_1/multi_head_attention_1/einsum_1/EinsumEinsum<encoder_1/multi_head_attention_1/dropout_8/Identity:output:0.encoder_1/multi_head_attention_1/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Nencoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpWencoder_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
?encoder_1/multi_head_attention_1/attention_output/einsum/EinsumEinsum9encoder_1/multi_head_attention_1/einsum_1/Einsum:output:0Vencoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
Dencoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpMencoder_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5encoder_1/multi_head_attention_1/attention_output/addAddV2Hencoder_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0Lencoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
encoder_1/dropout_3/IdentityIdentity9encoder_1/multi_head_attention_1/attention_output/add:z:0*
T0*-
_output_shapes
:������������
encoder_1/add_3/addAddV2%encoder_1/dropout_3/Identity:output:0encoder/add_2/add:z:0*
T0*-
_output_shapes
:������������
>encoder_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,encoder_1/layer_normalization_3/moments/meanMeanencoder_1/add_3/add:z:0Gencoder_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
4encoder_1/layer_normalization_3/moments/StopGradientStopGradient5encoder_1/layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:�����������
9encoder_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifferenceencoder_1/add_3/add:z:0=encoder_1/layer_normalization_3/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Bencoder_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
0encoder_1/layer_normalization_3/moments/varianceMean=encoder_1/layer_normalization_3/moments/SquaredDifference:z:0Kencoder_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(t
/encoder_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
-encoder_1/layer_normalization_3/batchnorm/addAddV29encoder_1/layer_normalization_3/moments/variance:output:08encoder_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
/encoder_1/layer_normalization_3/batchnorm/RsqrtRsqrt1encoder_1/layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
<encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpEencoder_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_1/layer_normalization_3/batchnorm/mulMul3encoder_1/layer_normalization_3/batchnorm/Rsqrt:y:0Dencoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
/encoder_1/layer_normalization_3/batchnorm/mul_1Mulencoder_1/add_3/add:z:01encoder_1/layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
/encoder_1/layer_normalization_3/batchnorm/mul_2Mul5encoder_1/layer_normalization_3/moments/mean:output:01encoder_1/layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
8encoder_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpAencoder_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_1/layer_normalization_3/batchnorm/subSub@encoder_1/layer_normalization_3/batchnorm/ReadVariableOp:value:03encoder_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
/encoder_1/layer_normalization_3/batchnorm/add_1AddV23encoder_1/layer_normalization_3/batchnorm/mul_1:z:01encoder_1/layer_normalization_3/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
*encoder_1/dense_3/Tensordot/ReadVariableOpReadVariableOp3encoder_1_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
 encoder_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 encoder_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
!encoder_1/dense_3/Tensordot/ShapeShape3encoder_1/layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
:k
)encoder_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_1/dense_3/Tensordot/GatherV2GatherV2*encoder_1/dense_3/Tensordot/Shape:output:0)encoder_1/dense_3/Tensordot/free:output:02encoder_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+encoder_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&encoder_1/dense_3/Tensordot/GatherV2_1GatherV2*encoder_1/dense_3/Tensordot/Shape:output:0)encoder_1/dense_3/Tensordot/axes:output:04encoder_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!encoder_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 encoder_1/dense_3/Tensordot/ProdProd-encoder_1/dense_3/Tensordot/GatherV2:output:0*encoder_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#encoder_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
"encoder_1/dense_3/Tensordot/Prod_1Prod/encoder_1/dense_3/Tensordot/GatherV2_1:output:0,encoder_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'encoder_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder_1/dense_3/Tensordot/concatConcatV2)encoder_1/dense_3/Tensordot/free:output:0)encoder_1/dense_3/Tensordot/axes:output:00encoder_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
!encoder_1/dense_3/Tensordot/stackPack)encoder_1/dense_3/Tensordot/Prod:output:0+encoder_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
%encoder_1/dense_3/Tensordot/transpose	Transpose3encoder_1/layer_normalization_3/batchnorm/add_1:z:0+encoder_1/dense_3/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
#encoder_1/dense_3/Tensordot/ReshapeReshape)encoder_1/dense_3/Tensordot/transpose:y:0*encoder_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
"encoder_1/dense_3/Tensordot/MatMulMatMul,encoder_1/dense_3/Tensordot/Reshape:output:02encoder_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
#encoder_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�k
)encoder_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_1/dense_3/Tensordot/concat_1ConcatV2-encoder_1/dense_3/Tensordot/GatherV2:output:0,encoder_1/dense_3/Tensordot/Const_2:output:02encoder_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
encoder_1/dense_3/TensordotReshape,encoder_1/dense_3/Tensordot/MatMul:product:0-encoder_1/dense_3/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
(encoder_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp1encoder_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder_1/dense_3/BiasAddBiasAdd$encoder_1/dense_3/Tensordot:output:00encoder_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������a
encoder_1/dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
encoder_1/dense_3/Gelu/mulMul%encoder_1/dense_3/Gelu/mul/x:output:0"encoder_1/dense_3/BiasAdd:output:0*
T0*-
_output_shapes
:�����������b
encoder_1/dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
encoder_1/dense_3/Gelu/truedivRealDiv"encoder_1/dense_3/BiasAdd:output:0&encoder_1/dense_3/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������}
encoder_1/dense_3/Gelu/ErfErf"encoder_1/dense_3/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������a
encoder_1/dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
encoder_1/dense_3/Gelu/addAddV2%encoder_1/dense_3/Gelu/add/x:output:0encoder_1/dense_3/Gelu/Erf:y:0*
T0*-
_output_shapes
:������������
encoder_1/dense_3/Gelu/mul_1Mulencoder_1/dense_3/Gelu/mul:z:0encoder_1/dense_3/Gelu/add:z:0*
T0*-
_output_shapes
:������������
*encoder_1/dense_4/Tensordot/ReadVariableOpReadVariableOp3encoder_1_dense_4_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
 encoder_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 encoder_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
!encoder_1/dense_4/Tensordot/ShapeShape encoder_1/dense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:k
)encoder_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_1/dense_4/Tensordot/GatherV2GatherV2*encoder_1/dense_4/Tensordot/Shape:output:0)encoder_1/dense_4/Tensordot/free:output:02encoder_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+encoder_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&encoder_1/dense_4/Tensordot/GatherV2_1GatherV2*encoder_1/dense_4/Tensordot/Shape:output:0)encoder_1/dense_4/Tensordot/axes:output:04encoder_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!encoder_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 encoder_1/dense_4/Tensordot/ProdProd-encoder_1/dense_4/Tensordot/GatherV2:output:0*encoder_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#encoder_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
"encoder_1/dense_4/Tensordot/Prod_1Prod/encoder_1/dense_4/Tensordot/GatherV2_1:output:0,encoder_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'encoder_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder_1/dense_4/Tensordot/concatConcatV2)encoder_1/dense_4/Tensordot/free:output:0)encoder_1/dense_4/Tensordot/axes:output:00encoder_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
!encoder_1/dense_4/Tensordot/stackPack)encoder_1/dense_4/Tensordot/Prod:output:0+encoder_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
%encoder_1/dense_4/Tensordot/transpose	Transpose encoder_1/dense_3/Gelu/mul_1:z:0+encoder_1/dense_4/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
#encoder_1/dense_4/Tensordot/ReshapeReshape)encoder_1/dense_4/Tensordot/transpose:y:0*encoder_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
"encoder_1/dense_4/Tensordot/MatMulMatMul,encoder_1/dense_4/Tensordot/Reshape:output:02encoder_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
#encoder_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�k
)encoder_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_1/dense_4/Tensordot/concat_1ConcatV2-encoder_1/dense_4/Tensordot/GatherV2:output:0,encoder_1/dense_4/Tensordot/Const_2:output:02encoder_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
encoder_1/dense_4/TensordotReshape,encoder_1/dense_4/Tensordot/MatMul:product:0-encoder_1/dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
(encoder_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp1encoder_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder_1/dense_4/BiasAddBiasAdd$encoder_1/dense_4/Tensordot:output:00encoder_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
encoder_1/dropout_4/IdentityIdentity"encoder_1/dense_4/BiasAdd:output:0*
T0*-
_output_shapes
:������������
encoder_1/add_4/addAddV2encoder_1/add_3/add:z:0%encoder_1/dropout_4/Identity:output:0*
T0*-
_output_shapes
:������������
>encoder_2/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,encoder_2/layer_normalization_4/moments/meanMeanencoder_1/add_4/add:z:0Gencoder_2/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
4encoder_2/layer_normalization_4/moments/StopGradientStopGradient5encoder_2/layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:�����������
9encoder_2/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceencoder_1/add_4/add:z:0=encoder_2/layer_normalization_4/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Bencoder_2/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
0encoder_2/layer_normalization_4/moments/varianceMean=encoder_2/layer_normalization_4/moments/SquaredDifference:z:0Kencoder_2/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(t
/encoder_2/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
-encoder_2/layer_normalization_4/batchnorm/addAddV29encoder_2/layer_normalization_4/moments/variance:output:08encoder_2/layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
/encoder_2/layer_normalization_4/batchnorm/RsqrtRsqrt1encoder_2/layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
<encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpEencoder_2_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_2/layer_normalization_4/batchnorm/mulMul3encoder_2/layer_normalization_4/batchnorm/Rsqrt:y:0Dencoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
/encoder_2/layer_normalization_4/batchnorm/mul_1Mulencoder_1/add_4/add:z:01encoder_2/layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
/encoder_2/layer_normalization_4/batchnorm/mul_2Mul5encoder_2/layer_normalization_4/moments/mean:output:01encoder_2/layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
8encoder_2/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOpAencoder_2_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_2/layer_normalization_4/batchnorm/subSub@encoder_2/layer_normalization_4/batchnorm/ReadVariableOp:value:03encoder_2/layer_normalization_4/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
/encoder_2/layer_normalization_4/batchnorm/add_1AddV23encoder_2/layer_normalization_4/batchnorm/mul_1:z:01encoder_2/layer_normalization_4/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
Cencoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpLencoder_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
4encoder_2/multi_head_attention_2/query/einsum/EinsumEinsum3encoder_2/layer_normalization_4/batchnorm/add_1:z:0Kencoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
9encoder_2/multi_head_attention_2/query/add/ReadVariableOpReadVariableOpBencoder_2_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*encoder_2/multi_head_attention_2/query/addAddV2=encoder_2/multi_head_attention_2/query/einsum/Einsum:output:0Aencoder_2/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Aencoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOpJencoder_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
2encoder_2/multi_head_attention_2/key/einsum/EinsumEinsum3encoder_2/layer_normalization_4/batchnorm/add_1:z:0Iencoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
7encoder_2/multi_head_attention_2/key/add/ReadVariableOpReadVariableOp@encoder_2_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
(encoder_2/multi_head_attention_2/key/addAddV2;encoder_2/multi_head_attention_2/key/einsum/Einsum:output:0?encoder_2/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Cencoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpLencoder_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
4encoder_2/multi_head_attention_2/value/einsum/EinsumEinsum3encoder_2/layer_normalization_4/batchnorm/add_1:z:0Kencoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
9encoder_2/multi_head_attention_2/value/add/ReadVariableOpReadVariableOpBencoder_2_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*encoder_2/multi_head_attention_2/value/addAddV2=encoder_2/multi_head_attention_2/value/einsum/Einsum:output:0Aencoder_2/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������k
&encoder_2/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
$encoder_2/multi_head_attention_2/MulMul.encoder_2/multi_head_attention_2/query/add:z:0/encoder_2/multi_head_attention_2/Mul/y:output:0*
T0*1
_output_shapes
:������������
.encoder_2/multi_head_attention_2/einsum/EinsumEinsum,encoder_2/multi_head_attention_2/key/add:z:0(encoder_2/multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
2encoder_2/multi_head_attention_2/softmax_2/SoftmaxSoftmax7encoder_2/multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
3encoder_2/multi_head_attention_2/dropout_9/IdentityIdentity<encoder_2/multi_head_attention_2/softmax_2/Softmax:softmax:0*
T0*1
_output_shapes
:������������
0encoder_2/multi_head_attention_2/einsum_1/EinsumEinsum<encoder_2/multi_head_attention_2/dropout_9/Identity:output:0.encoder_2/multi_head_attention_2/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Nencoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpWencoder_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
?encoder_2/multi_head_attention_2/attention_output/einsum/EinsumEinsum9encoder_2/multi_head_attention_2/einsum_1/Einsum:output:0Vencoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
Dencoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpMencoder_2_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5encoder_2/multi_head_attention_2/attention_output/addAddV2Hencoder_2/multi_head_attention_2/attention_output/einsum/Einsum:output:0Lencoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
encoder_2/dropout_5/IdentityIdentity9encoder_2/multi_head_attention_2/attention_output/add:z:0*
T0*-
_output_shapes
:������������
encoder_2/add_5/addAddV2%encoder_2/dropout_5/Identity:output:0encoder_1/add_4/add:z:0*
T0*-
_output_shapes
:������������
>encoder_2/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,encoder_2/layer_normalization_5/moments/meanMeanencoder_2/add_5/add:z:0Gencoder_2/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
4encoder_2/layer_normalization_5/moments/StopGradientStopGradient5encoder_2/layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:�����������
9encoder_2/layer_normalization_5/moments/SquaredDifferenceSquaredDifferenceencoder_2/add_5/add:z:0=encoder_2/layer_normalization_5/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Bencoder_2/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
0encoder_2/layer_normalization_5/moments/varianceMean=encoder_2/layer_normalization_5/moments/SquaredDifference:z:0Kencoder_2/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(t
/encoder_2/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
-encoder_2/layer_normalization_5/batchnorm/addAddV29encoder_2/layer_normalization_5/moments/variance:output:08encoder_2/layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
/encoder_2/layer_normalization_5/batchnorm/RsqrtRsqrt1encoder_2/layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
<encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpEencoder_2_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_2/layer_normalization_5/batchnorm/mulMul3encoder_2/layer_normalization_5/batchnorm/Rsqrt:y:0Dencoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
/encoder_2/layer_normalization_5/batchnorm/mul_1Mulencoder_2/add_5/add:z:01encoder_2/layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
/encoder_2/layer_normalization_5/batchnorm/mul_2Mul5encoder_2/layer_normalization_5/moments/mean:output:01encoder_2/layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
8encoder_2/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOpAencoder_2_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_2/layer_normalization_5/batchnorm/subSub@encoder_2/layer_normalization_5/batchnorm/ReadVariableOp:value:03encoder_2/layer_normalization_5/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
/encoder_2/layer_normalization_5/batchnorm/add_1AddV23encoder_2/layer_normalization_5/batchnorm/mul_1:z:01encoder_2/layer_normalization_5/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
*encoder_2/dense_5/Tensordot/ReadVariableOpReadVariableOp3encoder_2_dense_5_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
 encoder_2/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 encoder_2/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
!encoder_2/dense_5/Tensordot/ShapeShape3encoder_2/layer_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:k
)encoder_2/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_2/dense_5/Tensordot/GatherV2GatherV2*encoder_2/dense_5/Tensordot/Shape:output:0)encoder_2/dense_5/Tensordot/free:output:02encoder_2/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+encoder_2/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&encoder_2/dense_5/Tensordot/GatherV2_1GatherV2*encoder_2/dense_5/Tensordot/Shape:output:0)encoder_2/dense_5/Tensordot/axes:output:04encoder_2/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!encoder_2/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 encoder_2/dense_5/Tensordot/ProdProd-encoder_2/dense_5/Tensordot/GatherV2:output:0*encoder_2/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#encoder_2/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
"encoder_2/dense_5/Tensordot/Prod_1Prod/encoder_2/dense_5/Tensordot/GatherV2_1:output:0,encoder_2/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'encoder_2/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder_2/dense_5/Tensordot/concatConcatV2)encoder_2/dense_5/Tensordot/free:output:0)encoder_2/dense_5/Tensordot/axes:output:00encoder_2/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
!encoder_2/dense_5/Tensordot/stackPack)encoder_2/dense_5/Tensordot/Prod:output:0+encoder_2/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
%encoder_2/dense_5/Tensordot/transpose	Transpose3encoder_2/layer_normalization_5/batchnorm/add_1:z:0+encoder_2/dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
#encoder_2/dense_5/Tensordot/ReshapeReshape)encoder_2/dense_5/Tensordot/transpose:y:0*encoder_2/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
"encoder_2/dense_5/Tensordot/MatMulMatMul,encoder_2/dense_5/Tensordot/Reshape:output:02encoder_2/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
#encoder_2/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�k
)encoder_2/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_2/dense_5/Tensordot/concat_1ConcatV2-encoder_2/dense_5/Tensordot/GatherV2:output:0,encoder_2/dense_5/Tensordot/Const_2:output:02encoder_2/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
encoder_2/dense_5/TensordotReshape,encoder_2/dense_5/Tensordot/MatMul:product:0-encoder_2/dense_5/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
(encoder_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp1encoder_2_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder_2/dense_5/BiasAddBiasAdd$encoder_2/dense_5/Tensordot:output:00encoder_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������a
encoder_2/dense_5/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
encoder_2/dense_5/Gelu/mulMul%encoder_2/dense_5/Gelu/mul/x:output:0"encoder_2/dense_5/BiasAdd:output:0*
T0*-
_output_shapes
:�����������b
encoder_2/dense_5/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
encoder_2/dense_5/Gelu/truedivRealDiv"encoder_2/dense_5/BiasAdd:output:0&encoder_2/dense_5/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������}
encoder_2/dense_5/Gelu/ErfErf"encoder_2/dense_5/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������a
encoder_2/dense_5/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
encoder_2/dense_5/Gelu/addAddV2%encoder_2/dense_5/Gelu/add/x:output:0encoder_2/dense_5/Gelu/Erf:y:0*
T0*-
_output_shapes
:������������
encoder_2/dense_5/Gelu/mul_1Mulencoder_2/dense_5/Gelu/mul:z:0encoder_2/dense_5/Gelu/add:z:0*
T0*-
_output_shapes
:������������
*encoder_2/dense_6/Tensordot/ReadVariableOpReadVariableOp3encoder_2_dense_6_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
 encoder_2/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 encoder_2/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
!encoder_2/dense_6/Tensordot/ShapeShape encoder_2/dense_5/Gelu/mul_1:z:0*
T0*
_output_shapes
:k
)encoder_2/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_2/dense_6/Tensordot/GatherV2GatherV2*encoder_2/dense_6/Tensordot/Shape:output:0)encoder_2/dense_6/Tensordot/free:output:02encoder_2/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+encoder_2/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&encoder_2/dense_6/Tensordot/GatherV2_1GatherV2*encoder_2/dense_6/Tensordot/Shape:output:0)encoder_2/dense_6/Tensordot/axes:output:04encoder_2/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!encoder_2/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 encoder_2/dense_6/Tensordot/ProdProd-encoder_2/dense_6/Tensordot/GatherV2:output:0*encoder_2/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#encoder_2/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
"encoder_2/dense_6/Tensordot/Prod_1Prod/encoder_2/dense_6/Tensordot/GatherV2_1:output:0,encoder_2/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'encoder_2/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder_2/dense_6/Tensordot/concatConcatV2)encoder_2/dense_6/Tensordot/free:output:0)encoder_2/dense_6/Tensordot/axes:output:00encoder_2/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
!encoder_2/dense_6/Tensordot/stackPack)encoder_2/dense_6/Tensordot/Prod:output:0+encoder_2/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
%encoder_2/dense_6/Tensordot/transpose	Transpose encoder_2/dense_5/Gelu/mul_1:z:0+encoder_2/dense_6/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
#encoder_2/dense_6/Tensordot/ReshapeReshape)encoder_2/dense_6/Tensordot/transpose:y:0*encoder_2/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
"encoder_2/dense_6/Tensordot/MatMulMatMul,encoder_2/dense_6/Tensordot/Reshape:output:02encoder_2/dense_6/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
#encoder_2/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�k
)encoder_2/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_2/dense_6/Tensordot/concat_1ConcatV2-encoder_2/dense_6/Tensordot/GatherV2:output:0,encoder_2/dense_6/Tensordot/Const_2:output:02encoder_2/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
encoder_2/dense_6/TensordotReshape,encoder_2/dense_6/Tensordot/MatMul:product:0-encoder_2/dense_6/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
(encoder_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp1encoder_2_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder_2/dense_6/BiasAddBiasAdd$encoder_2/dense_6/Tensordot:output:00encoder_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
encoder_2/dropout_6/IdentityIdentity"encoder_2/dense_6/BiasAdd:output:0*
T0*-
_output_shapes
:������������
encoder_2/add_6/addAddV2encoder_2/add_5/add:z:0%encoder_2/dropout_6/Identity:output:0*
T0*-
_output_shapes
:�����������~
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_6/moments/meanMeanencoder_2/add_6/add:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceencoder_2/add_6/add:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_6/batchnorm/mul_1Mulencoder_2/add_6/add:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_7/Tensordot/ReadVariableOpReadVariableOp)dense_7_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0`
dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_7/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_7/Tensordot/GatherV2GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/free:output:0(dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_7/Tensordot/GatherV2_1GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/axes:output:0*dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_7/Tensordot/ProdProd#dense_7/Tensordot/GatherV2:output:0 dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_7/Tensordot/Prod_1Prod%dense_7/Tensordot/GatherV2_1:output:0"dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_7/Tensordot/concatConcatV2dense_7/Tensordot/free:output:0dense_7/Tensordot/axes:output:0&dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_7/Tensordot/stackPackdense_7/Tensordot/Prod:output:0!dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_7/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0!dense_7/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_7/Tensordot/ReshapeReshapedense_7/Tensordot/transpose:y:0 dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_7/Tensordot/MatMulMatMul"dense_7/Tensordot/Reshape:output:0(dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������c
dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_7/Tensordot/concat_1ConcatV2#dense_7/Tensordot/GatherV2:output:0"dense_7/Tensordot/Const_2:output:0(dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_7/TensordotReshape"dense_7/Tensordot/MatMul:product:0#dense_7/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/Tensordot:output:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������l
IdentityIdentitydense_7/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:�����������

Identity_1Identity<encoder_2/multi_head_attention_2/softmax_2/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_7/BiasAdd/ReadVariableOp!^dense_7/Tensordot/ReadVariableOp'^encoder/dense_1/BiasAdd/ReadVariableOp)^encoder/dense_1/Tensordot/ReadVariableOp'^encoder/dense_2/BiasAdd/ReadVariableOp)^encoder/dense_2/Tensordot/ReadVariableOp5^encoder/layer_normalization/batchnorm/ReadVariableOp9^encoder/layer_normalization/batchnorm/mul/ReadVariableOp7^encoder/layer_normalization_1/batchnorm/ReadVariableOp;^encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpA^encoder/multi_head_attention/attention_output/add/ReadVariableOpK^encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp4^encoder/multi_head_attention/key/add/ReadVariableOp>^encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp6^encoder/multi_head_attention/query/add/ReadVariableOp@^encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp6^encoder/multi_head_attention/value/add/ReadVariableOp@^encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp)^encoder_1/dense_3/BiasAdd/ReadVariableOp+^encoder_1/dense_3/Tensordot/ReadVariableOp)^encoder_1/dense_4/BiasAdd/ReadVariableOp+^encoder_1/dense_4/Tensordot/ReadVariableOp9^encoder_1/layer_normalization_2/batchnorm/ReadVariableOp=^encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp9^encoder_1/layer_normalization_3/batchnorm/ReadVariableOp=^encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpE^encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpO^encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp8^encoder_1/multi_head_attention_1/key/add/ReadVariableOpB^encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:^encoder_1/multi_head_attention_1/query/add/ReadVariableOpD^encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:^encoder_1/multi_head_attention_1/value/add/ReadVariableOpD^encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp)^encoder_2/dense_5/BiasAdd/ReadVariableOp+^encoder_2/dense_5/Tensordot/ReadVariableOp)^encoder_2/dense_6/BiasAdd/ReadVariableOp+^encoder_2/dense_6/Tensordot/ReadVariableOp9^encoder_2/layer_normalization_4/batchnorm/ReadVariableOp=^encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp9^encoder_2/layer_normalization_5/batchnorm/ReadVariableOp=^encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpE^encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpO^encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp8^encoder_2/multi_head_attention_2/key/add/ReadVariableOpB^encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:^encoder_2/multi_head_attention_2/query/add/ReadVariableOpD^encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:^encoder_2/multi_head_attention_2/value/add/ReadVariableOpD^encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp,^positional_embedding/add/add/ReadVariableOp2^positional_embedding/dense/BiasAdd/ReadVariableOp4^positional_embedding/dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2D
 dense_7/Tensordot/ReadVariableOp dense_7/Tensordot/ReadVariableOp2P
&encoder/dense_1/BiasAdd/ReadVariableOp&encoder/dense_1/BiasAdd/ReadVariableOp2T
(encoder/dense_1/Tensordot/ReadVariableOp(encoder/dense_1/Tensordot/ReadVariableOp2P
&encoder/dense_2/BiasAdd/ReadVariableOp&encoder/dense_2/BiasAdd/ReadVariableOp2T
(encoder/dense_2/Tensordot/ReadVariableOp(encoder/dense_2/Tensordot/ReadVariableOp2l
4encoder/layer_normalization/batchnorm/ReadVariableOp4encoder/layer_normalization/batchnorm/ReadVariableOp2t
8encoder/layer_normalization/batchnorm/mul/ReadVariableOp8encoder/layer_normalization/batchnorm/mul/ReadVariableOp2p
6encoder/layer_normalization_1/batchnorm/ReadVariableOp6encoder/layer_normalization_1/batchnorm/ReadVariableOp2x
:encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
@encoder/multi_head_attention/attention_output/add/ReadVariableOp@encoder/multi_head_attention/attention_output/add/ReadVariableOp2�
Jencoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpJencoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2j
3encoder/multi_head_attention/key/add/ReadVariableOp3encoder/multi_head_attention/key/add/ReadVariableOp2~
=encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp=encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp2n
5encoder/multi_head_attention/query/add/ReadVariableOp5encoder/multi_head_attention/query/add/ReadVariableOp2�
?encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp?encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp2n
5encoder/multi_head_attention/value/add/ReadVariableOp5encoder/multi_head_attention/value/add/ReadVariableOp2�
?encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp?encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp2T
(encoder_1/dense_3/BiasAdd/ReadVariableOp(encoder_1/dense_3/BiasAdd/ReadVariableOp2X
*encoder_1/dense_3/Tensordot/ReadVariableOp*encoder_1/dense_3/Tensordot/ReadVariableOp2T
(encoder_1/dense_4/BiasAdd/ReadVariableOp(encoder_1/dense_4/BiasAdd/ReadVariableOp2X
*encoder_1/dense_4/Tensordot/ReadVariableOp*encoder_1/dense_4/Tensordot/ReadVariableOp2t
8encoder_1/layer_normalization_2/batchnorm/ReadVariableOp8encoder_1/layer_normalization_2/batchnorm/ReadVariableOp2|
<encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp<encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2t
8encoder_1/layer_normalization_3/batchnorm/ReadVariableOp8encoder_1/layer_normalization_3/batchnorm/ReadVariableOp2|
<encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp<encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2�
Dencoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpDencoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp2�
Nencoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpNencoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2r
7encoder_1/multi_head_attention_1/key/add/ReadVariableOp7encoder_1/multi_head_attention_1/key/add/ReadVariableOp2�
Aencoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpAencoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2v
9encoder_1/multi_head_attention_1/query/add/ReadVariableOp9encoder_1/multi_head_attention_1/query/add/ReadVariableOp2�
Cencoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpCencoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2v
9encoder_1/multi_head_attention_1/value/add/ReadVariableOp9encoder_1/multi_head_attention_1/value/add/ReadVariableOp2�
Cencoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpCencoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2T
(encoder_2/dense_5/BiasAdd/ReadVariableOp(encoder_2/dense_5/BiasAdd/ReadVariableOp2X
*encoder_2/dense_5/Tensordot/ReadVariableOp*encoder_2/dense_5/Tensordot/ReadVariableOp2T
(encoder_2/dense_6/BiasAdd/ReadVariableOp(encoder_2/dense_6/BiasAdd/ReadVariableOp2X
*encoder_2/dense_6/Tensordot/ReadVariableOp*encoder_2/dense_6/Tensordot/ReadVariableOp2t
8encoder_2/layer_normalization_4/batchnorm/ReadVariableOp8encoder_2/layer_normalization_4/batchnorm/ReadVariableOp2|
<encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp<encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp2t
8encoder_2/layer_normalization_5/batchnorm/ReadVariableOp8encoder_2/layer_normalization_5/batchnorm/ReadVariableOp2|
<encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp<encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp2�
Dencoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpDencoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp2�
Nencoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpNencoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2r
7encoder_2/multi_head_attention_2/key/add/ReadVariableOp7encoder_2/multi_head_attention_2/key/add/ReadVariableOp2�
Aencoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpAencoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2v
9encoder_2/multi_head_attention_2/query/add/ReadVariableOp9encoder_2/multi_head_attention_2/query/add/ReadVariableOp2�
Cencoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpCencoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2v
9encoder_2/multi_head_attention_2/value/add/ReadVariableOp9encoder_2/multi_head_attention_2/value/add/ReadVariableOp2�
Cencoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpCencoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2Z
+positional_embedding/add/add/ReadVariableOp+positional_embedding/add/add/ReadVariableOp2f
1positional_embedding/dense/BiasAdd/ReadVariableOp1positional_embedding/dense/BiasAdd/ReadVariableOp2j
3positional_embedding/dense/Tensordot/ReadVariableOp3positional_embedding/dense/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
�
�
4__inference_layer_normalization_6_layer_call_fn_5463

inputs
unknown:	�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2430u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
(__inference_encoder_2_layer_call_fn_6292

inputs
unknown:	�
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�!
	unknown_7:��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_2_layer_call_and_return_conditional_losses_2787u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
C__inference_encoder_1_layer_call_and_return_conditional_losses_6214

inputsJ
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_2_batchnorm_readvariableop_resource:	�Z
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_1_query_add_readvariableop_resource:	�X
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_1_key_add_readvariableop_resource:	�Z
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_1_value_add_readvariableop_resource:	�e
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:��R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	�J
;layer_normalization_3_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_3_batchnorm_readvariableop_resource:	�=
)dense_3_tensordot_readvariableop_resource:
��6
'dense_3_biasadd_readvariableop_resource:	�=
)dense_4_tensordot_readvariableop_resource:
��6
'dense_4_biasadd_readvariableop_resource:	�
identity

identity_1��dense_3/BiasAdd/ReadVariableOp� dense_3/Tensordot/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�.layer_normalization_2/batchnorm/ReadVariableOp�2layer_normalization_2/batchnorm/mul/ReadVariableOp�.layer_normalization_3/batchnorm/ReadVariableOp�2layer_normalization_3/batchnorm/mul/ReadVariableOp�:multi_head_attention_1/attention_output/add/ReadVariableOp�Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�-multi_head_attention_1/key/add/ReadVariableOp�7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�/multi_head_attention_1/query/add/ReadVariableOp�9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�/multi_head_attention_1/value/add/ReadVariableOp�9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_2/moments/meanMeaninputs=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceinputs3layer_normalization_2/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_2/batchnorm/mul_1Mulinputs'layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_1/query/einsum/EinsumEinsum)layer_normalization_2/batchnorm/add_1:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention_1/key/einsum/EinsumEinsum)layer_normalization_2/batchnorm/add_1:z:0?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_1/value/einsum/EinsumEinsum)layer_normalization_2/batchnorm/add_1:z:0Amulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*1
_output_shapes
:������������
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
(multi_head_attention_1/softmax_1/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
&multi_head_attention_1/einsum_1/EinsumEinsum2multi_head_attention_1/softmax_1/Softmax:softmax:0$multi_head_attention_1/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
	add_3/addAddV2/multi_head_attention_1/attention_output/add:z:0inputs*
T0*-
_output_shapes
:�����������~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_3/moments/meanMeanadd_3/add:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_3/moments/SquaredDifferenceSquaredDifferenceadd_3/add:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_3/batchnorm/mul_1Muladd_3/add:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_3/Tensordot/ShapeShape)layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_3/Tensordot/transpose	Transpose)layer_normalization_3/batchnorm/add_1:z:0!dense_3/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������W
dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dense_3/Gelu/mulMuldense_3/Gelu/mul/x:output:0dense_3/BiasAdd:output:0*
T0*-
_output_shapes
:�����������X
dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dense_3/Gelu/truedivRealDivdense_3/BiasAdd:output:0dense_3/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������i
dense_3/Gelu/ErfErfdense_3/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������W
dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dense_3/Gelu/addAddV2dense_3/Gelu/add/x:output:0dense_3/Gelu/Erf:y:0*
T0*-
_output_shapes
:�����������}
dense_3/Gelu/mul_1Muldense_3/Gelu/mul:z:0dense_3/Gelu/add:z:0*
T0*-
_output_shapes
:������������
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_4/Tensordot/ShapeShapedense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/transpose	Transposedense_3/Gelu/mul_1:z:0!dense_4/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������s
	add_4/addAddV2add_3/add:z:0dense_4/BiasAdd:output:0*
T0*-
_output_shapes
:�����������b
IdentityIdentityadd_4/add:z:0^NoOp*
T0*-
_output_shapes
:������������

Identity_1Identity2multi_head_attention_1/softmax_1/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2�
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�#
�
N__inference_positional_embedding_layer_call_and_return_conditional_losses_5454

inputs:
'dense_tensordot_readvariableop_resource:	�4
%dense_biasadd_readvariableop_resource:	�7
add_add_readvariableop_resource:��
identity��add/add/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       K
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������|
add/add/ReadVariableOpReadVariableOpadd_add_readvariableop_resource*$
_output_shapes
:��*
dtype0�
add/addAddV2dense/BiasAdd:output:0add/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������`
IdentityIdentityadd/add:z:0^NoOp*
T0*-
_output_shapes
:������������
NoOpNoOp^add/add/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 20
add/add/ReadVariableOpadd/add/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_5485

inputs4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:�����������
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:�����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:����������
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������i
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:�����������x
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*-
_output_shapes
:�����������w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*-
_output_shapes
:�����������x
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:�����������h
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*-
_output_shapes
:������������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�$
__inference__traced_save_6759
file_prefix=
9savev2_transformer_normalization_mean_read_readvariableopA
=savev2_transformer_normalization_variance_read_readvariableop>
:savev2_transformer_normalization_count_read_readvariableop	H
Dsavev2_transformer_positional_embedding_position_read_readvariableopF
Bsavev2_transformer_layer_normalization_6_gamma_read_readvariableopE
Asavev2_transformer_layer_normalization_6_beta_read_readvariableop9
5savev2_transformer_dense_7_kernel_read_readvariableop7
3savev2_transformer_dense_7_bias_read_readvariableopL
Hsavev2_transformer_positional_embedding_dense_kernel_read_readvariableopJ
Fsavev2_transformer_positional_embedding_dense_bias_read_readvariableopT
Psavev2_transformer_encoder_multi_head_attention_query_kernel_read_readvariableopR
Nsavev2_transformer_encoder_multi_head_attention_query_bias_read_readvariableopR
Nsavev2_transformer_encoder_multi_head_attention_key_kernel_read_readvariableopP
Lsavev2_transformer_encoder_multi_head_attention_key_bias_read_readvariableopT
Psavev2_transformer_encoder_multi_head_attention_value_kernel_read_readvariableopR
Nsavev2_transformer_encoder_multi_head_attention_value_bias_read_readvariableop_
[savev2_transformer_encoder_multi_head_attention_attention_output_kernel_read_readvariableop]
Ysavev2_transformer_encoder_multi_head_attention_attention_output_bias_read_readvariableopA
=savev2_transformer_encoder_dense_1_kernel_read_readvariableop?
;savev2_transformer_encoder_dense_1_bias_read_readvariableopA
=savev2_transformer_encoder_dense_2_kernel_read_readvariableop?
;savev2_transformer_encoder_dense_2_bias_read_readvariableopL
Hsavev2_transformer_encoder_layer_normalization_gamma_read_readvariableopK
Gsavev2_transformer_encoder_layer_normalization_beta_read_readvariableopN
Jsavev2_transformer_encoder_layer_normalization_1_gamma_read_readvariableopM
Isavev2_transformer_encoder_layer_normalization_1_beta_read_readvariableopX
Tsavev2_transformer_encoder_1_multi_head_attention_1_query_kernel_read_readvariableopV
Rsavev2_transformer_encoder_1_multi_head_attention_1_query_bias_read_readvariableopV
Rsavev2_transformer_encoder_1_multi_head_attention_1_key_kernel_read_readvariableopT
Psavev2_transformer_encoder_1_multi_head_attention_1_key_bias_read_readvariableopX
Tsavev2_transformer_encoder_1_multi_head_attention_1_value_kernel_read_readvariableopV
Rsavev2_transformer_encoder_1_multi_head_attention_1_value_bias_read_readvariableopc
_savev2_transformer_encoder_1_multi_head_attention_1_attention_output_kernel_read_readvariableopa
]savev2_transformer_encoder_1_multi_head_attention_1_attention_output_bias_read_readvariableopC
?savev2_transformer_encoder_1_dense_3_kernel_read_readvariableopA
=savev2_transformer_encoder_1_dense_3_bias_read_readvariableopC
?savev2_transformer_encoder_1_dense_4_kernel_read_readvariableopA
=savev2_transformer_encoder_1_dense_4_bias_read_readvariableopP
Lsavev2_transformer_encoder_1_layer_normalization_2_gamma_read_readvariableopO
Ksavev2_transformer_encoder_1_layer_normalization_2_beta_read_readvariableopP
Lsavev2_transformer_encoder_1_layer_normalization_3_gamma_read_readvariableopO
Ksavev2_transformer_encoder_1_layer_normalization_3_beta_read_readvariableopX
Tsavev2_transformer_encoder_2_multi_head_attention_2_query_kernel_read_readvariableopV
Rsavev2_transformer_encoder_2_multi_head_attention_2_query_bias_read_readvariableopV
Rsavev2_transformer_encoder_2_multi_head_attention_2_key_kernel_read_readvariableopT
Psavev2_transformer_encoder_2_multi_head_attention_2_key_bias_read_readvariableopX
Tsavev2_transformer_encoder_2_multi_head_attention_2_value_kernel_read_readvariableopV
Rsavev2_transformer_encoder_2_multi_head_attention_2_value_bias_read_readvariableopc
_savev2_transformer_encoder_2_multi_head_attention_2_attention_output_kernel_read_readvariableopa
]savev2_transformer_encoder_2_multi_head_attention_2_attention_output_bias_read_readvariableopC
?savev2_transformer_encoder_2_dense_5_kernel_read_readvariableopA
=savev2_transformer_encoder_2_dense_5_bias_read_readvariableopC
?savev2_transformer_encoder_2_dense_6_kernel_read_readvariableopA
=savev2_transformer_encoder_2_dense_6_bias_read_readvariableopP
Lsavev2_transformer_encoder_2_layer_normalization_4_gamma_read_readvariableopO
Ksavev2_transformer_encoder_2_layer_normalization_4_beta_read_readvariableopP
Lsavev2_transformer_encoder_2_layer_normalization_5_gamma_read_readvariableopO
Ksavev2_transformer_encoder_2_layer_normalization_5_beta_read_readvariableop
savev2_const_2

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:;*
dtype0*�
value�B�;B*input_norm/mean/.ATTRIBUTES/VARIABLE_VALUEB.input_norm/variance/.ATTRIBUTES/VARIABLE_VALUEB+input_norm/count/.ATTRIBUTES/VARIABLE_VALUEB,pos_embs/position/.ATTRIBUTES/VARIABLE_VALUEB%norm/gamma/.ATTRIBUTES/VARIABLE_VALUEB$norm/beta/.ATTRIBUTES/VARIABLE_VALUEB-final_layer/kernel/.ATTRIBUTES/VARIABLE_VALUEB+final_layer/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB'variables/48/.ATTRIBUTES/VARIABLE_VALUEB'variables/49/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:;*
dtype0*�
value�B~;B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �$
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:09savev2_transformer_normalization_mean_read_readvariableop=savev2_transformer_normalization_variance_read_readvariableop:savev2_transformer_normalization_count_read_readvariableopDsavev2_transformer_positional_embedding_position_read_readvariableopBsavev2_transformer_layer_normalization_6_gamma_read_readvariableopAsavev2_transformer_layer_normalization_6_beta_read_readvariableop5savev2_transformer_dense_7_kernel_read_readvariableop3savev2_transformer_dense_7_bias_read_readvariableopHsavev2_transformer_positional_embedding_dense_kernel_read_readvariableopFsavev2_transformer_positional_embedding_dense_bias_read_readvariableopPsavev2_transformer_encoder_multi_head_attention_query_kernel_read_readvariableopNsavev2_transformer_encoder_multi_head_attention_query_bias_read_readvariableopNsavev2_transformer_encoder_multi_head_attention_key_kernel_read_readvariableopLsavev2_transformer_encoder_multi_head_attention_key_bias_read_readvariableopPsavev2_transformer_encoder_multi_head_attention_value_kernel_read_readvariableopNsavev2_transformer_encoder_multi_head_attention_value_bias_read_readvariableop[savev2_transformer_encoder_multi_head_attention_attention_output_kernel_read_readvariableopYsavev2_transformer_encoder_multi_head_attention_attention_output_bias_read_readvariableop=savev2_transformer_encoder_dense_1_kernel_read_readvariableop;savev2_transformer_encoder_dense_1_bias_read_readvariableop=savev2_transformer_encoder_dense_2_kernel_read_readvariableop;savev2_transformer_encoder_dense_2_bias_read_readvariableopHsavev2_transformer_encoder_layer_normalization_gamma_read_readvariableopGsavev2_transformer_encoder_layer_normalization_beta_read_readvariableopJsavev2_transformer_encoder_layer_normalization_1_gamma_read_readvariableopIsavev2_transformer_encoder_layer_normalization_1_beta_read_readvariableopTsavev2_transformer_encoder_1_multi_head_attention_1_query_kernel_read_readvariableopRsavev2_transformer_encoder_1_multi_head_attention_1_query_bias_read_readvariableopRsavev2_transformer_encoder_1_multi_head_attention_1_key_kernel_read_readvariableopPsavev2_transformer_encoder_1_multi_head_attention_1_key_bias_read_readvariableopTsavev2_transformer_encoder_1_multi_head_attention_1_value_kernel_read_readvariableopRsavev2_transformer_encoder_1_multi_head_attention_1_value_bias_read_readvariableop_savev2_transformer_encoder_1_multi_head_attention_1_attention_output_kernel_read_readvariableop]savev2_transformer_encoder_1_multi_head_attention_1_attention_output_bias_read_readvariableop?savev2_transformer_encoder_1_dense_3_kernel_read_readvariableop=savev2_transformer_encoder_1_dense_3_bias_read_readvariableop?savev2_transformer_encoder_1_dense_4_kernel_read_readvariableop=savev2_transformer_encoder_1_dense_4_bias_read_readvariableopLsavev2_transformer_encoder_1_layer_normalization_2_gamma_read_readvariableopKsavev2_transformer_encoder_1_layer_normalization_2_beta_read_readvariableopLsavev2_transformer_encoder_1_layer_normalization_3_gamma_read_readvariableopKsavev2_transformer_encoder_1_layer_normalization_3_beta_read_readvariableopTsavev2_transformer_encoder_2_multi_head_attention_2_query_kernel_read_readvariableopRsavev2_transformer_encoder_2_multi_head_attention_2_query_bias_read_readvariableopRsavev2_transformer_encoder_2_multi_head_attention_2_key_kernel_read_readvariableopPsavev2_transformer_encoder_2_multi_head_attention_2_key_bias_read_readvariableopTsavev2_transformer_encoder_2_multi_head_attention_2_value_kernel_read_readvariableopRsavev2_transformer_encoder_2_multi_head_attention_2_value_bias_read_readvariableop_savev2_transformer_encoder_2_multi_head_attention_2_attention_output_kernel_read_readvariableop]savev2_transformer_encoder_2_multi_head_attention_2_attention_output_bias_read_readvariableop?savev2_transformer_encoder_2_dense_5_kernel_read_readvariableop=savev2_transformer_encoder_2_dense_5_bias_read_readvariableop?savev2_transformer_encoder_2_dense_6_kernel_read_readvariableop=savev2_transformer_encoder_2_dense_6_bias_read_readvariableopLsavev2_transformer_encoder_2_layer_normalization_4_gamma_read_readvariableopKsavev2_transformer_encoder_2_layer_normalization_4_beta_read_readvariableopLsavev2_transformer_encoder_2_layer_normalization_5_gamma_read_readvariableopKsavev2_transformer_encoder_2_layer_normalization_5_beta_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *I
dtypes?
=2;	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::: :��:�:�:	�::	�:�:��:	�:��:	�:��:	�:��:�:
��:�:
��:�:�:�:�:�:��:	�:��:	�:��:	�:��:�:
��:�:
��:�:�:�:�:�:��:	�:��:	�:��:	�:��:�:
��:�:
��:�:�:�:�:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :*&
$
_output_shapes
:��:!

_output_shapes	
:�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::%	!

_output_shapes
:	�:!


_output_shapes	
:�:*&
$
_output_shapes
:��:%!

_output_shapes
:	�:*&
$
_output_shapes
:��:%!

_output_shapes
:	�:*&
$
_output_shapes
:��:%!

_output_shapes
:	�:*&
$
_output_shapes
:��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:*&
$
_output_shapes
:��:%!

_output_shapes
:	�:*&
$
_output_shapes
:��:%!

_output_shapes
:	�:*&
$
_output_shapes
:��:% !

_output_shapes
:	�:*!&
$
_output_shapes
:��:!"

_output_shapes	
:�:&#"
 
_output_shapes
:
��:!$

_output_shapes	
:�:&%"
 
_output_shapes
:
��:!&

_output_shapes	
:�:!'

_output_shapes	
:�:!(

_output_shapes	
:�:!)

_output_shapes	
:�:!*

_output_shapes	
:�:*+&
$
_output_shapes
:��:%,!

_output_shapes
:	�:*-&
$
_output_shapes
:��:%.!

_output_shapes
:	�:*/&
$
_output_shapes
:��:%0!

_output_shapes
:	�:*1&
$
_output_shapes
:��:!2

_output_shapes	
:�:&3"
 
_output_shapes
:
��:!4

_output_shapes	
:�:&5"
 
_output_shapes
:
��:!6

_output_shapes	
:�:!7

_output_shapes	
:�:!8

_output_shapes	
:�:!9

_output_shapes	
:�:!:

_output_shapes	
:�:;

_output_shapes
: 
�=
�
E__inference_transformer_layer_call_and_return_conditional_losses_3556

inputs
normalization_sub_y
normalization_sqrt_x,
positional_embedding_3435:	�(
positional_embedding_3437:	�1
positional_embedding_3439:��
encoder_3442:	�
encoder_3444:	�$
encoder_3446:��
encoder_3448:	�$
encoder_3450:��
encoder_3452:	�$
encoder_3454:��
encoder_3456:	�$
encoder_3458:��
encoder_3460:	�
encoder_3462:	�
encoder_3464:	� 
encoder_3466:
��
encoder_3468:	� 
encoder_3470:
��
encoder_3472:	�
encoder_1_3476:	�
encoder_1_3478:	�&
encoder_1_3480:��!
encoder_1_3482:	�&
encoder_1_3484:��!
encoder_1_3486:	�&
encoder_1_3488:��!
encoder_1_3490:	�&
encoder_1_3492:��
encoder_1_3494:	�
encoder_1_3496:	�
encoder_1_3498:	�"
encoder_1_3500:
��
encoder_1_3502:	�"
encoder_1_3504:
��
encoder_1_3506:	�
encoder_2_3510:	�
encoder_2_3512:	�&
encoder_2_3514:��!
encoder_2_3516:	�&
encoder_2_3518:��!
encoder_2_3520:	�&
encoder_2_3522:��!
encoder_2_3524:	�&
encoder_2_3526:��
encoder_2_3528:	�
encoder_2_3530:	�
encoder_2_3532:	�"
encoder_2_3534:
��
encoder_2_3536:	�"
encoder_2_3538:
��
encoder_2_3540:	�)
layer_normalization_6_3544:	�)
layer_normalization_6_3546:	�
dense_7_3549:	�
dense_7_3551:
identity

identity_1��dense_7/StatefulPartitionedCall�encoder/StatefulPartitionedCall�!encoder_1/StatefulPartitionedCall�!encoder_2/StatefulPartitionedCall�-layer_normalization_6/StatefulPartitionedCall�,positional_embedding/StatefulPartitionedCalll
normalization/subSubinputsnormalization_sub_y*
T0*,
_output_shapes
:����������]
normalization/SqrtSqrtnormalization_sqrt_x*
T0*"
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*"
_output_shapes
:�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*,
_output_shapes
:�����������
,positional_embedding/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0positional_embedding_3435positional_embedding_3437positional_embedding_3439*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_positional_embedding_layer_call_and_return_conditional_losses_3293�
encoder/StatefulPartitionedCallStatefulPartitionedCall5positional_embedding/StatefulPartitionedCall:output:0encoder_3442encoder_3444encoder_3446encoder_3448encoder_3450encoder_3452encoder_3454encoder_3456encoder_3458encoder_3460encoder_3462encoder_3464encoder_3466encoder_3468encoder_3470encoder_3472*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_3209�
!encoder_1/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0encoder_1_3476encoder_1_3478encoder_1_3480encoder_1_3482encoder_1_3484encoder_1_3486encoder_1_3488encoder_1_3490encoder_1_3492encoder_1_3494encoder_1_3496encoder_1_3498encoder_1_3500encoder_1_3502encoder_1_3504encoder_1_3506*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_1_layer_call_and_return_conditional_losses_2998�
!encoder_2/StatefulPartitionedCallStatefulPartitionedCall*encoder_1/StatefulPartitionedCall:output:0encoder_2_3510encoder_2_3512encoder_2_3514encoder_2_3516encoder_2_3518encoder_2_3520encoder_2_3522encoder_2_3524encoder_2_3526encoder_2_3528encoder_2_3530encoder_2_3532encoder_2_3534encoder_2_3536encoder_2_3538encoder_2_3540*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_2_layer_call_and_return_conditional_losses_2787�
-layer_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*encoder_2/StatefulPartitionedCall:output:0layer_normalization_6_3544layer_normalization_6_3546*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2430�
dense_7/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_6/StatefulPartitionedCall:output:0dense_7_3549dense_7_3551*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_2466|
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:�����������

Identity_1Identity*encoder_2/StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp ^dense_7/StatefulPartitionedCall ^encoder/StatefulPartitionedCall"^encoder_1/StatefulPartitionedCall"^encoder_2/StatefulPartitionedCall.^layer_normalization_6/StatefulPartitionedCall-^positional_embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2F
!encoder_1/StatefulPartitionedCall!encoder_1/StatefulPartitionedCall2F
!encoder_2/StatefulPartitionedCall!encoder_2/StatefulPartitionedCall2^
-layer_normalization_6/StatefulPartitionedCall-layer_normalization_6/StatefulPartitionedCall2\
,positional_embedding/StatefulPartitionedCall,positional_embedding/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
�
�
A__inference_dense_7_layer_call_and_return_conditional_losses_5524

inputs4
!tensordot_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:������������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:����������z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
(__inference_encoder_1_layer_call_fn_5908

inputs
unknown:	�
	unknown_0:	�!
	unknown_1:��
	unknown_2:	�!
	unknown_3:��
	unknown_4:	�!
	unknown_5:��
	unknown_6:	�!
	unknown_7:��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_1_layer_call_and_return_conditional_losses_2203u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:�����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�H
__inference__wrapped_model_1842
input_1#
transformer_normalization_sub_y$
 transformer_normalization_sqrt_x[
Htransformer_positional_embedding_dense_tensordot_readvariableop_resource:	�U
Ftransformer_positional_embedding_dense_biasadd_readvariableop_resource:	�X
@transformer_positional_embedding_add_add_readvariableop_resource:��\
Mtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource:	�X
Itransformer_encoder_layer_normalization_batchnorm_readvariableop_resource:	�l
Ttransformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource:��]
Jtransformer_encoder_multi_head_attention_query_add_readvariableop_resource:	�j
Rtransformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource:��[
Htransformer_encoder_multi_head_attention_key_add_readvariableop_resource:	�l
Ttransformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource:��]
Jtransformer_encoder_multi_head_attention_value_add_readvariableop_resource:	�w
_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:��d
Utransformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource:	�^
Otransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:	�Z
Ktransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource:	�Q
=transformer_encoder_dense_1_tensordot_readvariableop_resource:
��J
;transformer_encoder_dense_1_biasadd_readvariableop_resource:	�Q
=transformer_encoder_dense_2_tensordot_readvariableop_resource:
��J
;transformer_encoder_dense_2_biasadd_readvariableop_resource:	�`
Qtransformer_encoder_1_layer_normalization_2_batchnorm_mul_readvariableop_resource:	�\
Mtransformer_encoder_1_layer_normalization_2_batchnorm_readvariableop_resource:	�p
Xtransformer_encoder_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:��a
Ntransformer_encoder_1_multi_head_attention_1_query_add_readvariableop_resource:	�n
Vtransformer_encoder_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:��_
Ltransformer_encoder_1_multi_head_attention_1_key_add_readvariableop_resource:	�p
Xtransformer_encoder_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:��a
Ntransformer_encoder_1_multi_head_attention_1_value_add_readvariableop_resource:	�{
ctransformer_encoder_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:��h
Ytransformer_encoder_1_multi_head_attention_1_attention_output_add_readvariableop_resource:	�`
Qtransformer_encoder_1_layer_normalization_3_batchnorm_mul_readvariableop_resource:	�\
Mtransformer_encoder_1_layer_normalization_3_batchnorm_readvariableop_resource:	�S
?transformer_encoder_1_dense_3_tensordot_readvariableop_resource:
��L
=transformer_encoder_1_dense_3_biasadd_readvariableop_resource:	�S
?transformer_encoder_1_dense_4_tensordot_readvariableop_resource:
��L
=transformer_encoder_1_dense_4_biasadd_readvariableop_resource:	�`
Qtransformer_encoder_2_layer_normalization_4_batchnorm_mul_readvariableop_resource:	�\
Mtransformer_encoder_2_layer_normalization_4_batchnorm_readvariableop_resource:	�p
Xtransformer_encoder_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource:��a
Ntransformer_encoder_2_multi_head_attention_2_query_add_readvariableop_resource:	�n
Vtransformer_encoder_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource:��_
Ltransformer_encoder_2_multi_head_attention_2_key_add_readvariableop_resource:	�p
Xtransformer_encoder_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource:��a
Ntransformer_encoder_2_multi_head_attention_2_value_add_readvariableop_resource:	�{
ctransformer_encoder_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:��h
Ytransformer_encoder_2_multi_head_attention_2_attention_output_add_readvariableop_resource:	�`
Qtransformer_encoder_2_layer_normalization_5_batchnorm_mul_readvariableop_resource:	�\
Mtransformer_encoder_2_layer_normalization_5_batchnorm_readvariableop_resource:	�S
?transformer_encoder_2_dense_5_tensordot_readvariableop_resource:
��L
=transformer_encoder_2_dense_5_biasadd_readvariableop_resource:	�S
?transformer_encoder_2_dense_6_tensordot_readvariableop_resource:
��L
=transformer_encoder_2_dense_6_biasadd_readvariableop_resource:	�V
Gtransformer_layer_normalization_6_batchnorm_mul_readvariableop_resource:	�R
Ctransformer_layer_normalization_6_batchnorm_readvariableop_resource:	�H
5transformer_dense_7_tensordot_readvariableop_resource:	�A
3transformer_dense_7_biasadd_readvariableop_resource:
identity

identity_1��*transformer/dense_7/BiasAdd/ReadVariableOp�,transformer/dense_7/Tensordot/ReadVariableOp�2transformer/encoder/dense_1/BiasAdd/ReadVariableOp�4transformer/encoder/dense_1/Tensordot/ReadVariableOp�2transformer/encoder/dense_2/BiasAdd/ReadVariableOp�4transformer/encoder/dense_2/Tensordot/ReadVariableOp�@transformer/encoder/layer_normalization/batchnorm/ReadVariableOp�Dtransformer/encoder/layer_normalization/batchnorm/mul/ReadVariableOp�Btransformer/encoder/layer_normalization_1/batchnorm/ReadVariableOp�Ftransformer/encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp�Ltransformer/encoder/multi_head_attention/attention_output/add/ReadVariableOp�Vtransformer/encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�?transformer/encoder/multi_head_attention/key/add/ReadVariableOp�Itransformer/encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp�Atransformer/encoder/multi_head_attention/query/add/ReadVariableOp�Ktransformer/encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp�Atransformer/encoder/multi_head_attention/value/add/ReadVariableOp�Ktransformer/encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp�4transformer/encoder_1/dense_3/BiasAdd/ReadVariableOp�6transformer/encoder_1/dense_3/Tensordot/ReadVariableOp�4transformer/encoder_1/dense_4/BiasAdd/ReadVariableOp�6transformer/encoder_1/dense_4/Tensordot/ReadVariableOp�Dtransformer/encoder_1/layer_normalization_2/batchnorm/ReadVariableOp�Htransformer/encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp�Dtransformer/encoder_1/layer_normalization_3/batchnorm/ReadVariableOp�Htransformer/encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp�Ptransformer/encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp�Ztransformer/encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�Ctransformer/encoder_1/multi_head_attention_1/key/add/ReadVariableOp�Mtransformer/encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�Etransformer/encoder_1/multi_head_attention_1/query/add/ReadVariableOp�Otransformer/encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�Etransformer/encoder_1/multi_head_attention_1/value/add/ReadVariableOp�Otransformer/encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp�4transformer/encoder_2/dense_5/BiasAdd/ReadVariableOp�6transformer/encoder_2/dense_5/Tensordot/ReadVariableOp�4transformer/encoder_2/dense_6/BiasAdd/ReadVariableOp�6transformer/encoder_2/dense_6/Tensordot/ReadVariableOp�Dtransformer/encoder_2/layer_normalization_4/batchnorm/ReadVariableOp�Htransformer/encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp�Dtransformer/encoder_2/layer_normalization_5/batchnorm/ReadVariableOp�Htransformer/encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp�Ptransformer/encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp�Ztransformer/encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp�Ctransformer/encoder_2/multi_head_attention_2/key/add/ReadVariableOp�Mtransformer/encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp�Etransformer/encoder_2/multi_head_attention_2/query/add/ReadVariableOp�Otransformer/encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp�Etransformer/encoder_2/multi_head_attention_2/value/add/ReadVariableOp�Otransformer/encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp�:transformer/layer_normalization_6/batchnorm/ReadVariableOp�>transformer/layer_normalization_6/batchnorm/mul/ReadVariableOp�7transformer/positional_embedding/add/add/ReadVariableOp�=transformer/positional_embedding/dense/BiasAdd/ReadVariableOp�?transformer/positional_embedding/dense/Tensordot/ReadVariableOp�
transformer/normalization/subSubinput_1transformer_normalization_sub_y*
T0*,
_output_shapes
:����������u
transformer/normalization/SqrtSqrt transformer_normalization_sqrt_x*
T0*"
_output_shapes
:h
#transformer/normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
!transformer/normalization/MaximumMaximum"transformer/normalization/Sqrt:y:0,transformer/normalization/Maximum/y:output:0*
T0*"
_output_shapes
:�
!transformer/normalization/truedivRealDiv!transformer/normalization/sub:z:0%transformer/normalization/Maximum:z:0*
T0*,
_output_shapes
:�����������
?transformer/positional_embedding/dense/Tensordot/ReadVariableOpReadVariableOpHtransformer_positional_embedding_dense_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0
5transformer/positional_embedding/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
5transformer/positional_embedding/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
6transformer/positional_embedding/dense/Tensordot/ShapeShape%transformer/normalization/truediv:z:0*
T0*
_output_shapes
:�
>transformer/positional_embedding/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer/positional_embedding/dense/Tensordot/GatherV2GatherV2?transformer/positional_embedding/dense/Tensordot/Shape:output:0>transformer/positional_embedding/dense/Tensordot/free:output:0Gtransformer/positional_embedding/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
@transformer/positional_embedding/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
;transformer/positional_embedding/dense/Tensordot/GatherV2_1GatherV2?transformer/positional_embedding/dense/Tensordot/Shape:output:0>transformer/positional_embedding/dense/Tensordot/axes:output:0Itransformer/positional_embedding/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
6transformer/positional_embedding/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
5transformer/positional_embedding/dense/Tensordot/ProdProdBtransformer/positional_embedding/dense/Tensordot/GatherV2:output:0?transformer/positional_embedding/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: �
8transformer/positional_embedding/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
7transformer/positional_embedding/dense/Tensordot/Prod_1ProdDtransformer/positional_embedding/dense/Tensordot/GatherV2_1:output:0Atransformer/positional_embedding/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ~
<transformer/positional_embedding/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer/positional_embedding/dense/Tensordot/concatConcatV2>transformer/positional_embedding/dense/Tensordot/free:output:0>transformer/positional_embedding/dense/Tensordot/axes:output:0Etransformer/positional_embedding/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
6transformer/positional_embedding/dense/Tensordot/stackPack>transformer/positional_embedding/dense/Tensordot/Prod:output:0@transformer/positional_embedding/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
:transformer/positional_embedding/dense/Tensordot/transpose	Transpose%transformer/normalization/truediv:z:0@transformer/positional_embedding/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
8transformer/positional_embedding/dense/Tensordot/ReshapeReshape>transformer/positional_embedding/dense/Tensordot/transpose:y:0?transformer/positional_embedding/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
7transformer/positional_embedding/dense/Tensordot/MatMulMatMulAtransformer/positional_embedding/dense/Tensordot/Reshape:output:0Gtransformer/positional_embedding/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8transformer/positional_embedding/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
>transformer/positional_embedding/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer/positional_embedding/dense/Tensordot/concat_1ConcatV2Btransformer/positional_embedding/dense/Tensordot/GatherV2:output:0Atransformer/positional_embedding/dense/Tensordot/Const_2:output:0Gtransformer/positional_embedding/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
0transformer/positional_embedding/dense/TensordotReshapeAtransformer/positional_embedding/dense/Tensordot/MatMul:product:0Btransformer/positional_embedding/dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
=transformer/positional_embedding/dense/BiasAdd/ReadVariableOpReadVariableOpFtransformer_positional_embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.transformer/positional_embedding/dense/BiasAddBiasAdd9transformer/positional_embedding/dense/Tensordot:output:0Etransformer/positional_embedding/dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
7transformer/positional_embedding/add/add/ReadVariableOpReadVariableOp@transformer_positional_embedding_add_add_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(transformer/positional_embedding/add/addAddV27transformer/positional_embedding/dense/BiasAdd:output:0?transformer/positional_embedding/add/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
1transformer/positional_embedding/dropout/IdentityIdentity,transformer/positional_embedding/add/add:z:0*
T0*-
_output_shapes
:������������
Ftransformer/encoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
4transformer/encoder/layer_normalization/moments/meanMean:transformer/positional_embedding/dropout/Identity:output:0Otransformer/encoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
<transformer/encoder/layer_normalization/moments/StopGradientStopGradient=transformer/encoder/layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:�����������
Atransformer/encoder/layer_normalization/moments/SquaredDifferenceSquaredDifference:transformer/positional_embedding/dropout/Identity:output:0Etransformer/encoder/layer_normalization/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Jtransformer/encoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer/encoder/layer_normalization/moments/varianceMeanEtransformer/encoder/layer_normalization/moments/SquaredDifference:z:0Stransformer/encoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(|
7transformer/encoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
5transformer/encoder/layer_normalization/batchnorm/addAddV2Atransformer/encoder/layer_normalization/moments/variance:output:0@transformer/encoder/layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
7transformer/encoder/layer_normalization/batchnorm/RsqrtRsqrt9transformer/encoder/layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
Dtransformer/encoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer/encoder/layer_normalization/batchnorm/mulMul;transformer/encoder/layer_normalization/batchnorm/Rsqrt:y:0Ltransformer/encoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
7transformer/encoder/layer_normalization/batchnorm/mul_1Mul:transformer/positional_embedding/dropout/Identity:output:09transformer/encoder/layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
7transformer/encoder/layer_normalization/batchnorm/mul_2Mul=transformer/encoder/layer_normalization/moments/mean:output:09transformer/encoder/layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
@transformer/encoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOpItransformer_encoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer/encoder/layer_normalization/batchnorm/subSubHtransformer/encoder/layer_normalization/batchnorm/ReadVariableOp:value:0;transformer/encoder/layer_normalization/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
7transformer/encoder/layer_normalization/batchnorm/add_1AddV2;transformer/encoder/layer_normalization/batchnorm/mul_1:z:09transformer/encoder/layer_normalization/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
Ktransformer/encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_encoder_multi_head_attention_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
<transformer/encoder/multi_head_attention/query/einsum/EinsumEinsum;transformer/encoder/layer_normalization/batchnorm/add_1:z:0Stransformer/encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
Atransformer/encoder/multi_head_attention/query/add/ReadVariableOpReadVariableOpJtransformer_encoder_multi_head_attention_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
2transformer/encoder/multi_head_attention/query/addAddV2Etransformer/encoder/multi_head_attention/query/einsum/Einsum:output:0Itransformer/encoder/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Itransformer/encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpRtransformer_encoder_multi_head_attention_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
:transformer/encoder/multi_head_attention/key/einsum/EinsumEinsum;transformer/encoder/layer_normalization/batchnorm/add_1:z:0Qtransformer/encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
?transformer/encoder/multi_head_attention/key/add/ReadVariableOpReadVariableOpHtransformer_encoder_multi_head_attention_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
0transformer/encoder/multi_head_attention/key/addAddV2Ctransformer/encoder/multi_head_attention/key/einsum/Einsum:output:0Gtransformer/encoder/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Ktransformer/encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_encoder_multi_head_attention_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
<transformer/encoder/multi_head_attention/value/einsum/EinsumEinsum;transformer/encoder/layer_normalization/batchnorm/add_1:z:0Stransformer/encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
Atransformer/encoder/multi_head_attention/value/add/ReadVariableOpReadVariableOpJtransformer_encoder_multi_head_attention_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
2transformer/encoder/multi_head_attention/value/addAddV2Etransformer/encoder/multi_head_attention/value/einsum/Einsum:output:0Itransformer/encoder/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������s
.transformer/encoder/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
,transformer/encoder/multi_head_attention/MulMul6transformer/encoder/multi_head_attention/query/add:z:07transformer/encoder/multi_head_attention/Mul/y:output:0*
T0*1
_output_shapes
:������������
6transformer/encoder/multi_head_attention/einsum/EinsumEinsum4transformer/encoder/multi_head_attention/key/add:z:00transformer/encoder/multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
8transformer/encoder/multi_head_attention/softmax/SoftmaxSoftmax?transformer/encoder/multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
;transformer/encoder/multi_head_attention/dropout_7/IdentityIdentityBtransformer/encoder/multi_head_attention/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:������������
8transformer/encoder/multi_head_attention/einsum_1/EinsumEinsumDtransformer/encoder/multi_head_attention/dropout_7/Identity:output:06transformer/encoder/multi_head_attention/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Vtransformer/encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp_transformer_encoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
Gtransformer/encoder/multi_head_attention/attention_output/einsum/EinsumEinsumAtransformer/encoder/multi_head_attention/einsum_1/Einsum:output:0^transformer/encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
Ltransformer/encoder/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpUtransformer_encoder_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=transformer/encoder/multi_head_attention/attention_output/addAddV2Ptransformer/encoder/multi_head_attention/attention_output/einsum/Einsum:output:0Ttransformer/encoder/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
&transformer/encoder/dropout_1/IdentityIdentityAtransformer/encoder/multi_head_attention/attention_output/add:z:0*
T0*-
_output_shapes
:������������
transformer/encoder/add_1/addAddV2/transformer/encoder/dropout_1/Identity:output:0:transformer/positional_embedding/dropout/Identity:output:0*
T0*-
_output_shapes
:������������
Htransformer/encoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
6transformer/encoder/layer_normalization_1/moments/meanMean!transformer/encoder/add_1/add:z:0Qtransformer/encoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
>transformer/encoder/layer_normalization_1/moments/StopGradientStopGradient?transformer/encoder/layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:�����������
Ctransformer/encoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifference!transformer/encoder/add_1/add:z:0Gtransformer/encoder/layer_normalization_1/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Ltransformer/encoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
:transformer/encoder/layer_normalization_1/moments/varianceMeanGtransformer/encoder/layer_normalization_1/moments/SquaredDifference:z:0Utransformer/encoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(~
9transformer/encoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
7transformer/encoder/layer_normalization_1/batchnorm/addAddV2Ctransformer/encoder/layer_normalization_1/moments/variance:output:0Btransformer/encoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
9transformer/encoder/layer_normalization_1/batchnorm/RsqrtRsqrt;transformer/encoder/layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
Ftransformer/encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7transformer/encoder/layer_normalization_1/batchnorm/mulMul=transformer/encoder/layer_normalization_1/batchnorm/Rsqrt:y:0Ntransformer/encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
9transformer/encoder/layer_normalization_1/batchnorm/mul_1Mul!transformer/encoder/add_1/add:z:0;transformer/encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
9transformer/encoder/layer_normalization_1/batchnorm/mul_2Mul?transformer/encoder/layer_normalization_1/moments/mean:output:0;transformer/encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
Btransformer/encoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpKtransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7transformer/encoder/layer_normalization_1/batchnorm/subSubJtransformer/encoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0=transformer/encoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
9transformer/encoder/layer_normalization_1/batchnorm/add_1AddV2=transformer/encoder/layer_normalization_1/batchnorm/mul_1:z:0;transformer/encoder/layer_normalization_1/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
4transformer/encoder/dense_1/Tensordot/ReadVariableOpReadVariableOp=transformer_encoder_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0t
*transformer/encoder/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:{
*transformer/encoder/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
+transformer/encoder/dense_1/Tensordot/ShapeShape=transformer/encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:u
3transformer/encoder/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.transformer/encoder/dense_1/Tensordot/GatherV2GatherV24transformer/encoder/dense_1/Tensordot/Shape:output:03transformer/encoder/dense_1/Tensordot/free:output:0<transformer/encoder/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:w
5transformer/encoder/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0transformer/encoder/dense_1/Tensordot/GatherV2_1GatherV24transformer/encoder/dense_1/Tensordot/Shape:output:03transformer/encoder/dense_1/Tensordot/axes:output:0>transformer/encoder/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
+transformer/encoder/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*transformer/encoder/dense_1/Tensordot/ProdProd7transformer/encoder/dense_1/Tensordot/GatherV2:output:04transformer/encoder/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: w
-transformer/encoder/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
,transformer/encoder/dense_1/Tensordot/Prod_1Prod9transformer/encoder/dense_1/Tensordot/GatherV2_1:output:06transformer/encoder/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: s
1transformer/encoder/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,transformer/encoder/dense_1/Tensordot/concatConcatV23transformer/encoder/dense_1/Tensordot/free:output:03transformer/encoder/dense_1/Tensordot/axes:output:0:transformer/encoder/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
+transformer/encoder/dense_1/Tensordot/stackPack3transformer/encoder/dense_1/Tensordot/Prod:output:05transformer/encoder/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
/transformer/encoder/dense_1/Tensordot/transpose	Transpose=transformer/encoder/layer_normalization_1/batchnorm/add_1:z:05transformer/encoder/dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
-transformer/encoder/dense_1/Tensordot/ReshapeReshape3transformer/encoder/dense_1/Tensordot/transpose:y:04transformer/encoder/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
,transformer/encoder/dense_1/Tensordot/MatMulMatMul6transformer/encoder/dense_1/Tensordot/Reshape:output:0<transformer/encoder/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������x
-transformer/encoder/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�u
3transformer/encoder/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.transformer/encoder/dense_1/Tensordot/concat_1ConcatV27transformer/encoder/dense_1/Tensordot/GatherV2:output:06transformer/encoder/dense_1/Tensordot/Const_2:output:0<transformer/encoder/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
%transformer/encoder/dense_1/TensordotReshape6transformer/encoder/dense_1/Tensordot/MatMul:product:07transformer/encoder/dense_1/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
2transformer/encoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp;transformer_encoder_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#transformer/encoder/dense_1/BiasAddBiasAdd.transformer/encoder/dense_1/Tensordot:output:0:transformer/encoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������k
&transformer/encoder/dense_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
$transformer/encoder/dense_1/Gelu/mulMul/transformer/encoder/dense_1/Gelu/mul/x:output:0,transformer/encoder/dense_1/BiasAdd:output:0*
T0*-
_output_shapes
:�����������l
'transformer/encoder/dense_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
(transformer/encoder/dense_1/Gelu/truedivRealDiv,transformer/encoder/dense_1/BiasAdd:output:00transformer/encoder/dense_1/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:������������
$transformer/encoder/dense_1/Gelu/ErfErf,transformer/encoder/dense_1/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������k
&transformer/encoder/dense_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$transformer/encoder/dense_1/Gelu/addAddV2/transformer/encoder/dense_1/Gelu/add/x:output:0(transformer/encoder/dense_1/Gelu/Erf:y:0*
T0*-
_output_shapes
:������������
&transformer/encoder/dense_1/Gelu/mul_1Mul(transformer/encoder/dense_1/Gelu/mul:z:0(transformer/encoder/dense_1/Gelu/add:z:0*
T0*-
_output_shapes
:������������
4transformer/encoder/dense_2/Tensordot/ReadVariableOpReadVariableOp=transformer_encoder_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0t
*transformer/encoder/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:{
*transformer/encoder/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
+transformer/encoder/dense_2/Tensordot/ShapeShape*transformer/encoder/dense_1/Gelu/mul_1:z:0*
T0*
_output_shapes
:u
3transformer/encoder/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.transformer/encoder/dense_2/Tensordot/GatherV2GatherV24transformer/encoder/dense_2/Tensordot/Shape:output:03transformer/encoder/dense_2/Tensordot/free:output:0<transformer/encoder/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:w
5transformer/encoder/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0transformer/encoder/dense_2/Tensordot/GatherV2_1GatherV24transformer/encoder/dense_2/Tensordot/Shape:output:03transformer/encoder/dense_2/Tensordot/axes:output:0>transformer/encoder/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
+transformer/encoder/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*transformer/encoder/dense_2/Tensordot/ProdProd7transformer/encoder/dense_2/Tensordot/GatherV2:output:04transformer/encoder/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: w
-transformer/encoder/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
,transformer/encoder/dense_2/Tensordot/Prod_1Prod9transformer/encoder/dense_2/Tensordot/GatherV2_1:output:06transformer/encoder/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: s
1transformer/encoder/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,transformer/encoder/dense_2/Tensordot/concatConcatV23transformer/encoder/dense_2/Tensordot/free:output:03transformer/encoder/dense_2/Tensordot/axes:output:0:transformer/encoder/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
+transformer/encoder/dense_2/Tensordot/stackPack3transformer/encoder/dense_2/Tensordot/Prod:output:05transformer/encoder/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
/transformer/encoder/dense_2/Tensordot/transpose	Transpose*transformer/encoder/dense_1/Gelu/mul_1:z:05transformer/encoder/dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
-transformer/encoder/dense_2/Tensordot/ReshapeReshape3transformer/encoder/dense_2/Tensordot/transpose:y:04transformer/encoder/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
,transformer/encoder/dense_2/Tensordot/MatMulMatMul6transformer/encoder/dense_2/Tensordot/Reshape:output:0<transformer/encoder/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������x
-transformer/encoder/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�u
3transformer/encoder/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.transformer/encoder/dense_2/Tensordot/concat_1ConcatV27transformer/encoder/dense_2/Tensordot/GatherV2:output:06transformer/encoder/dense_2/Tensordot/Const_2:output:0<transformer/encoder/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
%transformer/encoder/dense_2/TensordotReshape6transformer/encoder/dense_2/Tensordot/MatMul:product:07transformer/encoder/dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
2transformer/encoder/dense_2/BiasAdd/ReadVariableOpReadVariableOp;transformer_encoder_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#transformer/encoder/dense_2/BiasAddBiasAdd.transformer/encoder/dense_2/Tensordot:output:0:transformer/encoder/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
&transformer/encoder/dropout_2/IdentityIdentity,transformer/encoder/dense_2/BiasAdd:output:0*
T0*-
_output_shapes
:������������
transformer/encoder/add_2/addAddV2!transformer/encoder/add_1/add:z:0/transformer/encoder/dropout_2/Identity:output:0*
T0*-
_output_shapes
:������������
Jtransformer/encoder_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer/encoder_1/layer_normalization_2/moments/meanMean!transformer/encoder/add_2/add:z:0Stransformer/encoder_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
@transformer/encoder_1/layer_normalization_2/moments/StopGradientStopGradientAtransformer/encoder_1/layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:�����������
Etransformer/encoder_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifference!transformer/encoder/add_2/add:z:0Itransformer/encoder_1/layer_normalization_2/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Ntransformer/encoder_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
<transformer/encoder_1/layer_normalization_2/moments/varianceMeanItransformer/encoder_1/layer_normalization_2/moments/SquaredDifference:z:0Wtransformer/encoder_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
;transformer/encoder_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
9transformer/encoder_1/layer_normalization_2/batchnorm/addAddV2Etransformer/encoder_1/layer_normalization_2/moments/variance:output:0Dtransformer/encoder_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
;transformer/encoder_1/layer_normalization_2/batchnorm/RsqrtRsqrt=transformer/encoder_1/layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
Htransformer/encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9transformer/encoder_1/layer_normalization_2/batchnorm/mulMul?transformer/encoder_1/layer_normalization_2/batchnorm/Rsqrt:y:0Ptransformer/encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
;transformer/encoder_1/layer_normalization_2/batchnorm/mul_1Mul!transformer/encoder/add_2/add:z:0=transformer/encoder_1/layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
;transformer/encoder_1/layer_normalization_2/batchnorm/mul_2MulAtransformer/encoder_1/layer_normalization_2/moments/mean:output:0=transformer/encoder_1/layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
Dtransformer/encoder_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9transformer/encoder_1/layer_normalization_2/batchnorm/subSubLtransformer/encoder_1/layer_normalization_2/batchnorm/ReadVariableOp:value:0?transformer/encoder_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
;transformer/encoder_1/layer_normalization_2/batchnorm/add_1AddV2?transformer/encoder_1/layer_normalization_2/batchnorm/mul_1:z:0=transformer/encoder_1/layer_normalization_2/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
Otransformer/encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
@transformer/encoder_1/multi_head_attention_1/query/einsum/EinsumEinsum?transformer/encoder_1/layer_normalization_2/batchnorm/add_1:z:0Wtransformer/encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
Etransformer/encoder_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpNtransformer_encoder_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
6transformer/encoder_1/multi_head_attention_1/query/addAddV2Itransformer/encoder_1/multi_head_attention_1/query/einsum/Einsum:output:0Mtransformer/encoder_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Mtransformer/encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
>transformer/encoder_1/multi_head_attention_1/key/einsum/EinsumEinsum?transformer/encoder_1/layer_normalization_2/batchnorm/add_1:z:0Utransformer/encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
Ctransformer/encoder_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpLtransformer_encoder_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
4transformer/encoder_1/multi_head_attention_1/key/addAddV2Gtransformer/encoder_1/multi_head_attention_1/key/einsum/Einsum:output:0Ktransformer/encoder_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Otransformer/encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
@transformer/encoder_1/multi_head_attention_1/value/einsum/EinsumEinsum?transformer/encoder_1/layer_normalization_2/batchnorm/add_1:z:0Wtransformer/encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
Etransformer/encoder_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpNtransformer_encoder_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
6transformer/encoder_1/multi_head_attention_1/value/addAddV2Itransformer/encoder_1/multi_head_attention_1/value/einsum/Einsum:output:0Mtransformer/encoder_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������w
2transformer/encoder_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
0transformer/encoder_1/multi_head_attention_1/MulMul:transformer/encoder_1/multi_head_attention_1/query/add:z:0;transformer/encoder_1/multi_head_attention_1/Mul/y:output:0*
T0*1
_output_shapes
:������������
:transformer/encoder_1/multi_head_attention_1/einsum/EinsumEinsum8transformer/encoder_1/multi_head_attention_1/key/add:z:04transformer/encoder_1/multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
>transformer/encoder_1/multi_head_attention_1/softmax_1/SoftmaxSoftmaxCtransformer/encoder_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
?transformer/encoder_1/multi_head_attention_1/dropout_8/IdentityIdentityHtransformer/encoder_1/multi_head_attention_1/softmax_1/Softmax:softmax:0*
T0*1
_output_shapes
:������������
<transformer/encoder_1/multi_head_attention_1/einsum_1/EinsumEinsumHtransformer/encoder_1/multi_head_attention_1/dropout_8/Identity:output:0:transformer/encoder_1/multi_head_attention_1/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Ztransformer/encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_encoder_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
Ktransformer/encoder_1/multi_head_attention_1/attention_output/einsum/EinsumEinsumEtransformer/encoder_1/multi_head_attention_1/einsum_1/Einsum:output:0btransformer/encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
Ptransformer/encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpYtransformer_encoder_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Atransformer/encoder_1/multi_head_attention_1/attention_output/addAddV2Ttransformer/encoder_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0Xtransformer/encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
(transformer/encoder_1/dropout_3/IdentityIdentityEtransformer/encoder_1/multi_head_attention_1/attention_output/add:z:0*
T0*-
_output_shapes
:������������
transformer/encoder_1/add_3/addAddV21transformer/encoder_1/dropout_3/Identity:output:0!transformer/encoder/add_2/add:z:0*
T0*-
_output_shapes
:������������
Jtransformer/encoder_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer/encoder_1/layer_normalization_3/moments/meanMean#transformer/encoder_1/add_3/add:z:0Stransformer/encoder_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
@transformer/encoder_1/layer_normalization_3/moments/StopGradientStopGradientAtransformer/encoder_1/layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:�����������
Etransformer/encoder_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifference#transformer/encoder_1/add_3/add:z:0Itransformer/encoder_1/layer_normalization_3/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Ntransformer/encoder_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
<transformer/encoder_1/layer_normalization_3/moments/varianceMeanItransformer/encoder_1/layer_normalization_3/moments/SquaredDifference:z:0Wtransformer/encoder_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
;transformer/encoder_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
9transformer/encoder_1/layer_normalization_3/batchnorm/addAddV2Etransformer/encoder_1/layer_normalization_3/moments/variance:output:0Dtransformer/encoder_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
;transformer/encoder_1/layer_normalization_3/batchnorm/RsqrtRsqrt=transformer/encoder_1/layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
Htransformer/encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9transformer/encoder_1/layer_normalization_3/batchnorm/mulMul?transformer/encoder_1/layer_normalization_3/batchnorm/Rsqrt:y:0Ptransformer/encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
;transformer/encoder_1/layer_normalization_3/batchnorm/mul_1Mul#transformer/encoder_1/add_3/add:z:0=transformer/encoder_1/layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
;transformer/encoder_1/layer_normalization_3/batchnorm/mul_2MulAtransformer/encoder_1/layer_normalization_3/moments/mean:output:0=transformer/encoder_1/layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
Dtransformer/encoder_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9transformer/encoder_1/layer_normalization_3/batchnorm/subSubLtransformer/encoder_1/layer_normalization_3/batchnorm/ReadVariableOp:value:0?transformer/encoder_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
;transformer/encoder_1/layer_normalization_3/batchnorm/add_1AddV2?transformer/encoder_1/layer_normalization_3/batchnorm/mul_1:z:0=transformer/encoder_1/layer_normalization_3/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
6transformer/encoder_1/dense_3/Tensordot/ReadVariableOpReadVariableOp?transformer_encoder_1_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0v
,transformer/encoder_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:}
,transformer/encoder_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
-transformer/encoder_1/dense_3/Tensordot/ShapeShape?transformer/encoder_1/layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
:w
5transformer/encoder_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0transformer/encoder_1/dense_3/Tensordot/GatherV2GatherV26transformer/encoder_1/dense_3/Tensordot/Shape:output:05transformer/encoder_1/dense_3/Tensordot/free:output:0>transformer/encoder_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
7transformer/encoder_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2transformer/encoder_1/dense_3/Tensordot/GatherV2_1GatherV26transformer/encoder_1/dense_3/Tensordot/Shape:output:05transformer/encoder_1/dense_3/Tensordot/axes:output:0@transformer/encoder_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:w
-transformer/encoder_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
,transformer/encoder_1/dense_3/Tensordot/ProdProd9transformer/encoder_1/dense_3/Tensordot/GatherV2:output:06transformer/encoder_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: y
/transformer/encoder_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
.transformer/encoder_1/dense_3/Tensordot/Prod_1Prod;transformer/encoder_1/dense_3/Tensordot/GatherV2_1:output:08transformer/encoder_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: u
3transformer/encoder_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.transformer/encoder_1/dense_3/Tensordot/concatConcatV25transformer/encoder_1/dense_3/Tensordot/free:output:05transformer/encoder_1/dense_3/Tensordot/axes:output:0<transformer/encoder_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
-transformer/encoder_1/dense_3/Tensordot/stackPack5transformer/encoder_1/dense_3/Tensordot/Prod:output:07transformer/encoder_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
1transformer/encoder_1/dense_3/Tensordot/transpose	Transpose?transformer/encoder_1/layer_normalization_3/batchnorm/add_1:z:07transformer/encoder_1/dense_3/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
/transformer/encoder_1/dense_3/Tensordot/ReshapeReshape5transformer/encoder_1/dense_3/Tensordot/transpose:y:06transformer/encoder_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
.transformer/encoder_1/dense_3/Tensordot/MatMulMatMul8transformer/encoder_1/dense_3/Tensordot/Reshape:output:0>transformer/encoder_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
/transformer/encoder_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�w
5transformer/encoder_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0transformer/encoder_1/dense_3/Tensordot/concat_1ConcatV29transformer/encoder_1/dense_3/Tensordot/GatherV2:output:08transformer/encoder_1/dense_3/Tensordot/Const_2:output:0>transformer/encoder_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
'transformer/encoder_1/dense_3/TensordotReshape8transformer/encoder_1/dense_3/Tensordot/MatMul:product:09transformer/encoder_1/dense_3/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
4transformer/encoder_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp=transformer_encoder_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%transformer/encoder_1/dense_3/BiasAddBiasAdd0transformer/encoder_1/dense_3/Tensordot:output:0<transformer/encoder_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������m
(transformer/encoder_1/dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
&transformer/encoder_1/dense_3/Gelu/mulMul1transformer/encoder_1/dense_3/Gelu/mul/x:output:0.transformer/encoder_1/dense_3/BiasAdd:output:0*
T0*-
_output_shapes
:�����������n
)transformer/encoder_1/dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
*transformer/encoder_1/dense_3/Gelu/truedivRealDiv.transformer/encoder_1/dense_3/BiasAdd:output:02transformer/encoder_1/dense_3/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:������������
&transformer/encoder_1/dense_3/Gelu/ErfErf.transformer/encoder_1/dense_3/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������m
(transformer/encoder_1/dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&transformer/encoder_1/dense_3/Gelu/addAddV21transformer/encoder_1/dense_3/Gelu/add/x:output:0*transformer/encoder_1/dense_3/Gelu/Erf:y:0*
T0*-
_output_shapes
:������������
(transformer/encoder_1/dense_3/Gelu/mul_1Mul*transformer/encoder_1/dense_3/Gelu/mul:z:0*transformer/encoder_1/dense_3/Gelu/add:z:0*
T0*-
_output_shapes
:������������
6transformer/encoder_1/dense_4/Tensordot/ReadVariableOpReadVariableOp?transformer_encoder_1_dense_4_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0v
,transformer/encoder_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:}
,transformer/encoder_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
-transformer/encoder_1/dense_4/Tensordot/ShapeShape,transformer/encoder_1/dense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:w
5transformer/encoder_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0transformer/encoder_1/dense_4/Tensordot/GatherV2GatherV26transformer/encoder_1/dense_4/Tensordot/Shape:output:05transformer/encoder_1/dense_4/Tensordot/free:output:0>transformer/encoder_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
7transformer/encoder_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2transformer/encoder_1/dense_4/Tensordot/GatherV2_1GatherV26transformer/encoder_1/dense_4/Tensordot/Shape:output:05transformer/encoder_1/dense_4/Tensordot/axes:output:0@transformer/encoder_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:w
-transformer/encoder_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
,transformer/encoder_1/dense_4/Tensordot/ProdProd9transformer/encoder_1/dense_4/Tensordot/GatherV2:output:06transformer/encoder_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: y
/transformer/encoder_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
.transformer/encoder_1/dense_4/Tensordot/Prod_1Prod;transformer/encoder_1/dense_4/Tensordot/GatherV2_1:output:08transformer/encoder_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: u
3transformer/encoder_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.transformer/encoder_1/dense_4/Tensordot/concatConcatV25transformer/encoder_1/dense_4/Tensordot/free:output:05transformer/encoder_1/dense_4/Tensordot/axes:output:0<transformer/encoder_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
-transformer/encoder_1/dense_4/Tensordot/stackPack5transformer/encoder_1/dense_4/Tensordot/Prod:output:07transformer/encoder_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
1transformer/encoder_1/dense_4/Tensordot/transpose	Transpose,transformer/encoder_1/dense_3/Gelu/mul_1:z:07transformer/encoder_1/dense_4/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
/transformer/encoder_1/dense_4/Tensordot/ReshapeReshape5transformer/encoder_1/dense_4/Tensordot/transpose:y:06transformer/encoder_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
.transformer/encoder_1/dense_4/Tensordot/MatMulMatMul8transformer/encoder_1/dense_4/Tensordot/Reshape:output:0>transformer/encoder_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
/transformer/encoder_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�w
5transformer/encoder_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0transformer/encoder_1/dense_4/Tensordot/concat_1ConcatV29transformer/encoder_1/dense_4/Tensordot/GatherV2:output:08transformer/encoder_1/dense_4/Tensordot/Const_2:output:0>transformer/encoder_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
'transformer/encoder_1/dense_4/TensordotReshape8transformer/encoder_1/dense_4/Tensordot/MatMul:product:09transformer/encoder_1/dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
4transformer/encoder_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp=transformer_encoder_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%transformer/encoder_1/dense_4/BiasAddBiasAdd0transformer/encoder_1/dense_4/Tensordot:output:0<transformer/encoder_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
(transformer/encoder_1/dropout_4/IdentityIdentity.transformer/encoder_1/dense_4/BiasAdd:output:0*
T0*-
_output_shapes
:������������
transformer/encoder_1/add_4/addAddV2#transformer/encoder_1/add_3/add:z:01transformer/encoder_1/dropout_4/Identity:output:0*
T0*-
_output_shapes
:������������
Jtransformer/encoder_2/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer/encoder_2/layer_normalization_4/moments/meanMean#transformer/encoder_1/add_4/add:z:0Stransformer/encoder_2/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
@transformer/encoder_2/layer_normalization_4/moments/StopGradientStopGradientAtransformer/encoder_2/layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:�����������
Etransformer/encoder_2/layer_normalization_4/moments/SquaredDifferenceSquaredDifference#transformer/encoder_1/add_4/add:z:0Itransformer/encoder_2/layer_normalization_4/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Ntransformer/encoder_2/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
<transformer/encoder_2/layer_normalization_4/moments/varianceMeanItransformer/encoder_2/layer_normalization_4/moments/SquaredDifference:z:0Wtransformer/encoder_2/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
;transformer/encoder_2/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
9transformer/encoder_2/layer_normalization_4/batchnorm/addAddV2Etransformer/encoder_2/layer_normalization_4/moments/variance:output:0Dtransformer/encoder_2/layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
;transformer/encoder_2/layer_normalization_4/batchnorm/RsqrtRsqrt=transformer/encoder_2/layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
Htransformer/encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_2_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9transformer/encoder_2/layer_normalization_4/batchnorm/mulMul?transformer/encoder_2/layer_normalization_4/batchnorm/Rsqrt:y:0Ptransformer/encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
;transformer/encoder_2/layer_normalization_4/batchnorm/mul_1Mul#transformer/encoder_1/add_4/add:z:0=transformer/encoder_2/layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
;transformer/encoder_2/layer_normalization_4/batchnorm/mul_2MulAtransformer/encoder_2/layer_normalization_4/moments/mean:output:0=transformer/encoder_2/layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
Dtransformer/encoder_2/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_2_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9transformer/encoder_2/layer_normalization_4/batchnorm/subSubLtransformer/encoder_2/layer_normalization_4/batchnorm/ReadVariableOp:value:0?transformer/encoder_2/layer_normalization_4/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
;transformer/encoder_2/layer_normalization_4/batchnorm/add_1AddV2?transformer/encoder_2/layer_normalization_4/batchnorm/mul_1:z:0=transformer/encoder_2/layer_normalization_4/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
Otransformer/encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
@transformer/encoder_2/multi_head_attention_2/query/einsum/EinsumEinsum?transformer/encoder_2/layer_normalization_4/batchnorm/add_1:z:0Wtransformer/encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
Etransformer/encoder_2/multi_head_attention_2/query/add/ReadVariableOpReadVariableOpNtransformer_encoder_2_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
6transformer/encoder_2/multi_head_attention_2/query/addAddV2Itransformer/encoder_2/multi_head_attention_2/query/einsum/Einsum:output:0Mtransformer/encoder_2/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Mtransformer/encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_encoder_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
>transformer/encoder_2/multi_head_attention_2/key/einsum/EinsumEinsum?transformer/encoder_2/layer_normalization_4/batchnorm/add_1:z:0Utransformer/encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
Ctransformer/encoder_2/multi_head_attention_2/key/add/ReadVariableOpReadVariableOpLtransformer_encoder_2_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
4transformer/encoder_2/multi_head_attention_2/key/addAddV2Gtransformer/encoder_2/multi_head_attention_2/key/einsum/Einsum:output:0Ktransformer/encoder_2/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Otransformer/encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpXtransformer_encoder_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
@transformer/encoder_2/multi_head_attention_2/value/einsum/EinsumEinsum?transformer/encoder_2/layer_normalization_4/batchnorm/add_1:z:0Wtransformer/encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
Etransformer/encoder_2/multi_head_attention_2/value/add/ReadVariableOpReadVariableOpNtransformer_encoder_2_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
6transformer/encoder_2/multi_head_attention_2/value/addAddV2Itransformer/encoder_2/multi_head_attention_2/value/einsum/Einsum:output:0Mtransformer/encoder_2/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������w
2transformer/encoder_2/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
0transformer/encoder_2/multi_head_attention_2/MulMul:transformer/encoder_2/multi_head_attention_2/query/add:z:0;transformer/encoder_2/multi_head_attention_2/Mul/y:output:0*
T0*1
_output_shapes
:������������
:transformer/encoder_2/multi_head_attention_2/einsum/EinsumEinsum8transformer/encoder_2/multi_head_attention_2/key/add:z:04transformer/encoder_2/multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
>transformer/encoder_2/multi_head_attention_2/softmax_2/SoftmaxSoftmaxCtransformer/encoder_2/multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
?transformer/encoder_2/multi_head_attention_2/dropout_9/IdentityIdentityHtransformer/encoder_2/multi_head_attention_2/softmax_2/Softmax:softmax:0*
T0*1
_output_shapes
:������������
<transformer/encoder_2/multi_head_attention_2/einsum_1/EinsumEinsumHtransformer/encoder_2/multi_head_attention_2/dropout_9/Identity:output:0:transformer/encoder_2/multi_head_attention_2/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Ztransformer/encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_encoder_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
Ktransformer/encoder_2/multi_head_attention_2/attention_output/einsum/EinsumEinsumEtransformer/encoder_2/multi_head_attention_2/einsum_1/Einsum:output:0btransformer/encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
Ptransformer/encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpYtransformer_encoder_2_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Atransformer/encoder_2/multi_head_attention_2/attention_output/addAddV2Ttransformer/encoder_2/multi_head_attention_2/attention_output/einsum/Einsum:output:0Xtransformer/encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
(transformer/encoder_2/dropout_5/IdentityIdentityEtransformer/encoder_2/multi_head_attention_2/attention_output/add:z:0*
T0*-
_output_shapes
:������������
transformer/encoder_2/add_5/addAddV21transformer/encoder_2/dropout_5/Identity:output:0#transformer/encoder_1/add_4/add:z:0*
T0*-
_output_shapes
:������������
Jtransformer/encoder_2/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer/encoder_2/layer_normalization_5/moments/meanMean#transformer/encoder_2/add_5/add:z:0Stransformer/encoder_2/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
@transformer/encoder_2/layer_normalization_5/moments/StopGradientStopGradientAtransformer/encoder_2/layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:�����������
Etransformer/encoder_2/layer_normalization_5/moments/SquaredDifferenceSquaredDifference#transformer/encoder_2/add_5/add:z:0Itransformer/encoder_2/layer_normalization_5/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Ntransformer/encoder_2/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
<transformer/encoder_2/layer_normalization_5/moments/varianceMeanItransformer/encoder_2/layer_normalization_5/moments/SquaredDifference:z:0Wtransformer/encoder_2/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
;transformer/encoder_2/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
9transformer/encoder_2/layer_normalization_5/batchnorm/addAddV2Etransformer/encoder_2/layer_normalization_5/moments/variance:output:0Dtransformer/encoder_2/layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
;transformer/encoder_2/layer_normalization_5/batchnorm/RsqrtRsqrt=transformer/encoder_2/layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
Htransformer/encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpQtransformer_encoder_2_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9transformer/encoder_2/layer_normalization_5/batchnorm/mulMul?transformer/encoder_2/layer_normalization_5/batchnorm/Rsqrt:y:0Ptransformer/encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
;transformer/encoder_2/layer_normalization_5/batchnorm/mul_1Mul#transformer/encoder_2/add_5/add:z:0=transformer/encoder_2/layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
;transformer/encoder_2/layer_normalization_5/batchnorm/mul_2MulAtransformer/encoder_2/layer_normalization_5/moments/mean:output:0=transformer/encoder_2/layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
Dtransformer/encoder_2/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOpMtransformer_encoder_2_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9transformer/encoder_2/layer_normalization_5/batchnorm/subSubLtransformer/encoder_2/layer_normalization_5/batchnorm/ReadVariableOp:value:0?transformer/encoder_2/layer_normalization_5/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
;transformer/encoder_2/layer_normalization_5/batchnorm/add_1AddV2?transformer/encoder_2/layer_normalization_5/batchnorm/mul_1:z:0=transformer/encoder_2/layer_normalization_5/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
6transformer/encoder_2/dense_5/Tensordot/ReadVariableOpReadVariableOp?transformer_encoder_2_dense_5_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0v
,transformer/encoder_2/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:}
,transformer/encoder_2/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
-transformer/encoder_2/dense_5/Tensordot/ShapeShape?transformer/encoder_2/layer_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:w
5transformer/encoder_2/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0transformer/encoder_2/dense_5/Tensordot/GatherV2GatherV26transformer/encoder_2/dense_5/Tensordot/Shape:output:05transformer/encoder_2/dense_5/Tensordot/free:output:0>transformer/encoder_2/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
7transformer/encoder_2/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2transformer/encoder_2/dense_5/Tensordot/GatherV2_1GatherV26transformer/encoder_2/dense_5/Tensordot/Shape:output:05transformer/encoder_2/dense_5/Tensordot/axes:output:0@transformer/encoder_2/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:w
-transformer/encoder_2/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
,transformer/encoder_2/dense_5/Tensordot/ProdProd9transformer/encoder_2/dense_5/Tensordot/GatherV2:output:06transformer/encoder_2/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: y
/transformer/encoder_2/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
.transformer/encoder_2/dense_5/Tensordot/Prod_1Prod;transformer/encoder_2/dense_5/Tensordot/GatherV2_1:output:08transformer/encoder_2/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: u
3transformer/encoder_2/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.transformer/encoder_2/dense_5/Tensordot/concatConcatV25transformer/encoder_2/dense_5/Tensordot/free:output:05transformer/encoder_2/dense_5/Tensordot/axes:output:0<transformer/encoder_2/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
-transformer/encoder_2/dense_5/Tensordot/stackPack5transformer/encoder_2/dense_5/Tensordot/Prod:output:07transformer/encoder_2/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
1transformer/encoder_2/dense_5/Tensordot/transpose	Transpose?transformer/encoder_2/layer_normalization_5/batchnorm/add_1:z:07transformer/encoder_2/dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
/transformer/encoder_2/dense_5/Tensordot/ReshapeReshape5transformer/encoder_2/dense_5/Tensordot/transpose:y:06transformer/encoder_2/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
.transformer/encoder_2/dense_5/Tensordot/MatMulMatMul8transformer/encoder_2/dense_5/Tensordot/Reshape:output:0>transformer/encoder_2/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
/transformer/encoder_2/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�w
5transformer/encoder_2/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0transformer/encoder_2/dense_5/Tensordot/concat_1ConcatV29transformer/encoder_2/dense_5/Tensordot/GatherV2:output:08transformer/encoder_2/dense_5/Tensordot/Const_2:output:0>transformer/encoder_2/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
'transformer/encoder_2/dense_5/TensordotReshape8transformer/encoder_2/dense_5/Tensordot/MatMul:product:09transformer/encoder_2/dense_5/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
4transformer/encoder_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp=transformer_encoder_2_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%transformer/encoder_2/dense_5/BiasAddBiasAdd0transformer/encoder_2/dense_5/Tensordot:output:0<transformer/encoder_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������m
(transformer/encoder_2/dense_5/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
&transformer/encoder_2/dense_5/Gelu/mulMul1transformer/encoder_2/dense_5/Gelu/mul/x:output:0.transformer/encoder_2/dense_5/BiasAdd:output:0*
T0*-
_output_shapes
:�����������n
)transformer/encoder_2/dense_5/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
*transformer/encoder_2/dense_5/Gelu/truedivRealDiv.transformer/encoder_2/dense_5/BiasAdd:output:02transformer/encoder_2/dense_5/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:������������
&transformer/encoder_2/dense_5/Gelu/ErfErf.transformer/encoder_2/dense_5/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������m
(transformer/encoder_2/dense_5/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&transformer/encoder_2/dense_5/Gelu/addAddV21transformer/encoder_2/dense_5/Gelu/add/x:output:0*transformer/encoder_2/dense_5/Gelu/Erf:y:0*
T0*-
_output_shapes
:������������
(transformer/encoder_2/dense_5/Gelu/mul_1Mul*transformer/encoder_2/dense_5/Gelu/mul:z:0*transformer/encoder_2/dense_5/Gelu/add:z:0*
T0*-
_output_shapes
:������������
6transformer/encoder_2/dense_6/Tensordot/ReadVariableOpReadVariableOp?transformer_encoder_2_dense_6_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0v
,transformer/encoder_2/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:}
,transformer/encoder_2/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
-transformer/encoder_2/dense_6/Tensordot/ShapeShape,transformer/encoder_2/dense_5/Gelu/mul_1:z:0*
T0*
_output_shapes
:w
5transformer/encoder_2/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0transformer/encoder_2/dense_6/Tensordot/GatherV2GatherV26transformer/encoder_2/dense_6/Tensordot/Shape:output:05transformer/encoder_2/dense_6/Tensordot/free:output:0>transformer/encoder_2/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
7transformer/encoder_2/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2transformer/encoder_2/dense_6/Tensordot/GatherV2_1GatherV26transformer/encoder_2/dense_6/Tensordot/Shape:output:05transformer/encoder_2/dense_6/Tensordot/axes:output:0@transformer/encoder_2/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:w
-transformer/encoder_2/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
,transformer/encoder_2/dense_6/Tensordot/ProdProd9transformer/encoder_2/dense_6/Tensordot/GatherV2:output:06transformer/encoder_2/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: y
/transformer/encoder_2/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
.transformer/encoder_2/dense_6/Tensordot/Prod_1Prod;transformer/encoder_2/dense_6/Tensordot/GatherV2_1:output:08transformer/encoder_2/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: u
3transformer/encoder_2/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.transformer/encoder_2/dense_6/Tensordot/concatConcatV25transformer/encoder_2/dense_6/Tensordot/free:output:05transformer/encoder_2/dense_6/Tensordot/axes:output:0<transformer/encoder_2/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
-transformer/encoder_2/dense_6/Tensordot/stackPack5transformer/encoder_2/dense_6/Tensordot/Prod:output:07transformer/encoder_2/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
1transformer/encoder_2/dense_6/Tensordot/transpose	Transpose,transformer/encoder_2/dense_5/Gelu/mul_1:z:07transformer/encoder_2/dense_6/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
/transformer/encoder_2/dense_6/Tensordot/ReshapeReshape5transformer/encoder_2/dense_6/Tensordot/transpose:y:06transformer/encoder_2/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
.transformer/encoder_2/dense_6/Tensordot/MatMulMatMul8transformer/encoder_2/dense_6/Tensordot/Reshape:output:0>transformer/encoder_2/dense_6/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
/transformer/encoder_2/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�w
5transformer/encoder_2/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0transformer/encoder_2/dense_6/Tensordot/concat_1ConcatV29transformer/encoder_2/dense_6/Tensordot/GatherV2:output:08transformer/encoder_2/dense_6/Tensordot/Const_2:output:0>transformer/encoder_2/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
'transformer/encoder_2/dense_6/TensordotReshape8transformer/encoder_2/dense_6/Tensordot/MatMul:product:09transformer/encoder_2/dense_6/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
4transformer/encoder_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp=transformer_encoder_2_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
%transformer/encoder_2/dense_6/BiasAddBiasAdd0transformer/encoder_2/dense_6/Tensordot:output:0<transformer/encoder_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
(transformer/encoder_2/dropout_6/IdentityIdentity.transformer/encoder_2/dense_6/BiasAdd:output:0*
T0*-
_output_shapes
:������������
transformer/encoder_2/add_6/addAddV2#transformer/encoder_2/add_5/add:z:01transformer/encoder_2/dropout_6/Identity:output:0*
T0*-
_output_shapes
:������������
@transformer/layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
.transformer/layer_normalization_6/moments/meanMean#transformer/encoder_2/add_6/add:z:0Itransformer/layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
6transformer/layer_normalization_6/moments/StopGradientStopGradient7transformer/layer_normalization_6/moments/mean:output:0*
T0*,
_output_shapes
:�����������
;transformer/layer_normalization_6/moments/SquaredDifferenceSquaredDifference#transformer/encoder_2/add_6/add:z:0?transformer/layer_normalization_6/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Dtransformer/layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
2transformer/layer_normalization_6/moments/varianceMean?transformer/layer_normalization_6/moments/SquaredDifference:z:0Mtransformer/layer_normalization_6/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(v
1transformer/layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
/transformer/layer_normalization_6/batchnorm/addAddV2;transformer/layer_normalization_6/moments/variance:output:0:transformer/layer_normalization_6/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
1transformer/layer_normalization_6/batchnorm/RsqrtRsqrt3transformer/layer_normalization_6/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
>transformer/layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpGtransformer_layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
/transformer/layer_normalization_6/batchnorm/mulMul5transformer/layer_normalization_6/batchnorm/Rsqrt:y:0Ftransformer/layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
1transformer/layer_normalization_6/batchnorm/mul_1Mul#transformer/encoder_2/add_6/add:z:03transformer/layer_normalization_6/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
1transformer/layer_normalization_6/batchnorm/mul_2Mul7transformer/layer_normalization_6/moments/mean:output:03transformer/layer_normalization_6/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
:transformer/layer_normalization_6/batchnorm/ReadVariableOpReadVariableOpCtransformer_layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
/transformer/layer_normalization_6/batchnorm/subSubBtransformer/layer_normalization_6/batchnorm/ReadVariableOp:value:05transformer/layer_normalization_6/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
1transformer/layer_normalization_6/batchnorm/add_1AddV25transformer/layer_normalization_6/batchnorm/mul_1:z:03transformer/layer_normalization_6/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
,transformer/dense_7/Tensordot/ReadVariableOpReadVariableOp5transformer_dense_7_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0l
"transformer/dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:s
"transformer/dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
#transformer/dense_7/Tensordot/ShapeShape5transformer/layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:m
+transformer/dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&transformer/dense_7/Tensordot/GatherV2GatherV2,transformer/dense_7/Tensordot/Shape:output:0+transformer/dense_7/Tensordot/free:output:04transformer/dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:o
-transformer/dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
(transformer/dense_7/Tensordot/GatherV2_1GatherV2,transformer/dense_7/Tensordot/Shape:output:0+transformer/dense_7/Tensordot/axes:output:06transformer/dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
#transformer/dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
"transformer/dense_7/Tensordot/ProdProd/transformer/dense_7/Tensordot/GatherV2:output:0,transformer/dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: o
%transformer/dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
$transformer/dense_7/Tensordot/Prod_1Prod1transformer/dense_7/Tensordot/GatherV2_1:output:0.transformer/dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: k
)transformer/dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$transformer/dense_7/Tensordot/concatConcatV2+transformer/dense_7/Tensordot/free:output:0+transformer/dense_7/Tensordot/axes:output:02transformer/dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
#transformer/dense_7/Tensordot/stackPack+transformer/dense_7/Tensordot/Prod:output:0-transformer/dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
'transformer/dense_7/Tensordot/transpose	Transpose5transformer/layer_normalization_6/batchnorm/add_1:z:0-transformer/dense_7/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
%transformer/dense_7/Tensordot/ReshapeReshape+transformer/dense_7/Tensordot/transpose:y:0,transformer/dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
$transformer/dense_7/Tensordot/MatMulMatMul.transformer/dense_7/Tensordot/Reshape:output:04transformer/dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������o
%transformer/dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:m
+transformer/dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&transformer/dense_7/Tensordot/concat_1ConcatV2/transformer/dense_7/Tensordot/GatherV2:output:0.transformer/dense_7/Tensordot/Const_2:output:04transformer/dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
transformer/dense_7/TensordotReshape.transformer/dense_7/Tensordot/MatMul:product:0/transformer/dense_7/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
*transformer/dense_7/BiasAdd/ReadVariableOpReadVariableOp3transformer_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
transformer/dense_7/BiasAddBiasAdd&transformer/dense_7/Tensordot:output:02transformer/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������x
IdentityIdentity$transformer/dense_7/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:�����������

Identity_1IdentityHtransformer/encoder_2/multi_head_attention_2/softmax_2/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp+^transformer/dense_7/BiasAdd/ReadVariableOp-^transformer/dense_7/Tensordot/ReadVariableOp3^transformer/encoder/dense_1/BiasAdd/ReadVariableOp5^transformer/encoder/dense_1/Tensordot/ReadVariableOp3^transformer/encoder/dense_2/BiasAdd/ReadVariableOp5^transformer/encoder/dense_2/Tensordot/ReadVariableOpA^transformer/encoder/layer_normalization/batchnorm/ReadVariableOpE^transformer/encoder/layer_normalization/batchnorm/mul/ReadVariableOpC^transformer/encoder/layer_normalization_1/batchnorm/ReadVariableOpG^transformer/encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpM^transformer/encoder/multi_head_attention/attention_output/add/ReadVariableOpW^transformer/encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp@^transformer/encoder/multi_head_attention/key/add/ReadVariableOpJ^transformer/encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpB^transformer/encoder/multi_head_attention/query/add/ReadVariableOpL^transformer/encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpB^transformer/encoder/multi_head_attention/value/add/ReadVariableOpL^transformer/encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp5^transformer/encoder_1/dense_3/BiasAdd/ReadVariableOp7^transformer/encoder_1/dense_3/Tensordot/ReadVariableOp5^transformer/encoder_1/dense_4/BiasAdd/ReadVariableOp7^transformer/encoder_1/dense_4/Tensordot/ReadVariableOpE^transformer/encoder_1/layer_normalization_2/batchnorm/ReadVariableOpI^transformer/encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpE^transformer/encoder_1/layer_normalization_3/batchnorm/ReadVariableOpI^transformer/encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpQ^transformer/encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp[^transformer/encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpD^transformer/encoder_1/multi_head_attention_1/key/add/ReadVariableOpN^transformer/encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpF^transformer/encoder_1/multi_head_attention_1/query/add/ReadVariableOpP^transformer/encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpF^transformer/encoder_1/multi_head_attention_1/value/add/ReadVariableOpP^transformer/encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp5^transformer/encoder_2/dense_5/BiasAdd/ReadVariableOp7^transformer/encoder_2/dense_5/Tensordot/ReadVariableOp5^transformer/encoder_2/dense_6/BiasAdd/ReadVariableOp7^transformer/encoder_2/dense_6/Tensordot/ReadVariableOpE^transformer/encoder_2/layer_normalization_4/batchnorm/ReadVariableOpI^transformer/encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpE^transformer/encoder_2/layer_normalization_5/batchnorm/ReadVariableOpI^transformer/encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpQ^transformer/encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp[^transformer/encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpD^transformer/encoder_2/multi_head_attention_2/key/add/ReadVariableOpN^transformer/encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpF^transformer/encoder_2/multi_head_attention_2/query/add/ReadVariableOpP^transformer/encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpF^transformer/encoder_2/multi_head_attention_2/value/add/ReadVariableOpP^transformer/encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp;^transformer/layer_normalization_6/batchnorm/ReadVariableOp?^transformer/layer_normalization_6/batchnorm/mul/ReadVariableOp8^transformer/positional_embedding/add/add/ReadVariableOp>^transformer/positional_embedding/dense/BiasAdd/ReadVariableOp@^transformer/positional_embedding/dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*transformer/dense_7/BiasAdd/ReadVariableOp*transformer/dense_7/BiasAdd/ReadVariableOp2\
,transformer/dense_7/Tensordot/ReadVariableOp,transformer/dense_7/Tensordot/ReadVariableOp2h
2transformer/encoder/dense_1/BiasAdd/ReadVariableOp2transformer/encoder/dense_1/BiasAdd/ReadVariableOp2l
4transformer/encoder/dense_1/Tensordot/ReadVariableOp4transformer/encoder/dense_1/Tensordot/ReadVariableOp2h
2transformer/encoder/dense_2/BiasAdd/ReadVariableOp2transformer/encoder/dense_2/BiasAdd/ReadVariableOp2l
4transformer/encoder/dense_2/Tensordot/ReadVariableOp4transformer/encoder/dense_2/Tensordot/ReadVariableOp2�
@transformer/encoder/layer_normalization/batchnorm/ReadVariableOp@transformer/encoder/layer_normalization/batchnorm/ReadVariableOp2�
Dtransformer/encoder/layer_normalization/batchnorm/mul/ReadVariableOpDtransformer/encoder/layer_normalization/batchnorm/mul/ReadVariableOp2�
Btransformer/encoder/layer_normalization_1/batchnorm/ReadVariableOpBtransformer/encoder/layer_normalization_1/batchnorm/ReadVariableOp2�
Ftransformer/encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpFtransformer/encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
Ltransformer/encoder/multi_head_attention/attention_output/add/ReadVariableOpLtransformer/encoder/multi_head_attention/attention_output/add/ReadVariableOp2�
Vtransformer/encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpVtransformer/encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2�
?transformer/encoder/multi_head_attention/key/add/ReadVariableOp?transformer/encoder/multi_head_attention/key/add/ReadVariableOp2�
Itransformer/encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpItransformer/encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp2�
Atransformer/encoder/multi_head_attention/query/add/ReadVariableOpAtransformer/encoder/multi_head_attention/query/add/ReadVariableOp2�
Ktransformer/encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpKtransformer/encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp2�
Atransformer/encoder/multi_head_attention/value/add/ReadVariableOpAtransformer/encoder/multi_head_attention/value/add/ReadVariableOp2�
Ktransformer/encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpKtransformer/encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp2l
4transformer/encoder_1/dense_3/BiasAdd/ReadVariableOp4transformer/encoder_1/dense_3/BiasAdd/ReadVariableOp2p
6transformer/encoder_1/dense_3/Tensordot/ReadVariableOp6transformer/encoder_1/dense_3/Tensordot/ReadVariableOp2l
4transformer/encoder_1/dense_4/BiasAdd/ReadVariableOp4transformer/encoder_1/dense_4/BiasAdd/ReadVariableOp2p
6transformer/encoder_1/dense_4/Tensordot/ReadVariableOp6transformer/encoder_1/dense_4/Tensordot/ReadVariableOp2�
Dtransformer/encoder_1/layer_normalization_2/batchnorm/ReadVariableOpDtransformer/encoder_1/layer_normalization_2/batchnorm/ReadVariableOp2�
Htransformer/encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpHtransformer/encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2�
Dtransformer/encoder_1/layer_normalization_3/batchnorm/ReadVariableOpDtransformer/encoder_1/layer_normalization_3/batchnorm/ReadVariableOp2�
Htransformer/encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpHtransformer/encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2�
Ptransformer/encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpPtransformer/encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp2�
Ztransformer/encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpZtransformer/encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2�
Ctransformer/encoder_1/multi_head_attention_1/key/add/ReadVariableOpCtransformer/encoder_1/multi_head_attention_1/key/add/ReadVariableOp2�
Mtransformer/encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpMtransformer/encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2�
Etransformer/encoder_1/multi_head_attention_1/query/add/ReadVariableOpEtransformer/encoder_1/multi_head_attention_1/query/add/ReadVariableOp2�
Otransformer/encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpOtransformer/encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2�
Etransformer/encoder_1/multi_head_attention_1/value/add/ReadVariableOpEtransformer/encoder_1/multi_head_attention_1/value/add/ReadVariableOp2�
Otransformer/encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpOtransformer/encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2l
4transformer/encoder_2/dense_5/BiasAdd/ReadVariableOp4transformer/encoder_2/dense_5/BiasAdd/ReadVariableOp2p
6transformer/encoder_2/dense_5/Tensordot/ReadVariableOp6transformer/encoder_2/dense_5/Tensordot/ReadVariableOp2l
4transformer/encoder_2/dense_6/BiasAdd/ReadVariableOp4transformer/encoder_2/dense_6/BiasAdd/ReadVariableOp2p
6transformer/encoder_2/dense_6/Tensordot/ReadVariableOp6transformer/encoder_2/dense_6/Tensordot/ReadVariableOp2�
Dtransformer/encoder_2/layer_normalization_4/batchnorm/ReadVariableOpDtransformer/encoder_2/layer_normalization_4/batchnorm/ReadVariableOp2�
Htransformer/encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpHtransformer/encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp2�
Dtransformer/encoder_2/layer_normalization_5/batchnorm/ReadVariableOpDtransformer/encoder_2/layer_normalization_5/batchnorm/ReadVariableOp2�
Htransformer/encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpHtransformer/encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp2�
Ptransformer/encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpPtransformer/encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp2�
Ztransformer/encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpZtransformer/encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2�
Ctransformer/encoder_2/multi_head_attention_2/key/add/ReadVariableOpCtransformer/encoder_2/multi_head_attention_2/key/add/ReadVariableOp2�
Mtransformer/encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpMtransformer/encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2�
Etransformer/encoder_2/multi_head_attention_2/query/add/ReadVariableOpEtransformer/encoder_2/multi_head_attention_2/query/add/ReadVariableOp2�
Otransformer/encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpOtransformer/encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2�
Etransformer/encoder_2/multi_head_attention_2/value/add/ReadVariableOpEtransformer/encoder_2/multi_head_attention_2/value/add/ReadVariableOp2�
Otransformer/encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpOtransformer/encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2x
:transformer/layer_normalization_6/batchnorm/ReadVariableOp:transformer/layer_normalization_6/batchnorm/ReadVariableOp2�
>transformer/layer_normalization_6/batchnorm/mul/ReadVariableOp>transformer/layer_normalization_6/batchnorm/mul/ReadVariableOp2r
7transformer/positional_embedding/add/add/ReadVariableOp7transformer/positional_embedding/add/add/ReadVariableOp2~
=transformer/positional_embedding/dense/BiasAdd/ReadVariableOp=transformer/positional_embedding/dense/BiasAdd/ReadVariableOp2�
?transformer/positional_embedding/dense/Tensordot/ReadVariableOp?transformer/positional_embedding/dense/Tensordot/ReadVariableOp:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_1:($
"
_output_shapes
::($
"
_output_shapes
:
�#
�
N__inference_positional_embedding_layer_call_and_return_conditional_losses_5421

inputs:
'dense_tensordot_readvariableop_resource:	�4
%dense_biasadd_readvariableop_resource:	�7
add_add_readvariableop_resource:��
identity��add/add/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       K
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������|
add/add/ReadVariableOpReadVariableOpadd_add_readvariableop_resource*$
_output_shapes
:��*
dtype0�
add/addAddV2dense/BiasAdd:output:0add/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������a
dropout/IdentityIdentityadd/add:z:0*
T0*-
_output_shapes
:�����������n
IdentityIdentitydropout/Identity:output:0^NoOp*
T0*-
_output_shapes
:������������
NoOpNoOp^add/add/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 20
add/add/ReadVariableOpadd/add/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
C__inference_encoder_2_layer_call_and_return_conditional_losses_6559

inputsJ
;layer_normalization_4_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_4_batchnorm_readvariableop_resource:	�Z
Bmulti_head_attention_2_query_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_2_query_add_readvariableop_resource:	�X
@multi_head_attention_2_key_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_2_key_add_readvariableop_resource:	�Z
Bmulti_head_attention_2_value_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_2_value_add_readvariableop_resource:	�e
Mmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:��R
Cmulti_head_attention_2_attention_output_add_readvariableop_resource:	�J
;layer_normalization_5_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_5_batchnorm_readvariableop_resource:	�=
)dense_5_tensordot_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�=
)dense_6_tensordot_readvariableop_resource:
��6
'dense_6_biasadd_readvariableop_resource:	�
identity

identity_1��dense_5/BiasAdd/ReadVariableOp� dense_5/Tensordot/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp� dense_6/Tensordot/ReadVariableOp�.layer_normalization_4/batchnorm/ReadVariableOp�2layer_normalization_4/batchnorm/mul/ReadVariableOp�.layer_normalization_5/batchnorm/ReadVariableOp�2layer_normalization_5/batchnorm/mul/ReadVariableOp�:multi_head_attention_2/attention_output/add/ReadVariableOp�Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp�-multi_head_attention_2/key/add/ReadVariableOp�7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp�/multi_head_attention_2/query/add/ReadVariableOp�9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp�/multi_head_attention_2/value/add/ReadVariableOp�9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp~
4layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_4/moments/meanMeaninputs=layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_4/moments/StopGradientStopGradient+layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceinputs3layer_normalization_4/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_4/moments/varianceMean3layer_normalization_4/moments/SquaredDifference:z:0Alayer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_4/batchnorm/addAddV2/layer_normalization_4/moments/variance:output:0.layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_4/batchnorm/RsqrtRsqrt'layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_4/batchnorm/mulMul)layer_normalization_4/batchnorm/Rsqrt:y:0:layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_4/batchnorm/mul_1Mulinputs'layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_4/batchnorm/mul_2Mul+layer_normalization_4/moments/mean:output:0'layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_4/batchnorm/subSub6layer_normalization_4/batchnorm/ReadVariableOp:value:0)layer_normalization_4/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_4/batchnorm/add_1AddV2)layer_normalization_4/batchnorm/mul_1:z:0'layer_normalization_4/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_2/query/einsum/EinsumEinsum)layer_normalization_4/batchnorm/add_1:z:0Amulti_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_2/query/add/ReadVariableOpReadVariableOp8multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_2/query/addAddV23multi_head_attention_2/query/einsum/Einsum:output:07multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_2_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention_2/key/einsum/EinsumEinsum)layer_normalization_4/batchnorm/add_1:z:0?multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention_2/key/add/ReadVariableOpReadVariableOp6multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention_2/key/addAddV21multi_head_attention_2/key/einsum/Einsum:output:05multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_2_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_2/value/einsum/EinsumEinsum)layer_normalization_4/batchnorm/add_1:z:0Amulti_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_2/value/add/ReadVariableOpReadVariableOp8multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_2/value/addAddV23multi_head_attention_2/value/einsum/Einsum:output:07multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������a
multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
multi_head_attention_2/MulMul$multi_head_attention_2/query/add:z:0%multi_head_attention_2/Mul/y:output:0*
T0*1
_output_shapes
:������������
$multi_head_attention_2/einsum/EinsumEinsum"multi_head_attention_2/key/add:z:0multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
(multi_head_attention_2/softmax_2/SoftmaxSoftmax-multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
&multi_head_attention_2/einsum_1/EinsumEinsum2multi_head_attention_2/softmax_2/Softmax:softmax:0$multi_head_attention_2/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
5multi_head_attention_2/attention_output/einsum/EinsumEinsum/multi_head_attention_2/einsum_1/Einsum:output:0Lmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
:multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+multi_head_attention_2/attention_output/addAddV2>multi_head_attention_2/attention_output/einsum/Einsum:output:0Bmulti_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
	add_5/addAddV2/multi_head_attention_2/attention_output/add:z:0inputs*
T0*-
_output_shapes
:�����������~
4layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_5/moments/meanMeanadd_5/add:z:0=layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_5/moments/StopGradientStopGradient+layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_5/moments/SquaredDifferenceSquaredDifferenceadd_5/add:z:03layer_normalization_5/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_5/moments/varianceMean3layer_normalization_5/moments/SquaredDifference:z:0Alayer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_5/batchnorm/addAddV2/layer_normalization_5/moments/variance:output:0.layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_5/batchnorm/RsqrtRsqrt'layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_5/batchnorm/mulMul)layer_normalization_5/batchnorm/Rsqrt:y:0:layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_5/batchnorm/mul_1Muladd_5/add:z:0'layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_5/batchnorm/mul_2Mul+layer_normalization_5/moments/mean:output:0'layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_5/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_5/batchnorm/subSub6layer_normalization_5/batchnorm/ReadVariableOp:value:0)layer_normalization_5/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_5/batchnorm/add_1AddV2)layer_normalization_5/batchnorm/mul_1:z:0'layer_normalization_5/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_5/Tensordot/ShapeShape)layer_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/transpose	Transpose)layer_normalization_5/batchnorm/add_1:z:0!dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������W
dense_5/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dense_5/Gelu/mulMuldense_5/Gelu/mul/x:output:0dense_5/BiasAdd:output:0*
T0*-
_output_shapes
:�����������X
dense_5/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dense_5/Gelu/truedivRealDivdense_5/BiasAdd:output:0dense_5/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������i
dense_5/Gelu/ErfErfdense_5/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������W
dense_5/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dense_5/Gelu/addAddV2dense_5/Gelu/add/x:output:0dense_5/Gelu/Erf:y:0*
T0*-
_output_shapes
:�����������}
dense_5/Gelu/mul_1Muldense_5/Gelu/mul:z:0dense_5/Gelu/add:z:0*
T0*-
_output_shapes
:������������
 dense_6/Tensordot/ReadVariableOpReadVariableOp)dense_6_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_6/Tensordot/ShapeShapedense_5/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/GatherV2GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/free:output:0(dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/GatherV2_1GatherV2 dense_6/Tensordot/Shape:output:0dense_6/Tensordot/axes:output:0*dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_6/Tensordot/ProdProd#dense_6/Tensordot/GatherV2:output:0 dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_6/Tensordot/Prod_1Prod%dense_6/Tensordot/GatherV2_1:output:0"dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/concatConcatV2dense_6/Tensordot/free:output:0dense_6/Tensordot/axes:output:0&dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_6/Tensordot/stackPackdense_6/Tensordot/Prod:output:0!dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_6/Tensordot/transpose	Transposedense_5/Gelu/mul_1:z:0!dense_6/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_6/Tensordot/ReshapeReshapedense_6/Tensordot/transpose:y:0 dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_6/Tensordot/MatMulMatMul"dense_6/Tensordot/Reshape:output:0(dense_6/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_6/Tensordot/concat_1ConcatV2#dense_6/Tensordot/GatherV2:output:0"dense_6/Tensordot/Const_2:output:0(dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_6/TensordotReshape"dense_6/Tensordot/MatMul:product:0#dense_6/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_6/BiasAddBiasAdddense_6/Tensordot:output:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������s
	add_6/addAddV2add_5/add:z:0dense_6/BiasAdd:output:0*
T0*-
_output_shapes
:�����������b
IdentityIdentityadd_6/add:z:0^NoOp*
T0*-
_output_shapes
:������������

Identity_1Identity2multi_head_attention_2/softmax_2/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp!^dense_6/Tensordot/ReadVariableOp/^layer_normalization_4/batchnorm/ReadVariableOp3^layer_normalization_4/batchnorm/mul/ReadVariableOp/^layer_normalization_5/batchnorm/ReadVariableOp3^layer_normalization_5/batchnorm/mul/ReadVariableOp;^multi_head_attention_2/attention_output/add/ReadVariableOpE^multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_2/key/add/ReadVariableOp8^multi_head_attention_2/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/query/add/ReadVariableOp:^multi_head_attention_2/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_2/value/add/ReadVariableOp:^multi_head_attention_2/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2D
 dense_6/Tensordot/ReadVariableOp dense_6/Tensordot/ReadVariableOp2`
.layer_normalization_4/batchnorm/ReadVariableOp.layer_normalization_4/batchnorm/ReadVariableOp2h
2layer_normalization_4/batchnorm/mul/ReadVariableOp2layer_normalization_4/batchnorm/mul/ReadVariableOp2`
.layer_normalization_5/batchnorm/ReadVariableOp.layer_normalization_5/batchnorm/ReadVariableOp2h
2layer_normalization_5/batchnorm/mul/ReadVariableOp2layer_normalization_5/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_2/attention_output/add/ReadVariableOp:multi_head_attention_2/attention_output/add/ReadVariableOp2�
Dmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_2/key/add/ReadVariableOp-multi_head_attention_2/key/add/ReadVariableOp2r
7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp7multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/query/add/ReadVariableOp/multi_head_attention_2/query/add/ReadVariableOp2v
9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp9multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_2/value/add/ReadVariableOp/multi_head_attention_2/value/add/ReadVariableOp2v
9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp9multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�#
�
N__inference_positional_embedding_layer_call_and_return_conditional_losses_1890

inputs:
'dense_tensordot_readvariableop_resource:	�4
%dense_biasadd_readvariableop_resource:	�7
add_add_readvariableop_resource:��
identity��add/add/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       K
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������|
add/add/ReadVariableOpReadVariableOpadd_add_readvariableop_resource*$
_output_shapes
:��*
dtype0�
add/addAddV2dense/BiasAdd:output:0add/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������a
dropout/IdentityIdentityadd/add:z:0*
T0*-
_output_shapes
:�����������n
IdentityIdentitydropout/Identity:output:0^NoOp*
T0*-
_output_shapes
:������������
NoOpNoOp^add/add/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 20
add/add/ReadVariableOpadd/add/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
C__inference_encoder_1_layer_call_and_return_conditional_losses_6082

inputsJ
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_2_batchnorm_readvariableop_resource:	�Z
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_1_query_add_readvariableop_resource:	�X
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_1_key_add_readvariableop_resource:	�Z
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_1_value_add_readvariableop_resource:	�e
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:��R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	�J
;layer_normalization_3_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_3_batchnorm_readvariableop_resource:	�=
)dense_3_tensordot_readvariableop_resource:
��6
'dense_3_biasadd_readvariableop_resource:	�=
)dense_4_tensordot_readvariableop_resource:
��6
'dense_4_biasadd_readvariableop_resource:	�
identity

identity_1��dense_3/BiasAdd/ReadVariableOp� dense_3/Tensordot/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�.layer_normalization_2/batchnorm/ReadVariableOp�2layer_normalization_2/batchnorm/mul/ReadVariableOp�.layer_normalization_3/batchnorm/ReadVariableOp�2layer_normalization_3/batchnorm/mul/ReadVariableOp�:multi_head_attention_1/attention_output/add/ReadVariableOp�Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�-multi_head_attention_1/key/add/ReadVariableOp�7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�/multi_head_attention_1/query/add/ReadVariableOp�9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�/multi_head_attention_1/value/add/ReadVariableOp�9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_2/moments/meanMeaninputs=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceinputs3layer_normalization_2/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_2/batchnorm/mul_1Mulinputs'layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_1/query/einsum/EinsumEinsum)layer_normalization_2/batchnorm/add_1:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention_1/key/einsum/EinsumEinsum)layer_normalization_2/batchnorm/add_1:z:0?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_1/value/einsum/EinsumEinsum)layer_normalization_2/batchnorm/add_1:z:0Amulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*1
_output_shapes
:������������
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
(multi_head_attention_1/softmax_1/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
)multi_head_attention_1/dropout_8/IdentityIdentity2multi_head_attention_1/softmax_1/Softmax:softmax:0*
T0*1
_output_shapes
:������������
&multi_head_attention_1/einsum_1/EinsumEinsum2multi_head_attention_1/dropout_8/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
dropout_3/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*-
_output_shapes
:�����������o
	add_3/addAddV2dropout_3/Identity:output:0inputs*
T0*-
_output_shapes
:�����������~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_3/moments/meanMeanadd_3/add:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_3/moments/SquaredDifferenceSquaredDifferenceadd_3/add:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_3/batchnorm/mul_1Muladd_3/add:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_3/Tensordot/ShapeShape)layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_3/Tensordot/transpose	Transpose)layer_normalization_3/batchnorm/add_1:z:0!dense_3/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������W
dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dense_3/Gelu/mulMuldense_3/Gelu/mul/x:output:0dense_3/BiasAdd:output:0*
T0*-
_output_shapes
:�����������X
dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dense_3/Gelu/truedivRealDivdense_3/BiasAdd:output:0dense_3/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������i
dense_3/Gelu/ErfErfdense_3/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������W
dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dense_3/Gelu/addAddV2dense_3/Gelu/add/x:output:0dense_3/Gelu/Erf:y:0*
T0*-
_output_shapes
:�����������}
dense_3/Gelu/mul_1Muldense_3/Gelu/mul:z:0dense_3/Gelu/add:z:0*
T0*-
_output_shapes
:������������
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_4/Tensordot/ShapeShapedense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/transpose	Transposedense_3/Gelu/mul_1:z:0!dense_4/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������p
dropout_4/IdentityIdentitydense_4/BiasAdd:output:0*
T0*-
_output_shapes
:�����������v
	add_4/addAddV2add_3/add:z:0dropout_4/Identity:output:0*
T0*-
_output_shapes
:�����������b
IdentityIdentityadd_4/add:z:0^NoOp*
T0*-
_output_shapes
:������������

Identity_1Identity2multi_head_attention_1/softmax_1/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2�
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
A__inference_dense_7_layer_call_and_return_conditional_losses_2466

inputs4
!tensordot_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:������������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:����������z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
A__inference_encoder_layer_call_and_return_conditional_losses_2033

inputsH
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�X
@multi_head_attention_query_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_query_add_readvariableop_resource:	�V
>multi_head_attention_key_einsum_einsum_readvariableop_resource:��G
4multi_head_attention_key_add_readvariableop_resource:	�X
@multi_head_attention_value_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_value_add_readvariableop_resource:	�c
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:��P
Amulti_head_attention_attention_output_add_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�=
)dense_1_tensordot_readvariableop_resource:
��6
'dense_1_biasadd_readvariableop_resource:	�=
)dense_2_tensordot_readvariableop_resource:
��6
'dense_2_biasadd_readvariableop_resource:	�
identity

identity_1��dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�8multi_head_attention/attention_output/add/ReadVariableOp�Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp�+multi_head_attention/key/add/ReadVariableOp�5multi_head_attention/key/einsum/Einsum/ReadVariableOp�-multi_head_attention/query/add/ReadVariableOp�7multi_head_attention/query/einsum/Einsum/ReadVariableOp�-multi_head_attention/value/add/ReadVariableOp�7multi_head_attention/value/einsum/Einsum/ReadVariableOp|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeaninputs;layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:�����������
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceinputs1layer_normalization/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
#layer_normalization/batchnorm/mul_1Mulinputs%layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/query/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
&multi_head_attention/key/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention/value/einsum/EinsumEinsum'layer_normalization/batchnorm/add_1:z:0?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*1
_output_shapes
:������������
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
'multi_head_attention/dropout_7/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:������������
$multi_head_attention/einsum_1/EinsumEinsum0multi_head_attention/dropout_7/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
dropout_1/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*-
_output_shapes
:�����������o
	add_1/addAddV2dropout_1/Identity:output:0inputs*
T0*-
_output_shapes
:�����������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMeanadd_1/add:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceadd_1/add:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_1/batchnorm/mul_1Muladd_1/add:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_1/Tensordot/ShapeShape)layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/transpose	Transpose)layer_normalization_1/batchnorm/add_1:z:0!dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������W
dense_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dense_1/Gelu/mulMuldense_1/Gelu/mul/x:output:0dense_1/BiasAdd:output:0*
T0*-
_output_shapes
:�����������X
dense_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dense_1/Gelu/truedivRealDivdense_1/BiasAdd:output:0dense_1/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������i
dense_1/Gelu/ErfErfdense_1/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������W
dense_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dense_1/Gelu/addAddV2dense_1/Gelu/add/x:output:0dense_1/Gelu/Erf:y:0*
T0*-
_output_shapes
:�����������}
dense_1/Gelu/mul_1Muldense_1/Gelu/mul:z:0dense_1/Gelu/add:z:0*
T0*-
_output_shapes
:������������
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_2/Tensordot/ShapeShapedense_1/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/transpose	Transposedense_1/Gelu/mul_1:z:0!dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������p
dropout_2/IdentityIdentitydense_2/BiasAdd:output:0*
T0*-
_output_shapes
:�����������v
	add_2/addAddV2add_1/add:z:0dropout_2/Identity:output:0*
T0*-
_output_shapes
:�����������b
IdentityIdentityadd_2/add:z:0^NoOp*
T0*-
_output_shapes
:������������

Identity_1Identity.multi_head_attention/softmax/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2�
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�=
E__inference_transformer_layer_call_and_return_conditional_losses_5365

inputs
normalization_sub_y
normalization_sqrt_xO
<positional_embedding_dense_tensordot_readvariableop_resource:	�I
:positional_embedding_dense_biasadd_readvariableop_resource:	�L
4positional_embedding_add_add_readvariableop_resource:��P
Aencoder_layer_normalization_batchnorm_mul_readvariableop_resource:	�L
=encoder_layer_normalization_batchnorm_readvariableop_resource:	�`
Hencoder_multi_head_attention_query_einsum_einsum_readvariableop_resource:��Q
>encoder_multi_head_attention_query_add_readvariableop_resource:	�^
Fencoder_multi_head_attention_key_einsum_einsum_readvariableop_resource:��O
<encoder_multi_head_attention_key_add_readvariableop_resource:	�`
Hencoder_multi_head_attention_value_einsum_einsum_readvariableop_resource:��Q
>encoder_multi_head_attention_value_add_readvariableop_resource:	�k
Sencoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:��X
Iencoder_multi_head_attention_attention_output_add_readvariableop_resource:	�R
Cencoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:	�N
?encoder_layer_normalization_1_batchnorm_readvariableop_resource:	�E
1encoder_dense_1_tensordot_readvariableop_resource:
��>
/encoder_dense_1_biasadd_readvariableop_resource:	�E
1encoder_dense_2_tensordot_readvariableop_resource:
��>
/encoder_dense_2_biasadd_readvariableop_resource:	�T
Eencoder_1_layer_normalization_2_batchnorm_mul_readvariableop_resource:	�P
Aencoder_1_layer_normalization_2_batchnorm_readvariableop_resource:	�d
Lencoder_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:��U
Bencoder_1_multi_head_attention_1_query_add_readvariableop_resource:	�b
Jencoder_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:��S
@encoder_1_multi_head_attention_1_key_add_readvariableop_resource:	�d
Lencoder_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:��U
Bencoder_1_multi_head_attention_1_value_add_readvariableop_resource:	�o
Wencoder_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:��\
Mencoder_1_multi_head_attention_1_attention_output_add_readvariableop_resource:	�T
Eencoder_1_layer_normalization_3_batchnorm_mul_readvariableop_resource:	�P
Aencoder_1_layer_normalization_3_batchnorm_readvariableop_resource:	�G
3encoder_1_dense_3_tensordot_readvariableop_resource:
��@
1encoder_1_dense_3_biasadd_readvariableop_resource:	�G
3encoder_1_dense_4_tensordot_readvariableop_resource:
��@
1encoder_1_dense_4_biasadd_readvariableop_resource:	�T
Eencoder_2_layer_normalization_4_batchnorm_mul_readvariableop_resource:	�P
Aencoder_2_layer_normalization_4_batchnorm_readvariableop_resource:	�d
Lencoder_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource:��U
Bencoder_2_multi_head_attention_2_query_add_readvariableop_resource:	�b
Jencoder_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource:��S
@encoder_2_multi_head_attention_2_key_add_readvariableop_resource:	�d
Lencoder_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource:��U
Bencoder_2_multi_head_attention_2_value_add_readvariableop_resource:	�o
Wencoder_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource:��\
Mencoder_2_multi_head_attention_2_attention_output_add_readvariableop_resource:	�T
Eencoder_2_layer_normalization_5_batchnorm_mul_readvariableop_resource:	�P
Aencoder_2_layer_normalization_5_batchnorm_readvariableop_resource:	�G
3encoder_2_dense_5_tensordot_readvariableop_resource:
��@
1encoder_2_dense_5_biasadd_readvariableop_resource:	�G
3encoder_2_dense_6_tensordot_readvariableop_resource:
��@
1encoder_2_dense_6_biasadd_readvariableop_resource:	�J
;layer_normalization_6_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_6_batchnorm_readvariableop_resource:	�<
)dense_7_tensordot_readvariableop_resource:	�5
'dense_7_biasadd_readvariableop_resource:
identity

identity_1��dense_7/BiasAdd/ReadVariableOp� dense_7/Tensordot/ReadVariableOp�&encoder/dense_1/BiasAdd/ReadVariableOp�(encoder/dense_1/Tensordot/ReadVariableOp�&encoder/dense_2/BiasAdd/ReadVariableOp�(encoder/dense_2/Tensordot/ReadVariableOp�4encoder/layer_normalization/batchnorm/ReadVariableOp�8encoder/layer_normalization/batchnorm/mul/ReadVariableOp�6encoder/layer_normalization_1/batchnorm/ReadVariableOp�:encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp�@encoder/multi_head_attention/attention_output/add/ReadVariableOp�Jencoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�3encoder/multi_head_attention/key/add/ReadVariableOp�=encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp�5encoder/multi_head_attention/query/add/ReadVariableOp�?encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp�5encoder/multi_head_attention/value/add/ReadVariableOp�?encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp�(encoder_1/dense_3/BiasAdd/ReadVariableOp�*encoder_1/dense_3/Tensordot/ReadVariableOp�(encoder_1/dense_4/BiasAdd/ReadVariableOp�*encoder_1/dense_4/Tensordot/ReadVariableOp�8encoder_1/layer_normalization_2/batchnorm/ReadVariableOp�<encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp�8encoder_1/layer_normalization_3/batchnorm/ReadVariableOp�<encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp�Dencoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp�Nencoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�7encoder_1/multi_head_attention_1/key/add/ReadVariableOp�Aencoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�9encoder_1/multi_head_attention_1/query/add/ReadVariableOp�Cencoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�9encoder_1/multi_head_attention_1/value/add/ReadVariableOp�Cencoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp�(encoder_2/dense_5/BiasAdd/ReadVariableOp�*encoder_2/dense_5/Tensordot/ReadVariableOp�(encoder_2/dense_6/BiasAdd/ReadVariableOp�*encoder_2/dense_6/Tensordot/ReadVariableOp�8encoder_2/layer_normalization_4/batchnorm/ReadVariableOp�<encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp�8encoder_2/layer_normalization_5/batchnorm/ReadVariableOp�<encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp�Dencoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp�Nencoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp�7encoder_2/multi_head_attention_2/key/add/ReadVariableOp�Aencoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp�9encoder_2/multi_head_attention_2/query/add/ReadVariableOp�Cencoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp�9encoder_2/multi_head_attention_2/value/add/ReadVariableOp�Cencoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp�.layer_normalization_6/batchnorm/ReadVariableOp�2layer_normalization_6/batchnorm/mul/ReadVariableOp�+positional_embedding/add/add/ReadVariableOp�1positional_embedding/dense/BiasAdd/ReadVariableOp�3positional_embedding/dense/Tensordot/ReadVariableOpl
normalization/subSubinputsnormalization_sub_y*
T0*,
_output_shapes
:����������]
normalization/SqrtSqrtnormalization_sqrt_x*
T0*"
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*"
_output_shapes
:�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*,
_output_shapes
:�����������
3positional_embedding/dense/Tensordot/ReadVariableOpReadVariableOp<positional_embedding_dense_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0s
)positional_embedding/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:z
)positional_embedding/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       s
*positional_embedding/dense/Tensordot/ShapeShapenormalization/truediv:z:0*
T0*
_output_shapes
:t
2positional_embedding/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-positional_embedding/dense/Tensordot/GatherV2GatherV23positional_embedding/dense/Tensordot/Shape:output:02positional_embedding/dense/Tensordot/free:output:0;positional_embedding/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
4positional_embedding/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
/positional_embedding/dense/Tensordot/GatherV2_1GatherV23positional_embedding/dense/Tensordot/Shape:output:02positional_embedding/dense/Tensordot/axes:output:0=positional_embedding/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
*positional_embedding/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
)positional_embedding/dense/Tensordot/ProdProd6positional_embedding/dense/Tensordot/GatherV2:output:03positional_embedding/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: v
,positional_embedding/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
+positional_embedding/dense/Tensordot/Prod_1Prod8positional_embedding/dense/Tensordot/GatherV2_1:output:05positional_embedding/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: r
0positional_embedding/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
+positional_embedding/dense/Tensordot/concatConcatV22positional_embedding/dense/Tensordot/free:output:02positional_embedding/dense/Tensordot/axes:output:09positional_embedding/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
*positional_embedding/dense/Tensordot/stackPack2positional_embedding/dense/Tensordot/Prod:output:04positional_embedding/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
.positional_embedding/dense/Tensordot/transpose	Transposenormalization/truediv:z:04positional_embedding/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
,positional_embedding/dense/Tensordot/ReshapeReshape2positional_embedding/dense/Tensordot/transpose:y:03positional_embedding/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
+positional_embedding/dense/Tensordot/MatMulMatMul5positional_embedding/dense/Tensordot/Reshape:output:0;positional_embedding/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
,positional_embedding/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�t
2positional_embedding/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-positional_embedding/dense/Tensordot/concat_1ConcatV26positional_embedding/dense/Tensordot/GatherV2:output:05positional_embedding/dense/Tensordot/Const_2:output:0;positional_embedding/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
$positional_embedding/dense/TensordotReshape5positional_embedding/dense/Tensordot/MatMul:product:06positional_embedding/dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
1positional_embedding/dense/BiasAdd/ReadVariableOpReadVariableOp:positional_embedding_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"positional_embedding/dense/BiasAddBiasAdd-positional_embedding/dense/Tensordot:output:09positional_embedding/dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
+positional_embedding/add/add/ReadVariableOpReadVariableOp4positional_embedding_add_add_readvariableop_resource*$
_output_shapes
:��*
dtype0�
positional_embedding/add/addAddV2+positional_embedding/dense/BiasAdd:output:03positional_embedding/add/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
:encoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(encoder/layer_normalization/moments/meanMean positional_embedding/add/add:z:0Cencoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
0encoder/layer_normalization/moments/StopGradientStopGradient1encoder/layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:�����������
5encoder/layer_normalization/moments/SquaredDifferenceSquaredDifference positional_embedding/add/add:z:09encoder/layer_normalization/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
>encoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,encoder/layer_normalization/moments/varianceMean9encoder/layer_normalization/moments/SquaredDifference:z:0Gencoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(p
+encoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
)encoder/layer_normalization/batchnorm/addAddV25encoder/layer_normalization/moments/variance:output:04encoder/layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
+encoder/layer_normalization/batchnorm/RsqrtRsqrt-encoder/layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
8encoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpAencoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)encoder/layer_normalization/batchnorm/mulMul/encoder/layer_normalization/batchnorm/Rsqrt:y:0@encoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
+encoder/layer_normalization/batchnorm/mul_1Mul positional_embedding/add/add:z:0-encoder/layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
+encoder/layer_normalization/batchnorm/mul_2Mul1encoder/layer_normalization/moments/mean:output:0-encoder/layer_normalization/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
4encoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOp=encoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)encoder/layer_normalization/batchnorm/subSub<encoder/layer_normalization/batchnorm/ReadVariableOp:value:0/encoder/layer_normalization/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
+encoder/layer_normalization/batchnorm/add_1AddV2/encoder/layer_normalization/batchnorm/mul_1:z:0-encoder/layer_normalization/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
?encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpHencoder_multi_head_attention_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
0encoder/multi_head_attention/query/einsum/EinsumEinsum/encoder/layer_normalization/batchnorm/add_1:z:0Gencoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
5encoder/multi_head_attention/query/add/ReadVariableOpReadVariableOp>encoder_multi_head_attention_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&encoder/multi_head_attention/query/addAddV29encoder/multi_head_attention/query/einsum/Einsum:output:0=encoder/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
=encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpFencoder_multi_head_attention_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
.encoder/multi_head_attention/key/einsum/EinsumEinsum/encoder/layer_normalization/batchnorm/add_1:z:0Eencoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
3encoder/multi_head_attention/key/add/ReadVariableOpReadVariableOp<encoder_multi_head_attention_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
$encoder/multi_head_attention/key/addAddV27encoder/multi_head_attention/key/einsum/Einsum:output:0;encoder/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
?encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpHencoder_multi_head_attention_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
0encoder/multi_head_attention/value/einsum/EinsumEinsum/encoder/layer_normalization/batchnorm/add_1:z:0Gencoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
5encoder/multi_head_attention/value/add/ReadVariableOpReadVariableOp>encoder_multi_head_attention_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
&encoder/multi_head_attention/value/addAddV29encoder/multi_head_attention/value/einsum/Einsum:output:0=encoder/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������g
"encoder/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
 encoder/multi_head_attention/MulMul*encoder/multi_head_attention/query/add:z:0+encoder/multi_head_attention/Mul/y:output:0*
T0*1
_output_shapes
:������������
*encoder/multi_head_attention/einsum/EinsumEinsum(encoder/multi_head_attention/key/add:z:0$encoder/multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
,encoder/multi_head_attention/softmax/SoftmaxSoftmax3encoder/multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
,encoder/multi_head_attention/einsum_1/EinsumEinsum6encoder/multi_head_attention/softmax/Softmax:softmax:0*encoder/multi_head_attention/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Jencoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSencoder_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
;encoder/multi_head_attention/attention_output/einsum/EinsumEinsum5encoder/multi_head_attention/einsum_1/Einsum:output:0Rencoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
@encoder/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpIencoder_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
1encoder/multi_head_attention/attention_output/addAddV2Dencoder/multi_head_attention/attention_output/einsum/Einsum:output:0Hencoder/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
encoder/add_1/addAddV25encoder/multi_head_attention/attention_output/add:z:0 positional_embedding/add/add:z:0*
T0*-
_output_shapes
:������������
<encoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
*encoder/layer_normalization_1/moments/meanMeanencoder/add_1/add:z:0Eencoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
2encoder/layer_normalization_1/moments/StopGradientStopGradient3encoder/layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:�����������
7encoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceencoder/add_1/add:z:0;encoder/layer_normalization_1/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
@encoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
.encoder/layer_normalization_1/moments/varianceMean;encoder/layer_normalization_1/moments/SquaredDifference:z:0Iencoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(r
-encoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
+encoder/layer_normalization_1/batchnorm/addAddV27encoder/layer_normalization_1/moments/variance:output:06encoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
-encoder/layer_normalization_1/batchnorm/RsqrtRsqrt/encoder/layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
:encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpCencoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+encoder/layer_normalization_1/batchnorm/mulMul1encoder/layer_normalization_1/batchnorm/Rsqrt:y:0Bencoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
-encoder/layer_normalization_1/batchnorm/mul_1Mulencoder/add_1/add:z:0/encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
-encoder/layer_normalization_1/batchnorm/mul_2Mul3encoder/layer_normalization_1/moments/mean:output:0/encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
6encoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp?encoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+encoder/layer_normalization_1/batchnorm/subSub>encoder/layer_normalization_1/batchnorm/ReadVariableOp:value:01encoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
-encoder/layer_normalization_1/batchnorm/add_1AddV21encoder/layer_normalization_1/batchnorm/mul_1:z:0/encoder/layer_normalization_1/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
(encoder/dense_1/Tensordot/ReadVariableOpReadVariableOp1encoder_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0h
encoder/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
encoder/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
encoder/dense_1/Tensordot/ShapeShape1encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:i
'encoder/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder/dense_1/Tensordot/GatherV2GatherV2(encoder/dense_1/Tensordot/Shape:output:0'encoder/dense_1/Tensordot/free:output:00encoder/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)encoder/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder/dense_1/Tensordot/GatherV2_1GatherV2(encoder/dense_1/Tensordot/Shape:output:0'encoder/dense_1/Tensordot/axes:output:02encoder/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
encoder/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
encoder/dense_1/Tensordot/ProdProd+encoder/dense_1/Tensordot/GatherV2:output:0(encoder/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!encoder/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
 encoder/dense_1/Tensordot/Prod_1Prod-encoder/dense_1/Tensordot/GatherV2_1:output:0*encoder/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%encoder/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 encoder/dense_1/Tensordot/concatConcatV2'encoder/dense_1/Tensordot/free:output:0'encoder/dense_1/Tensordot/axes:output:0.encoder/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
encoder/dense_1/Tensordot/stackPack'encoder/dense_1/Tensordot/Prod:output:0)encoder/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
#encoder/dense_1/Tensordot/transpose	Transpose1encoder/layer_normalization_1/batchnorm/add_1:z:0)encoder/dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
!encoder/dense_1/Tensordot/ReshapeReshape'encoder/dense_1/Tensordot/transpose:y:0(encoder/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
 encoder/dense_1/Tensordot/MatMulMatMul*encoder/dense_1/Tensordot/Reshape:output:00encoder/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
!encoder/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�i
'encoder/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder/dense_1/Tensordot/concat_1ConcatV2+encoder/dense_1/Tensordot/GatherV2:output:0*encoder/dense_1/Tensordot/Const_2:output:00encoder/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
encoder/dense_1/TensordotReshape*encoder/dense_1/Tensordot/MatMul:product:0+encoder/dense_1/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
&encoder/dense_1/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/dense_1/BiasAddBiasAdd"encoder/dense_1/Tensordot:output:0.encoder/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������_
encoder/dense_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
encoder/dense_1/Gelu/mulMul#encoder/dense_1/Gelu/mul/x:output:0 encoder/dense_1/BiasAdd:output:0*
T0*-
_output_shapes
:�����������`
encoder/dense_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
encoder/dense_1/Gelu/truedivRealDiv encoder/dense_1/BiasAdd:output:0$encoder/dense_1/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������y
encoder/dense_1/Gelu/ErfErf encoder/dense_1/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������_
encoder/dense_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
encoder/dense_1/Gelu/addAddV2#encoder/dense_1/Gelu/add/x:output:0encoder/dense_1/Gelu/Erf:y:0*
T0*-
_output_shapes
:������������
encoder/dense_1/Gelu/mul_1Mulencoder/dense_1/Gelu/mul:z:0encoder/dense_1/Gelu/add:z:0*
T0*-
_output_shapes
:������������
(encoder/dense_2/Tensordot/ReadVariableOpReadVariableOp1encoder_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0h
encoder/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:o
encoder/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       m
encoder/dense_2/Tensordot/ShapeShapeencoder/dense_1/Gelu/mul_1:z:0*
T0*
_output_shapes
:i
'encoder/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder/dense_2/Tensordot/GatherV2GatherV2(encoder/dense_2/Tensordot/Shape:output:0'encoder/dense_2/Tensordot/free:output:00encoder/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
)encoder/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder/dense_2/Tensordot/GatherV2_1GatherV2(encoder/dense_2/Tensordot/Shape:output:0'encoder/dense_2/Tensordot/axes:output:02encoder/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
encoder/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
encoder/dense_2/Tensordot/ProdProd+encoder/dense_2/Tensordot/GatherV2:output:0(encoder/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: k
!encoder/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
 encoder/dense_2/Tensordot/Prod_1Prod-encoder/dense_2/Tensordot/GatherV2_1:output:0*encoder/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: g
%encoder/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 encoder/dense_2/Tensordot/concatConcatV2'encoder/dense_2/Tensordot/free:output:0'encoder/dense_2/Tensordot/axes:output:0.encoder/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
encoder/dense_2/Tensordot/stackPack'encoder/dense_2/Tensordot/Prod:output:0)encoder/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
#encoder/dense_2/Tensordot/transpose	Transposeencoder/dense_1/Gelu/mul_1:z:0)encoder/dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
!encoder/dense_2/Tensordot/ReshapeReshape'encoder/dense_2/Tensordot/transpose:y:0(encoder/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
 encoder/dense_2/Tensordot/MatMulMatMul*encoder/dense_2/Tensordot/Reshape:output:00encoder/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
!encoder/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�i
'encoder/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder/dense_2/Tensordot/concat_1ConcatV2+encoder/dense_2/Tensordot/GatherV2:output:0*encoder/dense_2/Tensordot/Const_2:output:00encoder/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
encoder/dense_2/TensordotReshape*encoder/dense_2/Tensordot/MatMul:product:0+encoder/dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
&encoder/dense_2/BiasAdd/ReadVariableOpReadVariableOp/encoder_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder/dense_2/BiasAddBiasAdd"encoder/dense_2/Tensordot:output:0.encoder/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
encoder/add_2/addAddV2encoder/add_1/add:z:0 encoder/dense_2/BiasAdd:output:0*
T0*-
_output_shapes
:������������
>encoder_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,encoder_1/layer_normalization_2/moments/meanMeanencoder/add_2/add:z:0Gencoder_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
4encoder_1/layer_normalization_2/moments/StopGradientStopGradient5encoder_1/layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:�����������
9encoder_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceencoder/add_2/add:z:0=encoder_1/layer_normalization_2/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Bencoder_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
0encoder_1/layer_normalization_2/moments/varianceMean=encoder_1/layer_normalization_2/moments/SquaredDifference:z:0Kencoder_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(t
/encoder_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
-encoder_1/layer_normalization_2/batchnorm/addAddV29encoder_1/layer_normalization_2/moments/variance:output:08encoder_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
/encoder_1/layer_normalization_2/batchnorm/RsqrtRsqrt1encoder_1/layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
<encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpEencoder_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_1/layer_normalization_2/batchnorm/mulMul3encoder_1/layer_normalization_2/batchnorm/Rsqrt:y:0Dencoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
/encoder_1/layer_normalization_2/batchnorm/mul_1Mulencoder/add_2/add:z:01encoder_1/layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
/encoder_1/layer_normalization_2/batchnorm/mul_2Mul5encoder_1/layer_normalization_2/moments/mean:output:01encoder_1/layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
8encoder_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpAencoder_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_1/layer_normalization_2/batchnorm/subSub@encoder_1/layer_normalization_2/batchnorm/ReadVariableOp:value:03encoder_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
/encoder_1/layer_normalization_2/batchnorm/add_1AddV23encoder_1/layer_normalization_2/batchnorm/mul_1:z:01encoder_1/layer_normalization_2/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
Cencoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpLencoder_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
4encoder_1/multi_head_attention_1/query/einsum/EinsumEinsum3encoder_1/layer_normalization_2/batchnorm/add_1:z:0Kencoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
9encoder_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpBencoder_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*encoder_1/multi_head_attention_1/query/addAddV2=encoder_1/multi_head_attention_1/query/einsum/Einsum:output:0Aencoder_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Aencoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpJencoder_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
2encoder_1/multi_head_attention_1/key/einsum/EinsumEinsum3encoder_1/layer_normalization_2/batchnorm/add_1:z:0Iencoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
7encoder_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOp@encoder_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
(encoder_1/multi_head_attention_1/key/addAddV2;encoder_1/multi_head_attention_1/key/einsum/Einsum:output:0?encoder_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Cencoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpLencoder_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
4encoder_1/multi_head_attention_1/value/einsum/EinsumEinsum3encoder_1/layer_normalization_2/batchnorm/add_1:z:0Kencoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
9encoder_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpBencoder_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*encoder_1/multi_head_attention_1/value/addAddV2=encoder_1/multi_head_attention_1/value/einsum/Einsum:output:0Aencoder_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������k
&encoder_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
$encoder_1/multi_head_attention_1/MulMul.encoder_1/multi_head_attention_1/query/add:z:0/encoder_1/multi_head_attention_1/Mul/y:output:0*
T0*1
_output_shapes
:������������
.encoder_1/multi_head_attention_1/einsum/EinsumEinsum,encoder_1/multi_head_attention_1/key/add:z:0(encoder_1/multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
2encoder_1/multi_head_attention_1/softmax_1/SoftmaxSoftmax7encoder_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
0encoder_1/multi_head_attention_1/einsum_1/EinsumEinsum<encoder_1/multi_head_attention_1/softmax_1/Softmax:softmax:0.encoder_1/multi_head_attention_1/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Nencoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpWencoder_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
?encoder_1/multi_head_attention_1/attention_output/einsum/EinsumEinsum9encoder_1/multi_head_attention_1/einsum_1/Einsum:output:0Vencoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
Dencoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpMencoder_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5encoder_1/multi_head_attention_1/attention_output/addAddV2Hencoder_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0Lencoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
encoder_1/add_3/addAddV29encoder_1/multi_head_attention_1/attention_output/add:z:0encoder/add_2/add:z:0*
T0*-
_output_shapes
:������������
>encoder_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,encoder_1/layer_normalization_3/moments/meanMeanencoder_1/add_3/add:z:0Gencoder_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
4encoder_1/layer_normalization_3/moments/StopGradientStopGradient5encoder_1/layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:�����������
9encoder_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifferenceencoder_1/add_3/add:z:0=encoder_1/layer_normalization_3/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Bencoder_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
0encoder_1/layer_normalization_3/moments/varianceMean=encoder_1/layer_normalization_3/moments/SquaredDifference:z:0Kencoder_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(t
/encoder_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
-encoder_1/layer_normalization_3/batchnorm/addAddV29encoder_1/layer_normalization_3/moments/variance:output:08encoder_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
/encoder_1/layer_normalization_3/batchnorm/RsqrtRsqrt1encoder_1/layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
<encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpEencoder_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_1/layer_normalization_3/batchnorm/mulMul3encoder_1/layer_normalization_3/batchnorm/Rsqrt:y:0Dencoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
/encoder_1/layer_normalization_3/batchnorm/mul_1Mulencoder_1/add_3/add:z:01encoder_1/layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
/encoder_1/layer_normalization_3/batchnorm/mul_2Mul5encoder_1/layer_normalization_3/moments/mean:output:01encoder_1/layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
8encoder_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpAencoder_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_1/layer_normalization_3/batchnorm/subSub@encoder_1/layer_normalization_3/batchnorm/ReadVariableOp:value:03encoder_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
/encoder_1/layer_normalization_3/batchnorm/add_1AddV23encoder_1/layer_normalization_3/batchnorm/mul_1:z:01encoder_1/layer_normalization_3/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
*encoder_1/dense_3/Tensordot/ReadVariableOpReadVariableOp3encoder_1_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
 encoder_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 encoder_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
!encoder_1/dense_3/Tensordot/ShapeShape3encoder_1/layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
:k
)encoder_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_1/dense_3/Tensordot/GatherV2GatherV2*encoder_1/dense_3/Tensordot/Shape:output:0)encoder_1/dense_3/Tensordot/free:output:02encoder_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+encoder_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&encoder_1/dense_3/Tensordot/GatherV2_1GatherV2*encoder_1/dense_3/Tensordot/Shape:output:0)encoder_1/dense_3/Tensordot/axes:output:04encoder_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!encoder_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 encoder_1/dense_3/Tensordot/ProdProd-encoder_1/dense_3/Tensordot/GatherV2:output:0*encoder_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#encoder_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
"encoder_1/dense_3/Tensordot/Prod_1Prod/encoder_1/dense_3/Tensordot/GatherV2_1:output:0,encoder_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'encoder_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder_1/dense_3/Tensordot/concatConcatV2)encoder_1/dense_3/Tensordot/free:output:0)encoder_1/dense_3/Tensordot/axes:output:00encoder_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
!encoder_1/dense_3/Tensordot/stackPack)encoder_1/dense_3/Tensordot/Prod:output:0+encoder_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
%encoder_1/dense_3/Tensordot/transpose	Transpose3encoder_1/layer_normalization_3/batchnorm/add_1:z:0+encoder_1/dense_3/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
#encoder_1/dense_3/Tensordot/ReshapeReshape)encoder_1/dense_3/Tensordot/transpose:y:0*encoder_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
"encoder_1/dense_3/Tensordot/MatMulMatMul,encoder_1/dense_3/Tensordot/Reshape:output:02encoder_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
#encoder_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�k
)encoder_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_1/dense_3/Tensordot/concat_1ConcatV2-encoder_1/dense_3/Tensordot/GatherV2:output:0,encoder_1/dense_3/Tensordot/Const_2:output:02encoder_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
encoder_1/dense_3/TensordotReshape,encoder_1/dense_3/Tensordot/MatMul:product:0-encoder_1/dense_3/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
(encoder_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp1encoder_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder_1/dense_3/BiasAddBiasAdd$encoder_1/dense_3/Tensordot:output:00encoder_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������a
encoder_1/dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
encoder_1/dense_3/Gelu/mulMul%encoder_1/dense_3/Gelu/mul/x:output:0"encoder_1/dense_3/BiasAdd:output:0*
T0*-
_output_shapes
:�����������b
encoder_1/dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
encoder_1/dense_3/Gelu/truedivRealDiv"encoder_1/dense_3/BiasAdd:output:0&encoder_1/dense_3/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������}
encoder_1/dense_3/Gelu/ErfErf"encoder_1/dense_3/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������a
encoder_1/dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
encoder_1/dense_3/Gelu/addAddV2%encoder_1/dense_3/Gelu/add/x:output:0encoder_1/dense_3/Gelu/Erf:y:0*
T0*-
_output_shapes
:������������
encoder_1/dense_3/Gelu/mul_1Mulencoder_1/dense_3/Gelu/mul:z:0encoder_1/dense_3/Gelu/add:z:0*
T0*-
_output_shapes
:������������
*encoder_1/dense_4/Tensordot/ReadVariableOpReadVariableOp3encoder_1_dense_4_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
 encoder_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 encoder_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
!encoder_1/dense_4/Tensordot/ShapeShape encoder_1/dense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:k
)encoder_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_1/dense_4/Tensordot/GatherV2GatherV2*encoder_1/dense_4/Tensordot/Shape:output:0)encoder_1/dense_4/Tensordot/free:output:02encoder_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+encoder_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&encoder_1/dense_4/Tensordot/GatherV2_1GatherV2*encoder_1/dense_4/Tensordot/Shape:output:0)encoder_1/dense_4/Tensordot/axes:output:04encoder_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!encoder_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 encoder_1/dense_4/Tensordot/ProdProd-encoder_1/dense_4/Tensordot/GatherV2:output:0*encoder_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#encoder_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
"encoder_1/dense_4/Tensordot/Prod_1Prod/encoder_1/dense_4/Tensordot/GatherV2_1:output:0,encoder_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'encoder_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder_1/dense_4/Tensordot/concatConcatV2)encoder_1/dense_4/Tensordot/free:output:0)encoder_1/dense_4/Tensordot/axes:output:00encoder_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
!encoder_1/dense_4/Tensordot/stackPack)encoder_1/dense_4/Tensordot/Prod:output:0+encoder_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
%encoder_1/dense_4/Tensordot/transpose	Transpose encoder_1/dense_3/Gelu/mul_1:z:0+encoder_1/dense_4/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
#encoder_1/dense_4/Tensordot/ReshapeReshape)encoder_1/dense_4/Tensordot/transpose:y:0*encoder_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
"encoder_1/dense_4/Tensordot/MatMulMatMul,encoder_1/dense_4/Tensordot/Reshape:output:02encoder_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
#encoder_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�k
)encoder_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_1/dense_4/Tensordot/concat_1ConcatV2-encoder_1/dense_4/Tensordot/GatherV2:output:0,encoder_1/dense_4/Tensordot/Const_2:output:02encoder_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
encoder_1/dense_4/TensordotReshape,encoder_1/dense_4/Tensordot/MatMul:product:0-encoder_1/dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
(encoder_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp1encoder_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder_1/dense_4/BiasAddBiasAdd$encoder_1/dense_4/Tensordot:output:00encoder_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
encoder_1/add_4/addAddV2encoder_1/add_3/add:z:0"encoder_1/dense_4/BiasAdd:output:0*
T0*-
_output_shapes
:������������
>encoder_2/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,encoder_2/layer_normalization_4/moments/meanMeanencoder_1/add_4/add:z:0Gencoder_2/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
4encoder_2/layer_normalization_4/moments/StopGradientStopGradient5encoder_2/layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:�����������
9encoder_2/layer_normalization_4/moments/SquaredDifferenceSquaredDifferenceencoder_1/add_4/add:z:0=encoder_2/layer_normalization_4/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Bencoder_2/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
0encoder_2/layer_normalization_4/moments/varianceMean=encoder_2/layer_normalization_4/moments/SquaredDifference:z:0Kencoder_2/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(t
/encoder_2/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
-encoder_2/layer_normalization_4/batchnorm/addAddV29encoder_2/layer_normalization_4/moments/variance:output:08encoder_2/layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
/encoder_2/layer_normalization_4/batchnorm/RsqrtRsqrt1encoder_2/layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
<encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpEencoder_2_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_2/layer_normalization_4/batchnorm/mulMul3encoder_2/layer_normalization_4/batchnorm/Rsqrt:y:0Dencoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
/encoder_2/layer_normalization_4/batchnorm/mul_1Mulencoder_1/add_4/add:z:01encoder_2/layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
/encoder_2/layer_normalization_4/batchnorm/mul_2Mul5encoder_2/layer_normalization_4/moments/mean:output:01encoder_2/layer_normalization_4/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
8encoder_2/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOpAencoder_2_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_2/layer_normalization_4/batchnorm/subSub@encoder_2/layer_normalization_4/batchnorm/ReadVariableOp:value:03encoder_2/layer_normalization_4/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
/encoder_2/layer_normalization_4/batchnorm/add_1AddV23encoder_2/layer_normalization_4/batchnorm/mul_1:z:01encoder_2/layer_normalization_4/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
Cencoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpReadVariableOpLencoder_2_multi_head_attention_2_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
4encoder_2/multi_head_attention_2/query/einsum/EinsumEinsum3encoder_2/layer_normalization_4/batchnorm/add_1:z:0Kencoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
9encoder_2/multi_head_attention_2/query/add/ReadVariableOpReadVariableOpBencoder_2_multi_head_attention_2_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*encoder_2/multi_head_attention_2/query/addAddV2=encoder_2/multi_head_attention_2/query/einsum/Einsum:output:0Aencoder_2/multi_head_attention_2/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Aencoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpReadVariableOpJencoder_2_multi_head_attention_2_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
2encoder_2/multi_head_attention_2/key/einsum/EinsumEinsum3encoder_2/layer_normalization_4/batchnorm/add_1:z:0Iencoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
7encoder_2/multi_head_attention_2/key/add/ReadVariableOpReadVariableOp@encoder_2_multi_head_attention_2_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
(encoder_2/multi_head_attention_2/key/addAddV2;encoder_2/multi_head_attention_2/key/einsum/Einsum:output:0?encoder_2/multi_head_attention_2/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
Cencoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpReadVariableOpLencoder_2_multi_head_attention_2_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
4encoder_2/multi_head_attention_2/value/einsum/EinsumEinsum3encoder_2/layer_normalization_4/batchnorm/add_1:z:0Kencoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
9encoder_2/multi_head_attention_2/value/add/ReadVariableOpReadVariableOpBencoder_2_multi_head_attention_2_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
*encoder_2/multi_head_attention_2/value/addAddV2=encoder_2/multi_head_attention_2/value/einsum/Einsum:output:0Aencoder_2/multi_head_attention_2/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������k
&encoder_2/multi_head_attention_2/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
$encoder_2/multi_head_attention_2/MulMul.encoder_2/multi_head_attention_2/query/add:z:0/encoder_2/multi_head_attention_2/Mul/y:output:0*
T0*1
_output_shapes
:������������
.encoder_2/multi_head_attention_2/einsum/EinsumEinsum,encoder_2/multi_head_attention_2/key/add:z:0(encoder_2/multi_head_attention_2/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
2encoder_2/multi_head_attention_2/softmax_2/SoftmaxSoftmax7encoder_2/multi_head_attention_2/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
0encoder_2/multi_head_attention_2/einsum_1/EinsumEinsum<encoder_2/multi_head_attention_2/softmax_2/Softmax:softmax:0.encoder_2/multi_head_attention_2/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Nencoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpWencoder_2_multi_head_attention_2_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
?encoder_2/multi_head_attention_2/attention_output/einsum/EinsumEinsum9encoder_2/multi_head_attention_2/einsum_1/Einsum:output:0Vencoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
Dencoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpReadVariableOpMencoder_2_multi_head_attention_2_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5encoder_2/multi_head_attention_2/attention_output/addAddV2Hencoder_2/multi_head_attention_2/attention_output/einsum/Einsum:output:0Lencoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
encoder_2/add_5/addAddV29encoder_2/multi_head_attention_2/attention_output/add:z:0encoder_1/add_4/add:z:0*
T0*-
_output_shapes
:������������
>encoder_2/layer_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,encoder_2/layer_normalization_5/moments/meanMeanencoder_2/add_5/add:z:0Gencoder_2/layer_normalization_5/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
4encoder_2/layer_normalization_5/moments/StopGradientStopGradient5encoder_2/layer_normalization_5/moments/mean:output:0*
T0*,
_output_shapes
:�����������
9encoder_2/layer_normalization_5/moments/SquaredDifferenceSquaredDifferenceencoder_2/add_5/add:z:0=encoder_2/layer_normalization_5/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
Bencoder_2/layer_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
0encoder_2/layer_normalization_5/moments/varianceMean=encoder_2/layer_normalization_5/moments/SquaredDifference:z:0Kencoder_2/layer_normalization_5/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(t
/encoder_2/layer_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
-encoder_2/layer_normalization_5/batchnorm/addAddV29encoder_2/layer_normalization_5/moments/variance:output:08encoder_2/layer_normalization_5/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
/encoder_2/layer_normalization_5/batchnorm/RsqrtRsqrt1encoder_2/layer_normalization_5/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
<encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpEencoder_2_layer_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_2/layer_normalization_5/batchnorm/mulMul3encoder_2/layer_normalization_5/batchnorm/Rsqrt:y:0Dencoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
/encoder_2/layer_normalization_5/batchnorm/mul_1Mulencoder_2/add_5/add:z:01encoder_2/layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
/encoder_2/layer_normalization_5/batchnorm/mul_2Mul5encoder_2/layer_normalization_5/moments/mean:output:01encoder_2/layer_normalization_5/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
8encoder_2/layer_normalization_5/batchnorm/ReadVariableOpReadVariableOpAencoder_2_layer_normalization_5_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
-encoder_2/layer_normalization_5/batchnorm/subSub@encoder_2/layer_normalization_5/batchnorm/ReadVariableOp:value:03encoder_2/layer_normalization_5/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
/encoder_2/layer_normalization_5/batchnorm/add_1AddV23encoder_2/layer_normalization_5/batchnorm/mul_1:z:01encoder_2/layer_normalization_5/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
*encoder_2/dense_5/Tensordot/ReadVariableOpReadVariableOp3encoder_2_dense_5_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
 encoder_2/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 encoder_2/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
!encoder_2/dense_5/Tensordot/ShapeShape3encoder_2/layer_normalization_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:k
)encoder_2/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_2/dense_5/Tensordot/GatherV2GatherV2*encoder_2/dense_5/Tensordot/Shape:output:0)encoder_2/dense_5/Tensordot/free:output:02encoder_2/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+encoder_2/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&encoder_2/dense_5/Tensordot/GatherV2_1GatherV2*encoder_2/dense_5/Tensordot/Shape:output:0)encoder_2/dense_5/Tensordot/axes:output:04encoder_2/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!encoder_2/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 encoder_2/dense_5/Tensordot/ProdProd-encoder_2/dense_5/Tensordot/GatherV2:output:0*encoder_2/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#encoder_2/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
"encoder_2/dense_5/Tensordot/Prod_1Prod/encoder_2/dense_5/Tensordot/GatherV2_1:output:0,encoder_2/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'encoder_2/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder_2/dense_5/Tensordot/concatConcatV2)encoder_2/dense_5/Tensordot/free:output:0)encoder_2/dense_5/Tensordot/axes:output:00encoder_2/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
!encoder_2/dense_5/Tensordot/stackPack)encoder_2/dense_5/Tensordot/Prod:output:0+encoder_2/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
%encoder_2/dense_5/Tensordot/transpose	Transpose3encoder_2/layer_normalization_5/batchnorm/add_1:z:0+encoder_2/dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
#encoder_2/dense_5/Tensordot/ReshapeReshape)encoder_2/dense_5/Tensordot/transpose:y:0*encoder_2/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
"encoder_2/dense_5/Tensordot/MatMulMatMul,encoder_2/dense_5/Tensordot/Reshape:output:02encoder_2/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
#encoder_2/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�k
)encoder_2/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_2/dense_5/Tensordot/concat_1ConcatV2-encoder_2/dense_5/Tensordot/GatherV2:output:0,encoder_2/dense_5/Tensordot/Const_2:output:02encoder_2/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
encoder_2/dense_5/TensordotReshape,encoder_2/dense_5/Tensordot/MatMul:product:0-encoder_2/dense_5/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
(encoder_2/dense_5/BiasAdd/ReadVariableOpReadVariableOp1encoder_2_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder_2/dense_5/BiasAddBiasAdd$encoder_2/dense_5/Tensordot:output:00encoder_2/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������a
encoder_2/dense_5/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
encoder_2/dense_5/Gelu/mulMul%encoder_2/dense_5/Gelu/mul/x:output:0"encoder_2/dense_5/BiasAdd:output:0*
T0*-
_output_shapes
:�����������b
encoder_2/dense_5/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
encoder_2/dense_5/Gelu/truedivRealDiv"encoder_2/dense_5/BiasAdd:output:0&encoder_2/dense_5/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������}
encoder_2/dense_5/Gelu/ErfErf"encoder_2/dense_5/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������a
encoder_2/dense_5/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
encoder_2/dense_5/Gelu/addAddV2%encoder_2/dense_5/Gelu/add/x:output:0encoder_2/dense_5/Gelu/Erf:y:0*
T0*-
_output_shapes
:������������
encoder_2/dense_5/Gelu/mul_1Mulencoder_2/dense_5/Gelu/mul:z:0encoder_2/dense_5/Gelu/add:z:0*
T0*-
_output_shapes
:������������
*encoder_2/dense_6/Tensordot/ReadVariableOpReadVariableOp3encoder_2_dense_6_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
 encoder_2/dense_6/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:q
 encoder_2/dense_6/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
!encoder_2/dense_6/Tensordot/ShapeShape encoder_2/dense_5/Gelu/mul_1:z:0*
T0*
_output_shapes
:k
)encoder_2/dense_6/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_2/dense_6/Tensordot/GatherV2GatherV2*encoder_2/dense_6/Tensordot/Shape:output:0)encoder_2/dense_6/Tensordot/free:output:02encoder_2/dense_6/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:m
+encoder_2/dense_6/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&encoder_2/dense_6/Tensordot/GatherV2_1GatherV2*encoder_2/dense_6/Tensordot/Shape:output:0)encoder_2/dense_6/Tensordot/axes:output:04encoder_2/dense_6/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:k
!encoder_2/dense_6/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 encoder_2/dense_6/Tensordot/ProdProd-encoder_2/dense_6/Tensordot/GatherV2:output:0*encoder_2/dense_6/Tensordot/Const:output:0*
T0*
_output_shapes
: m
#encoder_2/dense_6/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
"encoder_2/dense_6/Tensordot/Prod_1Prod/encoder_2/dense_6/Tensordot/GatherV2_1:output:0,encoder_2/dense_6/Tensordot/Const_1:output:0*
T0*
_output_shapes
: i
'encoder_2/dense_6/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"encoder_2/dense_6/Tensordot/concatConcatV2)encoder_2/dense_6/Tensordot/free:output:0)encoder_2/dense_6/Tensordot/axes:output:00encoder_2/dense_6/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
!encoder_2/dense_6/Tensordot/stackPack)encoder_2/dense_6/Tensordot/Prod:output:0+encoder_2/dense_6/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
%encoder_2/dense_6/Tensordot/transpose	Transpose encoder_2/dense_5/Gelu/mul_1:z:0+encoder_2/dense_6/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
#encoder_2/dense_6/Tensordot/ReshapeReshape)encoder_2/dense_6/Tensordot/transpose:y:0*encoder_2/dense_6/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
"encoder_2/dense_6/Tensordot/MatMulMatMul,encoder_2/dense_6/Tensordot/Reshape:output:02encoder_2/dense_6/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������n
#encoder_2/dense_6/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�k
)encoder_2/dense_6/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
$encoder_2/dense_6/Tensordot/concat_1ConcatV2-encoder_2/dense_6/Tensordot/GatherV2:output:0,encoder_2/dense_6/Tensordot/Const_2:output:02encoder_2/dense_6/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
encoder_2/dense_6/TensordotReshape,encoder_2/dense_6/Tensordot/MatMul:product:0-encoder_2/dense_6/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
(encoder_2/dense_6/BiasAdd/ReadVariableOpReadVariableOp1encoder_2_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
encoder_2/dense_6/BiasAddBiasAdd$encoder_2/dense_6/Tensordot:output:00encoder_2/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
encoder_2/add_6/addAddV2encoder_2/add_5/add:z:0"encoder_2/dense_6/BiasAdd:output:0*
T0*-
_output_shapes
:�����������~
4layer_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_6/moments/meanMeanencoder_2/add_6/add:z:0=layer_normalization_6/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_6/moments/StopGradientStopGradient+layer_normalization_6/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_6/moments/SquaredDifferenceSquaredDifferenceencoder_2/add_6/add:z:03layer_normalization_6/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_6/moments/varianceMean3layer_normalization_6/moments/SquaredDifference:z:0Alayer_normalization_6/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_6/batchnorm/addAddV2/layer_normalization_6/moments/variance:output:0.layer_normalization_6/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_6/batchnorm/RsqrtRsqrt'layer_normalization_6/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_6/batchnorm/mulMul)layer_normalization_6/batchnorm/Rsqrt:y:0:layer_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_6/batchnorm/mul_1Mulencoder_2/add_6/add:z:0'layer_normalization_6/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_6/batchnorm/mul_2Mul+layer_normalization_6/moments/mean:output:0'layer_normalization_6/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_6/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_6/batchnorm/subSub6layer_normalization_6/batchnorm/ReadVariableOp:value:0)layer_normalization_6/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_6/batchnorm/add_1AddV2)layer_normalization_6/batchnorm/mul_1:z:0'layer_normalization_6/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_7/Tensordot/ReadVariableOpReadVariableOp)dense_7_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0`
dense_7/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_7/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_7/Tensordot/ShapeShape)layer_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_7/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_7/Tensordot/GatherV2GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/free:output:0(dense_7/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_7/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_7/Tensordot/GatherV2_1GatherV2 dense_7/Tensordot/Shape:output:0dense_7/Tensordot/axes:output:0*dense_7/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_7/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_7/Tensordot/ProdProd#dense_7/Tensordot/GatherV2:output:0 dense_7/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_7/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_7/Tensordot/Prod_1Prod%dense_7/Tensordot/GatherV2_1:output:0"dense_7/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_7/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_7/Tensordot/concatConcatV2dense_7/Tensordot/free:output:0dense_7/Tensordot/axes:output:0&dense_7/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_7/Tensordot/stackPackdense_7/Tensordot/Prod:output:0!dense_7/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_7/Tensordot/transpose	Transpose)layer_normalization_6/batchnorm/add_1:z:0!dense_7/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_7/Tensordot/ReshapeReshapedense_7/Tensordot/transpose:y:0 dense_7/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_7/Tensordot/MatMulMatMul"dense_7/Tensordot/Reshape:output:0(dense_7/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������c
dense_7/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_7/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_7/Tensordot/concat_1ConcatV2#dense_7/Tensordot/GatherV2:output:0"dense_7/Tensordot/Const_2:output:0(dense_7/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_7/TensordotReshape"dense_7/Tensordot/MatMul:product:0#dense_7/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/Tensordot:output:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������l
IdentityIdentitydense_7/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:�����������

Identity_1Identity<encoder_2/multi_head_attention_2/softmax_2/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_7/BiasAdd/ReadVariableOp!^dense_7/Tensordot/ReadVariableOp'^encoder/dense_1/BiasAdd/ReadVariableOp)^encoder/dense_1/Tensordot/ReadVariableOp'^encoder/dense_2/BiasAdd/ReadVariableOp)^encoder/dense_2/Tensordot/ReadVariableOp5^encoder/layer_normalization/batchnorm/ReadVariableOp9^encoder/layer_normalization/batchnorm/mul/ReadVariableOp7^encoder/layer_normalization_1/batchnorm/ReadVariableOp;^encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpA^encoder/multi_head_attention/attention_output/add/ReadVariableOpK^encoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp4^encoder/multi_head_attention/key/add/ReadVariableOp>^encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp6^encoder/multi_head_attention/query/add/ReadVariableOp@^encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp6^encoder/multi_head_attention/value/add/ReadVariableOp@^encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp)^encoder_1/dense_3/BiasAdd/ReadVariableOp+^encoder_1/dense_3/Tensordot/ReadVariableOp)^encoder_1/dense_4/BiasAdd/ReadVariableOp+^encoder_1/dense_4/Tensordot/ReadVariableOp9^encoder_1/layer_normalization_2/batchnorm/ReadVariableOp=^encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp9^encoder_1/layer_normalization_3/batchnorm/ReadVariableOp=^encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOpE^encoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpO^encoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp8^encoder_1/multi_head_attention_1/key/add/ReadVariableOpB^encoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:^encoder_1/multi_head_attention_1/query/add/ReadVariableOpD^encoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:^encoder_1/multi_head_attention_1/value/add/ReadVariableOpD^encoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp)^encoder_2/dense_5/BiasAdd/ReadVariableOp+^encoder_2/dense_5/Tensordot/ReadVariableOp)^encoder_2/dense_6/BiasAdd/ReadVariableOp+^encoder_2/dense_6/Tensordot/ReadVariableOp9^encoder_2/layer_normalization_4/batchnorm/ReadVariableOp=^encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp9^encoder_2/layer_normalization_5/batchnorm/ReadVariableOp=^encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOpE^encoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpO^encoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp8^encoder_2/multi_head_attention_2/key/add/ReadVariableOpB^encoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp:^encoder_2/multi_head_attention_2/query/add/ReadVariableOpD^encoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp:^encoder_2/multi_head_attention_2/value/add/ReadVariableOpD^encoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp/^layer_normalization_6/batchnorm/ReadVariableOp3^layer_normalization_6/batchnorm/mul/ReadVariableOp,^positional_embedding/add/add/ReadVariableOp2^positional_embedding/dense/BiasAdd/ReadVariableOp4^positional_embedding/dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2D
 dense_7/Tensordot/ReadVariableOp dense_7/Tensordot/ReadVariableOp2P
&encoder/dense_1/BiasAdd/ReadVariableOp&encoder/dense_1/BiasAdd/ReadVariableOp2T
(encoder/dense_1/Tensordot/ReadVariableOp(encoder/dense_1/Tensordot/ReadVariableOp2P
&encoder/dense_2/BiasAdd/ReadVariableOp&encoder/dense_2/BiasAdd/ReadVariableOp2T
(encoder/dense_2/Tensordot/ReadVariableOp(encoder/dense_2/Tensordot/ReadVariableOp2l
4encoder/layer_normalization/batchnorm/ReadVariableOp4encoder/layer_normalization/batchnorm/ReadVariableOp2t
8encoder/layer_normalization/batchnorm/mul/ReadVariableOp8encoder/layer_normalization/batchnorm/mul/ReadVariableOp2p
6encoder/layer_normalization_1/batchnorm/ReadVariableOp6encoder/layer_normalization_1/batchnorm/ReadVariableOp2x
:encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
@encoder/multi_head_attention/attention_output/add/ReadVariableOp@encoder/multi_head_attention/attention_output/add/ReadVariableOp2�
Jencoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpJencoder/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2j
3encoder/multi_head_attention/key/add/ReadVariableOp3encoder/multi_head_attention/key/add/ReadVariableOp2~
=encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp=encoder/multi_head_attention/key/einsum/Einsum/ReadVariableOp2n
5encoder/multi_head_attention/query/add/ReadVariableOp5encoder/multi_head_attention/query/add/ReadVariableOp2�
?encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp?encoder/multi_head_attention/query/einsum/Einsum/ReadVariableOp2n
5encoder/multi_head_attention/value/add/ReadVariableOp5encoder/multi_head_attention/value/add/ReadVariableOp2�
?encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp?encoder/multi_head_attention/value/einsum/Einsum/ReadVariableOp2T
(encoder_1/dense_3/BiasAdd/ReadVariableOp(encoder_1/dense_3/BiasAdd/ReadVariableOp2X
*encoder_1/dense_3/Tensordot/ReadVariableOp*encoder_1/dense_3/Tensordot/ReadVariableOp2T
(encoder_1/dense_4/BiasAdd/ReadVariableOp(encoder_1/dense_4/BiasAdd/ReadVariableOp2X
*encoder_1/dense_4/Tensordot/ReadVariableOp*encoder_1/dense_4/Tensordot/ReadVariableOp2t
8encoder_1/layer_normalization_2/batchnorm/ReadVariableOp8encoder_1/layer_normalization_2/batchnorm/ReadVariableOp2|
<encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp<encoder_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2t
8encoder_1/layer_normalization_3/batchnorm/ReadVariableOp8encoder_1/layer_normalization_3/batchnorm/ReadVariableOp2|
<encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp<encoder_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2�
Dencoder_1/multi_head_attention_1/attention_output/add/ReadVariableOpDencoder_1/multi_head_attention_1/attention_output/add/ReadVariableOp2�
Nencoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpNencoder_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2r
7encoder_1/multi_head_attention_1/key/add/ReadVariableOp7encoder_1/multi_head_attention_1/key/add/ReadVariableOp2�
Aencoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpAencoder_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2v
9encoder_1/multi_head_attention_1/query/add/ReadVariableOp9encoder_1/multi_head_attention_1/query/add/ReadVariableOp2�
Cencoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpCencoder_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2v
9encoder_1/multi_head_attention_1/value/add/ReadVariableOp9encoder_1/multi_head_attention_1/value/add/ReadVariableOp2�
Cencoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpCencoder_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2T
(encoder_2/dense_5/BiasAdd/ReadVariableOp(encoder_2/dense_5/BiasAdd/ReadVariableOp2X
*encoder_2/dense_5/Tensordot/ReadVariableOp*encoder_2/dense_5/Tensordot/ReadVariableOp2T
(encoder_2/dense_6/BiasAdd/ReadVariableOp(encoder_2/dense_6/BiasAdd/ReadVariableOp2X
*encoder_2/dense_6/Tensordot/ReadVariableOp*encoder_2/dense_6/Tensordot/ReadVariableOp2t
8encoder_2/layer_normalization_4/batchnorm/ReadVariableOp8encoder_2/layer_normalization_4/batchnorm/ReadVariableOp2|
<encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp<encoder_2/layer_normalization_4/batchnorm/mul/ReadVariableOp2t
8encoder_2/layer_normalization_5/batchnorm/ReadVariableOp8encoder_2/layer_normalization_5/batchnorm/ReadVariableOp2|
<encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp<encoder_2/layer_normalization_5/batchnorm/mul/ReadVariableOp2�
Dencoder_2/multi_head_attention_2/attention_output/add/ReadVariableOpDencoder_2/multi_head_attention_2/attention_output/add/ReadVariableOp2�
Nencoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOpNencoder_2/multi_head_attention_2/attention_output/einsum/Einsum/ReadVariableOp2r
7encoder_2/multi_head_attention_2/key/add/ReadVariableOp7encoder_2/multi_head_attention_2/key/add/ReadVariableOp2�
Aencoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOpAencoder_2/multi_head_attention_2/key/einsum/Einsum/ReadVariableOp2v
9encoder_2/multi_head_attention_2/query/add/ReadVariableOp9encoder_2/multi_head_attention_2/query/add/ReadVariableOp2�
Cencoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOpCencoder_2/multi_head_attention_2/query/einsum/Einsum/ReadVariableOp2v
9encoder_2/multi_head_attention_2/value/add/ReadVariableOp9encoder_2/multi_head_attention_2/value/add/ReadVariableOp2�
Cencoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOpCencoder_2/multi_head_attention_2/value/einsum/Einsum/ReadVariableOp2`
.layer_normalization_6/batchnorm/ReadVariableOp.layer_normalization_6/batchnorm/ReadVariableOp2h
2layer_normalization_6/batchnorm/mul/ReadVariableOp2layer_normalization_6/batchnorm/mul/ReadVariableOp2Z
+positional_embedding/add/add/ReadVariableOp+positional_embedding/add/add/ReadVariableOp2f
1positional_embedding/dense/BiasAdd/ReadVariableOp1positional_embedding/dense/BiasAdd/ReadVariableOp2j
3positional_embedding/dense/Tensordot/ReadVariableOp3positional_embedding/dense/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_output_shapes
::($
"
_output_shapes
:
�=
�
E__inference_transformer_layer_call_and_return_conditional_losses_4058
input_1
normalization_sub_y
normalization_sqrt_x,
positional_embedding_3937:	�(
positional_embedding_3939:	�1
positional_embedding_3941:��
encoder_3944:	�
encoder_3946:	�$
encoder_3948:��
encoder_3950:	�$
encoder_3952:��
encoder_3954:	�$
encoder_3956:��
encoder_3958:	�$
encoder_3960:��
encoder_3962:	�
encoder_3964:	�
encoder_3966:	� 
encoder_3968:
��
encoder_3970:	� 
encoder_3972:
��
encoder_3974:	�
encoder_1_3978:	�
encoder_1_3980:	�&
encoder_1_3982:��!
encoder_1_3984:	�&
encoder_1_3986:��!
encoder_1_3988:	�&
encoder_1_3990:��!
encoder_1_3992:	�&
encoder_1_3994:��
encoder_1_3996:	�
encoder_1_3998:	�
encoder_1_4000:	�"
encoder_1_4002:
��
encoder_1_4004:	�"
encoder_1_4006:
��
encoder_1_4008:	�
encoder_2_4012:	�
encoder_2_4014:	�&
encoder_2_4016:��!
encoder_2_4018:	�&
encoder_2_4020:��!
encoder_2_4022:	�&
encoder_2_4024:��!
encoder_2_4026:	�&
encoder_2_4028:��
encoder_2_4030:	�
encoder_2_4032:	�
encoder_2_4034:	�"
encoder_2_4036:
��
encoder_2_4038:	�"
encoder_2_4040:
��
encoder_2_4042:	�)
layer_normalization_6_4046:	�)
layer_normalization_6_4048:	�
dense_7_4051:	�
dense_7_4053:
identity

identity_1��dense_7/StatefulPartitionedCall�encoder/StatefulPartitionedCall�!encoder_1/StatefulPartitionedCall�!encoder_2/StatefulPartitionedCall�-layer_normalization_6/StatefulPartitionedCall�,positional_embedding/StatefulPartitionedCallm
normalization/subSubinput_1normalization_sub_y*
T0*,
_output_shapes
:����������]
normalization/SqrtSqrtnormalization_sqrt_x*
T0*"
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*"
_output_shapes
:�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*,
_output_shapes
:�����������
,positional_embedding/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0positional_embedding_3937positional_embedding_3939positional_embedding_3941*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_positional_embedding_layer_call_and_return_conditional_losses_3293�
encoder/StatefulPartitionedCallStatefulPartitionedCall5positional_embedding/StatefulPartitionedCall:output:0encoder_3944encoder_3946encoder_3948encoder_3950encoder_3952encoder_3954encoder_3956encoder_3958encoder_3960encoder_3962encoder_3964encoder_3966encoder_3968encoder_3970encoder_3972encoder_3974*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_encoder_layer_call_and_return_conditional_losses_3209�
!encoder_1/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0encoder_1_3978encoder_1_3980encoder_1_3982encoder_1_3984encoder_1_3986encoder_1_3988encoder_1_3990encoder_1_3992encoder_1_3994encoder_1_3996encoder_1_3998encoder_1_4000encoder_1_4002encoder_1_4004encoder_1_4006encoder_1_4008*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_1_layer_call_and_return_conditional_losses_2998�
!encoder_2/StatefulPartitionedCallStatefulPartitionedCall*encoder_1/StatefulPartitionedCall:output:0encoder_2_4012encoder_2_4014encoder_2_4016encoder_2_4018encoder_2_4020encoder_2_4022encoder_2_4024encoder_2_4026encoder_2_4028encoder_2_4030encoder_2_4032encoder_2_4034encoder_2_4036encoder_2_4038encoder_2_4040encoder_2_4042*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:�����������:�����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_encoder_2_layer_call_and_return_conditional_losses_2787�
-layer_normalization_6/StatefulPartitionedCallStatefulPartitionedCall*encoder_2/StatefulPartitionedCall:output:0layer_normalization_6_4046layer_normalization_6_4048*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_2430�
dense_7/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_6/StatefulPartitionedCall:output:0dense_7_4051dense_7_4053*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_7_layer_call_and_return_conditional_losses_2466|
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:�����������

Identity_1Identity*encoder_2/StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp ^dense_7/StatefulPartitionedCall ^encoder/StatefulPartitionedCall"^encoder_1/StatefulPartitionedCall"^encoder_2/StatefulPartitionedCall.^layer_normalization_6/StatefulPartitionedCall-^positional_embedding/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2F
!encoder_1/StatefulPartitionedCall!encoder_1/StatefulPartitionedCall2F
!encoder_2/StatefulPartitionedCall!encoder_2/StatefulPartitionedCall2^
-layer_normalization_6/StatefulPartitionedCall-layer_normalization_6/StatefulPartitionedCall2\
,positional_embedding/StatefulPartitionedCall,positional_embedding/StatefulPartitionedCall:U Q
,
_output_shapes
:����������
!
_user_specified_name	input_1:($
"
_output_shapes
::($
"
_output_shapes
:
��
�
C__inference_encoder_1_layer_call_and_return_conditional_losses_2203

inputsJ
;layer_normalization_2_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_2_batchnorm_readvariableop_resource:	�Z
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_1_query_add_readvariableop_resource:	�X
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:��I
6multi_head_attention_1_key_add_readvariableop_resource:	�Z
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:��K
8multi_head_attention_1_value_add_readvariableop_resource:	�e
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:��R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	�J
;layer_normalization_3_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_3_batchnorm_readvariableop_resource:	�=
)dense_3_tensordot_readvariableop_resource:
��6
'dense_3_biasadd_readvariableop_resource:	�=
)dense_4_tensordot_readvariableop_resource:
��6
'dense_4_biasadd_readvariableop_resource:	�
identity

identity_1��dense_3/BiasAdd/ReadVariableOp� dense_3/Tensordot/ReadVariableOp�dense_4/BiasAdd/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�.layer_normalization_2/batchnorm/ReadVariableOp�2layer_normalization_2/batchnorm/mul/ReadVariableOp�.layer_normalization_3/batchnorm/ReadVariableOp�2layer_normalization_3/batchnorm/mul/ReadVariableOp�:multi_head_attention_1/attention_output/add/ReadVariableOp�Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�-multi_head_attention_1/key/add/ReadVariableOp�7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�/multi_head_attention_1/query/add/ReadVariableOp�9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�/multi_head_attention_1/value/add/ReadVariableOp�9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_2/moments/meanMeaninputs=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceinputs3layer_normalization_2/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_2/batchnorm/mul_1Mulinputs'layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_1/query/einsum/EinsumEinsum)layer_normalization_2/batchnorm/add_1:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
(multi_head_attention_1/key/einsum/EinsumEinsum)layer_normalization_2/batchnorm/add_1:z:0?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
*multi_head_attention_1/value/einsum/EinsumEinsum)layer_normalization_2/batchnorm/add_1:z:0Amulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:�����������*
equationabc,cde->abde�
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *��=�
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*1
_output_shapes
:������������
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:�����������*
equationaecd,abcd->acbe�
(multi_head_attention_1/softmax_1/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:������������
)multi_head_attention_1/dropout_8/IdentityIdentity2multi_head_attention_1/softmax_1/Softmax:softmax:0*
T0*1
_output_shapes
:������������
&multi_head_attention_1/einsum_1/EinsumEinsum2multi_head_attention_1/dropout_8/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*1
_output_shapes
:�����������*
equationacbe,aecd->abcd�
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:�����������*
equationabcd,cde->abe�
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
dropout_3/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*-
_output_shapes
:�����������o
	add_3/addAddV2dropout_3/Identity:output:0inputs*
T0*-
_output_shapes
:�����������~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_3/moments/meanMeanadd_3/add:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(�
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:�����������
/layer_normalization_3/moments/SquaredDifferenceSquaredDifferenceadd_3/add:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*-
_output_shapes
:������������
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:�����������
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:�����������
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:������������
%layer_normalization_3/batchnorm/mul_1Muladd_3/add:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*-
_output_shapes
:������������
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:������������
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*-
_output_shapes
:������������
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_3/Tensordot/ShapeShape)layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_3/Tensordot/transpose	Transpose)layer_normalization_3/batchnorm/add_1:z:0!dense_3/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������W
dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dense_3/Gelu/mulMuldense_3/Gelu/mul/x:output:0dense_3/BiasAdd:output:0*
T0*-
_output_shapes
:�����������X
dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
dense_3/Gelu/truedivRealDivdense_3/BiasAdd:output:0dense_3/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:�����������i
dense_3/Gelu/ErfErfdense_3/Gelu/truediv:z:0*
T0*-
_output_shapes
:�����������W
dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dense_3/Gelu/addAddV2dense_3/Gelu/add/x:output:0dense_3/Gelu/Erf:y:0*
T0*-
_output_shapes
:�����������}
dense_3/Gelu/mul_1Muldense_3/Gelu/mul:z:0dense_3/Gelu/add:z:0*
T0*-
_output_shapes
:������������
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_4/Tensordot/ShapeShapedense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/transpose	Transposedense_3/Gelu/mul_1:z:0!dense_4/Tensordot/concat:output:0*
T0*-
_output_shapes
:������������
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:������������
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������p
dropout_4/IdentityIdentitydense_4/BiasAdd:output:0*
T0*-
_output_shapes
:�����������v
	add_4/addAddV2add_3/add:z:0dropout_4/Identity:output:0*
T0*-
_output_shapes
:�����������b
IdentityIdentityadd_4/add:z:0^NoOp*
T0*-
_output_shapes
:������������

Identity_1Identity2multi_head_attention_1/softmax_1/Softmax:softmax:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2�
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:U Q
-
_output_shapes
:�����������
 
_user_specified_nameinputs
�#
�
N__inference_positional_embedding_layer_call_and_return_conditional_losses_3293

inputs:
'dense_tensordot_readvariableop_resource:	�4
%dense_biasadd_readvariableop_resource:	�7
add_add_readvariableop_resource:��
identity��add/add/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       K
dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transposeinputsdense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������b
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:�����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������|
add/add/ReadVariableOpReadVariableOpadd_add_readvariableop_resource*$
_output_shapes
:��*
dtype0�
add/addAddV2dense/BiasAdd:output:0add/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:�����������`
IdentityIdentityadd/add:z:0^NoOp*
T0*-
_output_shapes
:������������
NoOpNoOp^add/add/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 20
add/add/ReadVariableOpadd/add/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
@
input_15
serving_default_input_1:0����������A
output_15
StatefulPartitionedCall:0����������F
output_2:
StatefulPartitionedCall:1�����������tensorflow/serving/predict:��
�

input_norm
pos_embs
e_layers
norm
final_layer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"
_tf_keras_model
�

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
	keras_api"
_tf_keras_layer
�

projection
add
dropout
position
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
5
0
1
2"
trackable_list_wrapper
�
axis
	gamma
 beta
!	variables
"trainable_variables
#regularization_losses
$	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0
1
2
3
+4
,5
-6
.7
/8
09
110
211
312
413
514
615
716
817
918
:19
;20
<21
=22
>23
?24
@25
A26
B27
C28
D29
E30
F31
G32
H33
I34
J35
K36
L37
M38
N39
O40
P41
Q42
R43
S44
T45
U46
V47
W48
X49
Y50
Z51
[52
\53
54
 55
%56
&57"
trackable_list_wrapper
�
0
+1
,2
-3
.4
/5
06
17
28
39
410
511
612
713
814
915
:16
;17
<18
=19
>20
?21
@22
A23
B24
C25
D26
E27
F28
G29
H30
I31
J32
K33
L34
M35
N36
O37
P38
Q39
R40
S41
T42
U43
V44
W45
X46
Y47
Z48
[49
\50
51
 52
%53
&54"
trackable_list_wrapper
 "
trackable_list_wrapper
�
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
	variables
trainable_variables
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
*:(2transformer/normalization/mean
.:,2"transformer/normalization/variance
':%	 2transformer/normalization/count
"
_generic_user_object
�

+kernel
,bias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
A:?��2)transformer/positional_embedding/position
5
0
+1
,2"
trackable_list_wrapper
5
0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
smha
tdense_0
udense_1
v	dropout_0
w	dropout_1

xnorm_0

ynorm_1
	zadd_0
	{add_1
|	variables
}trainable_variables
~regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�mha
�dense_0
�dense_1
�	dropout_0
�	dropout_1
�norm_0
�norm_1

�add_0

�add_1
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�mha
�dense_0
�dense_1
�	dropout_0
�	dropout_1
�norm_0
�norm_1

�add_0

�add_1
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
6:4�2'transformer/layer_normalization_6/gamma
5:3�2&transformer/layer_normalization_6/beta
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-:+	�2transformer/dense_7/kernel
&:$2transformer/dense_7/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
@:>	�2-transformer/positional_embedding/dense/kernel
::8�2+transformer/positional_embedding/dense/bias
M:K��25transformer/encoder/multi_head_attention/query/kernel
F:D	�23transformer/encoder/multi_head_attention/query/bias
K:I��23transformer/encoder/multi_head_attention/key/kernel
D:B	�21transformer/encoder/multi_head_attention/key/bias
M:K��25transformer/encoder/multi_head_attention/value/kernel
F:D	�23transformer/encoder/multi_head_attention/value/bias
X:V��2@transformer/encoder/multi_head_attention/attention_output/kernel
M:K�2>transformer/encoder/multi_head_attention/attention_output/bias
6:4
��2"transformer/encoder/dense_1/kernel
/:-�2 transformer/encoder/dense_1/bias
6:4
��2"transformer/encoder/dense_2/kernel
/:-�2 transformer/encoder/dense_2/bias
<::�2-transformer/encoder/layer_normalization/gamma
;:9�2,transformer/encoder/layer_normalization/beta
>:<�2/transformer/encoder/layer_normalization_1/gamma
=:;�2.transformer/encoder/layer_normalization_1/beta
Q:O��29transformer/encoder_1/multi_head_attention_1/query/kernel
J:H	�27transformer/encoder_1/multi_head_attention_1/query/bias
O:M��27transformer/encoder_1/multi_head_attention_1/key/kernel
H:F	�25transformer/encoder_1/multi_head_attention_1/key/bias
Q:O��29transformer/encoder_1/multi_head_attention_1/value/kernel
J:H	�27transformer/encoder_1/multi_head_attention_1/value/bias
\:Z��2Dtransformer/encoder_1/multi_head_attention_1/attention_output/kernel
Q:O�2Btransformer/encoder_1/multi_head_attention_1/attention_output/bias
8:6
��2$transformer/encoder_1/dense_3/kernel
1:/�2"transformer/encoder_1/dense_3/bias
8:6
��2$transformer/encoder_1/dense_4/kernel
1:/�2"transformer/encoder_1/dense_4/bias
@:>�21transformer/encoder_1/layer_normalization_2/gamma
?:=�20transformer/encoder_1/layer_normalization_2/beta
@:>�21transformer/encoder_1/layer_normalization_3/gamma
?:=�20transformer/encoder_1/layer_normalization_3/beta
Q:O��29transformer/encoder_2/multi_head_attention_2/query/kernel
J:H	�27transformer/encoder_2/multi_head_attention_2/query/bias
O:M��27transformer/encoder_2/multi_head_attention_2/key/kernel
H:F	�25transformer/encoder_2/multi_head_attention_2/key/bias
Q:O��29transformer/encoder_2/multi_head_attention_2/value/kernel
J:H	�27transformer/encoder_2/multi_head_attention_2/value/bias
\:Z��2Dtransformer/encoder_2/multi_head_attention_2/attention_output/kernel
Q:O�2Btransformer/encoder_2/multi_head_attention_2/attention_output/bias
8:6
��2$transformer/encoder_2/dense_5/kernel
1:/�2"transformer/encoder_2/dense_5/bias
8:6
��2$transformer/encoder_2/dense_6/kernel
1:/�2"transformer/encoder_2/dense_6/bias
@:>�21transformer/encoder_2/layer_normalization_4/gamma
?:=�20transformer/encoder_2/layer_normalization_4/beta
@:>�21transformer/encoder_2/layer_normalization_5/gamma
?:=�20transformer/encoder_2/layer_normalization_5/beta
5
0
1
2"
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
b	variables
ctrainable_variables
dregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

5kernel
6bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

7kernel
8bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis
	9gamma
:beta
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis
	;gamma
<beta
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15"
trackable_list_wrapper
�
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14
<15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
|	variables
}trainable_variables
~regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ekernel
Fbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Gkernel
Hbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis
	Igamma
Jbeta
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis
	Kgamma
Lbeta
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15"
trackable_list_wrapper
�
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�_query_dense
�
_key_dense
�_value_dense
�_softmax
�_dropout_layer
�_output_dense
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Ukernel
Vbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Wkernel
Xbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis
	Ygamma
Zbeta
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	�axis
	[gamma
\beta
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
M0
N1
O2
P3
Q4
R5
S6
T7
U8
V9
W10
X11
Y12
Z13
[14
\15"
trackable_list_wrapper
�
M0
N1
O2
P3
Q4
R5
S6
T7
U8
V9
W10
X11
Y12
Z13
[14
\15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
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
�
�partial_output_shape
�full_output_shape

-kernel
.bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

/kernel
0bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

1kernel
2bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

3kernel
4bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
X
-0
.1
/2
03
14
25
36
47"
trackable_list_wrapper
X
-0
.1
/2
03
14
25
36
47"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
_
s0
t1
u2
v3
w4
x5
y6
z7
{8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
�partial_output_shape
�full_output_shape

=kernel
>bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

?kernel
@bias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

Akernel
Bbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

Ckernel
Dbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
X
=0
>1
?2
@3
A4
B5
C6
D7"
trackable_list_wrapper
X
=0
>1
?2
@3
A4
B5
C6
D7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
h
�0
�1
�2
�3
�4
�5
�6
�7
�8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
�partial_output_shape
�full_output_shape

Mkernel
Nbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

Okernel
Pbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

Qkernel
Rbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�partial_output_shape
�full_output_shape

Skernel
Tbias
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
X
M0
N1
O2
P3
Q4
R5
S6
T7"
trackable_list_wrapper
X
M0
N1
O2
P3
Q4
R5
S6
T7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
h
�0
�1
�2
�3
�4
�5
�6
�7
�8"
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
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
P
�0
�1
�2
�3
�4
�5"
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
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
P
�0
�1
�2
�3
�4
�5"
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
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
P
�0
�1
�2
�3
�4
�5"
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
�2�
*__inference_transformer_layer_call_fn_2593
*__inference_transformer_layer_call_fn_4302
*__inference_transformer_layer_call_fn_4423
*__inference_transformer_layer_call_fn_3796�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
E__inference_transformer_layer_call_and_return_conditional_losses_4899
E__inference_transformer_layer_call_and_return_conditional_losses_5365
E__inference_transformer_layer_call_and_return_conditional_losses_3927
E__inference_transformer_layer_call_and_return_conditional_losses_4058�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
__inference__wrapped_model_1842input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
3__inference_positional_embedding_layer_call_fn_5376
3__inference_positional_embedding_layer_call_fn_5387�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
N__inference_positional_embedding_layer_call_and_return_conditional_losses_5421
N__inference_positional_embedding_layer_call_and_return_conditional_losses_5454�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
4__inference_layer_normalization_6_layer_call_fn_5463�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_5485�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_7_layer_call_fn_5494�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_7_layer_call_and_return_conditional_losses_5524�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_signature_wrapper_4181input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
&__inference_encoder_layer_call_fn_5563
&__inference_encoder_layer_call_fn_5602�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
A__inference_encoder_layer_call_and_return_conditional_losses_5737
A__inference_encoder_layer_call_and_return_conditional_losses_5869�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_encoder_1_layer_call_fn_5908
(__inference_encoder_1_layer_call_fn_5947�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_encoder_1_layer_call_and_return_conditional_losses_6082
C__inference_encoder_1_layer_call_and_return_conditional_losses_6214�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_encoder_2_layer_call_fn_6253
(__inference_encoder_2_layer_call_fn_6292�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_encoder_2_layer_call_and_return_conditional_losses_6427
C__inference_encoder_2_layer_call_and_return_conditional_losses_6559�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults� 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpece
args]�Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults�

 

 
p 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpece
args]�Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults�

 

 
p 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpece
args]�Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults�

 

 
p 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpece
args]�Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults�

 

 
p 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpece
args]�Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults�

 

 
p 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpece
args]�Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults�

 

 
p 
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
	J
Const
J	
Const_1�
__inference__wrapped_model_1842�;��+,9:-./01234;<5678IJ=>?@ABCDKLEFGHYZMNOPQRST[\UVWX %&5�2
+�(
&�#
input_1����������
� "r�o
3
output_1'�$
output_1����������
8
output_2,�)
output_2������������
A__inference_dense_7_layer_call_and_return_conditional_losses_5524g%&5�2
+�(
&�#
inputs�����������
� "*�'
 �
0����������
� �
&__inference_dense_7_layer_call_fn_5494Z%&5�2
+�(
&�#
inputs�����������
� "������������
C__inference_encoder_1_layer_call_and_return_conditional_losses_6082�IJ=>?@ABCDKLEFGH9�6
/�,
&�#
inputs�����������
p 
� "[�X
Q�N
#� 
0/0�����������
'�$
0/1�����������
� �
C__inference_encoder_1_layer_call_and_return_conditional_losses_6214�IJ=>?@ABCDKLEFGH9�6
/�,
&�#
inputs�����������
p
� "[�X
Q�N
#� 
0/0�����������
'�$
0/1�����������
� �
(__inference_encoder_1_layer_call_fn_5908�IJ=>?@ABCDKLEFGH9�6
/�,
&�#
inputs�����������
p 
� "M�J
!�
0�����������
%�"
1������������
(__inference_encoder_1_layer_call_fn_5947�IJ=>?@ABCDKLEFGH9�6
/�,
&�#
inputs�����������
p
� "M�J
!�
0�����������
%�"
1������������
C__inference_encoder_2_layer_call_and_return_conditional_losses_6427�YZMNOPQRST[\UVWX9�6
/�,
&�#
inputs�����������
p 
� "[�X
Q�N
#� 
0/0�����������
'�$
0/1�����������
� �
C__inference_encoder_2_layer_call_and_return_conditional_losses_6559�YZMNOPQRST[\UVWX9�6
/�,
&�#
inputs�����������
p
� "[�X
Q�N
#� 
0/0�����������
'�$
0/1�����������
� �
(__inference_encoder_2_layer_call_fn_6253�YZMNOPQRST[\UVWX9�6
/�,
&�#
inputs�����������
p 
� "M�J
!�
0�����������
%�"
1������������
(__inference_encoder_2_layer_call_fn_6292�YZMNOPQRST[\UVWX9�6
/�,
&�#
inputs�����������
p
� "M�J
!�
0�����������
%�"
1������������
A__inference_encoder_layer_call_and_return_conditional_losses_5737�9:-./01234;<56789�6
/�,
&�#
inputs�����������
p 
� "[�X
Q�N
#� 
0/0�����������
'�$
0/1�����������
� �
A__inference_encoder_layer_call_and_return_conditional_losses_5869�9:-./01234;<56789�6
/�,
&�#
inputs�����������
p
� "[�X
Q�N
#� 
0/0�����������
'�$
0/1�����������
� �
&__inference_encoder_layer_call_fn_5563�9:-./01234;<56789�6
/�,
&�#
inputs�����������
p 
� "M�J
!�
0�����������
%�"
1������������
&__inference_encoder_layer_call_fn_5602�9:-./01234;<56789�6
/�,
&�#
inputs�����������
p
� "M�J
!�
0�����������
%�"
1������������
O__inference_layer_normalization_6_layer_call_and_return_conditional_losses_5485h 5�2
+�(
&�#
inputs�����������
� "+�(
!�
0�����������
� �
4__inference_layer_normalization_6_layer_call_fn_5463[ 5�2
+�(
&�#
inputs�����������
� "�������������
N__inference_positional_embedding_layer_call_and_return_conditional_losses_5421l+,8�5
.�+
%�"
inputs����������
p 
� "+�(
!�
0�����������
� �
N__inference_positional_embedding_layer_call_and_return_conditional_losses_5454l+,8�5
.�+
%�"
inputs����������
p
� "+�(
!�
0�����������
� �
3__inference_positional_embedding_layer_call_fn_5376_+,8�5
.�+
%�"
inputs����������
p 
� "�������������
3__inference_positional_embedding_layer_call_fn_5387_+,8�5
.�+
%�"
inputs����������
p
� "�������������
"__inference_signature_wrapper_4181�;��+,9:-./01234;<5678IJ=>?@ABCDKLEFGHYZMNOPQRST[\UVWX %&@�=
� 
6�3
1
input_1&�#
input_1����������"r�o
3
output_1'�$
output_1����������
8
output_2,�)
output_2������������
E__inference_transformer_layer_call_and_return_conditional_losses_3927�;��+,9:-./01234;<5678IJ=>?@ABCDKLEFGHYZMNOPQRST[\UVWX %&9�6
/�,
&�#
input_1����������
p 
� "Z�W
P�M
"�
0/0����������
'�$
0/1�����������
� �
E__inference_transformer_layer_call_and_return_conditional_losses_4058�;��+,9:-./01234;<5678IJ=>?@ABCDKLEFGHYZMNOPQRST[\UVWX %&9�6
/�,
&�#
input_1����������
p
� "Z�W
P�M
"�
0/0����������
'�$
0/1�����������
� �
E__inference_transformer_layer_call_and_return_conditional_losses_4899�;��+,9:-./01234;<5678IJ=>?@ABCDKLEFGHYZMNOPQRST[\UVWX %&8�5
.�+
%�"
inputs����������
p 
� "Z�W
P�M
"�
0/0����������
'�$
0/1�����������
� �
E__inference_transformer_layer_call_and_return_conditional_losses_5365�;��+,9:-./01234;<5678IJ=>?@ABCDKLEFGHYZMNOPQRST[\UVWX %&8�5
.�+
%�"
inputs����������
p
� "Z�W
P�M
"�
0/0����������
'�$
0/1�����������
� �
*__inference_transformer_layer_call_fn_2593�;��+,9:-./01234;<5678IJ=>?@ABCDKLEFGHYZMNOPQRST[\UVWX %&9�6
/�,
&�#
input_1����������
p 
� "L�I
 �
0����������
%�"
1������������
*__inference_transformer_layer_call_fn_3796�;��+,9:-./01234;<5678IJ=>?@ABCDKLEFGHYZMNOPQRST[\UVWX %&9�6
/�,
&�#
input_1����������
p
� "L�I
 �
0����������
%�"
1������������
*__inference_transformer_layer_call_fn_4302�;��+,9:-./01234;<5678IJ=>?@ABCDKLEFGHYZMNOPQRST[\UVWX %&8�5
.�+
%�"
inputs����������
p 
� "L�I
 �
0����������
%�"
1������������
*__inference_transformer_layer_call_fn_4423�;��+,9:-./01234;<5678IJ=>?@ABCDKLEFGHYZMNOPQRST[\UVWX %&8�5
.�+
%�"
inputs����������
p
� "L�I
 �
0����������
%�"
1�����������
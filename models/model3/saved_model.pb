��

��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
list(type)(0�
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
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
�
Adam/v/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_16/bias
y
(Adam/v/dense_16/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_16/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_16/bias
y
(Adam/m/dense_16/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_16/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/v/dense_16/kernel
�
*Adam/v/dense_16/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_16/kernel*
_output_shapes

:@*
dtype0
�
Adam/m/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/m/dense_16/kernel
�
*Adam/m/dense_16/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_16/kernel*
_output_shapes

:@*
dtype0
�
Adam/v/dense_64_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/v/dense_64_relu/bias
�
-Adam/v/dense_64_relu/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_64_relu/bias*
_output_shapes
:@*
dtype0
�
Adam/m/dense_64_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/m/dense_64_relu/bias
�
-Adam/m/dense_64_relu/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_64_relu/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_64_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*,
shared_nameAdam/v/dense_64_relu/kernel
�
/Adam/v/dense_64_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_64_relu/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/m/dense_64_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*,
shared_nameAdam/m/dense_64_relu/kernel
�
/Adam/m/dense_64_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_64_relu/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/v/dense_256_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/v/dense_256_relu/bias
�
.Adam/v/dense_256_relu/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_256_relu/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_256_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/m/dense_256_relu/bias
�
.Adam/m/dense_256_relu/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_256_relu/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_256_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/v/dense_256_relu/kernel
�
0Adam/v/dense_256_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_256_relu/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_256_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/m/dense_256_relu/kernel
�
0Adam/m/dense_256_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_256_relu/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/dense_512_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/v/dense_512_relu/bias
�
.Adam/v/dense_512_relu/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_512_relu/bias*
_output_shapes	
:�*
dtype0
�
Adam/m/dense_512_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*+
shared_nameAdam/m/dense_512_relu/bias
�
.Adam/m/dense_512_relu/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_512_relu/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_512_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/v/dense_512_relu/kernel
�
0Adam/v/dense_512_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_512_relu/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_512_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*-
shared_nameAdam/m/dense_512_relu/kernel
�
0Adam/m/dense_512_relu/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_512_relu/kernel* 
_output_shapes
:
��*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:*
dtype0
z
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

:@*
dtype0
|
dense_64_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namedense_64_relu/bias
u
&dense_64_relu/bias/Read/ReadVariableOpReadVariableOpdense_64_relu/bias*
_output_shapes
:@*
dtype0
�
dense_64_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*%
shared_namedense_64_relu/kernel
~
(dense_64_relu/kernel/Read/ReadVariableOpReadVariableOpdense_64_relu/kernel*
_output_shapes
:	�@*
dtype0

dense_256_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namedense_256_relu/bias
x
'dense_256_relu/bias/Read/ReadVariableOpReadVariableOpdense_256_relu/bias*
_output_shapes	
:�*
dtype0
�
dense_256_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_namedense_256_relu/kernel
�
)dense_256_relu/kernel/Read/ReadVariableOpReadVariableOpdense_256_relu/kernel* 
_output_shapes
:
��*
dtype0

dense_512_relu/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_namedense_512_relu/bias
x
'dense_512_relu/bias/Read/ReadVariableOpReadVariableOpdense_512_relu/bias*
_output_shapes	
:�*
dtype0
�
dense_512_relu/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_namedense_512_relu/kernel
�
)dense_512_relu/kernel/Read/ReadVariableOpReadVariableOpdense_512_relu/kernel* 
_output_shapes
:
��*
dtype0
�
serving_default_input_embeddingPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_embeddingdense_512_relu/kerneldense_512_relu/biasdense_256_relu/kerneldense_256_relu/biasdense_64_relu/kerneldense_64_relu/biasdense_16/kerneldense_16/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1496776

NoOpNoOp
�D
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�C
value�CB�C B�C
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator* 
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias*
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._random_generator* 
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias*
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses
=_random_generator* 
�
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias*
<
0
1
&2
'3
54
65
D6
E7*
<
0
1
&2
'3
54
65
D6
E7*
* 
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_3* 
6
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_3* 
* 
�
S
_variables
T_iterations
U_learning_rate
V_index_dict
W
_momentums
X_velocities
Y_update_step_xla*

Zserving_default* 

0
1*

0
1*
* 
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

`trace_0* 

atrace_0* 
e_
VARIABLE_VALUEdense_512_relu/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEdense_512_relu/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

gtrace_0
htrace_1* 

itrace_0
jtrace_1* 
* 

&0
'1*

&0
'1*
* 
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
e_
VARIABLE_VALUEdense_256_relu/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEdense_256_relu/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

wtrace_0
xtrace_1* 

ytrace_0
ztrace_1* 
* 

50
61*

50
61*
* 
�
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
d^
VARIABLE_VALUEdense_64_relu/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdense_64_relu/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

D0
E1*

D0
E1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_16/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
0
1
2
3
4
5
6*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
T0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
ga
VARIABLE_VALUEAdam/m/dense_512_relu/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/dense_512_relu/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/dense_512_relu/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/dense_512_relu/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/dense_256_relu/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/dense_256_relu/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/dense_256_relu/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/dense_256_relu/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/dense_64_relu/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/dense_64_relu/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/m/dense_64_relu/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/dense_64_relu/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_16/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_16/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_16/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_16/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_512_relu/kerneldense_512_relu/biasdense_256_relu/kerneldense_256_relu/biasdense_64_relu/kerneldense_64_relu/biasdense_16/kerneldense_16/bias	iterationlearning_rateAdam/m/dense_512_relu/kernelAdam/v/dense_512_relu/kernelAdam/m/dense_512_relu/biasAdam/v/dense_512_relu/biasAdam/m/dense_256_relu/kernelAdam/v/dense_256_relu/kernelAdam/m/dense_256_relu/biasAdam/v/dense_256_relu/biasAdam/m/dense_64_relu/kernelAdam/v/dense_64_relu/kernelAdam/m/dense_64_relu/biasAdam/v/dense_64_relu/biasAdam/m/dense_16/kernelAdam/v/dense_16/kernelAdam/m/dense_16/biasAdam/v/dense_16/biastotal_1count_1totalcountConst*+
Tin$
"2 *
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_1497273
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_512_relu/kerneldense_512_relu/biasdense_256_relu/kerneldense_256_relu/biasdense_64_relu/kerneldense_64_relu/biasdense_16/kerneldense_16/bias	iterationlearning_rateAdam/m/dense_512_relu/kernelAdam/v/dense_512_relu/kernelAdam/m/dense_512_relu/biasAdam/v/dense_512_relu/biasAdam/m/dense_256_relu/kernelAdam/v/dense_256_relu/kernelAdam/m/dense_256_relu/biasAdam/v/dense_256_relu/biasAdam/m/dense_64_relu/kernelAdam/v/dense_64_relu/kernelAdam/m/dense_64_relu/biasAdam/v/dense_64_relu/biasAdam/m/dense_16/kernelAdam/v/dense_16/kernelAdam/m/dense_16/biasAdam/v/dense_16/biastotal_1count_1totalcount**
Tin#
!2*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_1497373�
�

�
A__inference_music_instruments_sounds_model3_layer_call_fn_1496588
input_embedding
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_embeddingunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *e
f`R^
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496569o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameinput_embedding
�%
�
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496569

inputs*
dense_512_relu_1496545:
��%
dense_512_relu_1496547:	�*
dense_256_relu_1496551:
��%
dense_256_relu_1496553:	�(
dense_64_relu_1496557:	�@#
dense_64_relu_1496559:@"
dense_16_1496563:@
dense_16_1496565:
identity�� dense_16/StatefulPartitionedCall�&dense_256_relu/StatefulPartitionedCall�&dense_512_relu/StatefulPartitionedCall�%dense_64_relu/StatefulPartitionedCall�"dropout_17/StatefulPartitionedCall�"dropout_18/StatefulPartitionedCall�"dropout_19/StatefulPartitionedCall�
&dense_512_relu/StatefulPartitionedCallStatefulPartitionedCallinputsdense_512_relu_1496545dense_512_relu_1496547*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1496397�
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall/dense_512_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496415�
&dense_256_relu/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0dense_256_relu_1496551dense_256_relu_1496553*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1496428�
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall/dense_256_relu/StatefulPartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_1496446�
%dense_64_relu/StatefulPartitionedCallStatefulPartitionedCall+dropout_18/StatefulPartitionedCall:output:0dense_64_relu_1496557dense_64_relu_1496559*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1496459�
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall.dense_64_relu/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_1496477�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_16_1496563dense_16_1496565*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_1496490x
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_16/StatefulPartitionedCall'^dense_256_relu/StatefulPartitionedCall'^dense_512_relu/StatefulPartitionedCall&^dense_64_relu/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2P
&dense_256_relu/StatefulPartitionedCall&dense_256_relu/StatefulPartitionedCall2P
&dense_512_relu/StatefulPartitionedCall&dense_512_relu/StatefulPartitionedCall2N
%dense_64_relu/StatefulPartitionedCall%dense_64_relu/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1496976

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
A__inference_music_instruments_sounds_model3_layer_call_fn_1496818

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *e
f`R^
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496617o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_19_layer_call_fn_1497033

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_1496531`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1497023

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
A__inference_music_instruments_sounds_model3_layer_call_fn_1496797

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *e
f`R^
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496569o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_19_layer_call_and_return_conditional_losses_1496531

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
0__inference_dense_512_relu_layer_call_fn_1496918

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1496397p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_19_layer_call_and_return_conditional_losses_1496477

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�A
�

"__inference__wrapped_model_1496382
input_embeddinga
Mmusic_instruments_sounds_model3_dense_512_relu_matmul_readvariableop_resource:
��]
Nmusic_instruments_sounds_model3_dense_512_relu_biasadd_readvariableop_resource:	�a
Mmusic_instruments_sounds_model3_dense_256_relu_matmul_readvariableop_resource:
��]
Nmusic_instruments_sounds_model3_dense_256_relu_biasadd_readvariableop_resource:	�_
Lmusic_instruments_sounds_model3_dense_64_relu_matmul_readvariableop_resource:	�@[
Mmusic_instruments_sounds_model3_dense_64_relu_biasadd_readvariableop_resource:@Y
Gmusic_instruments_sounds_model3_dense_16_matmul_readvariableop_resource:@V
Hmusic_instruments_sounds_model3_dense_16_biasadd_readvariableop_resource:
identity��?music_instruments_sounds_model3/dense_16/BiasAdd/ReadVariableOp�>music_instruments_sounds_model3/dense_16/MatMul/ReadVariableOp�Emusic_instruments_sounds_model3/dense_256_relu/BiasAdd/ReadVariableOp�Dmusic_instruments_sounds_model3/dense_256_relu/MatMul/ReadVariableOp�Emusic_instruments_sounds_model3/dense_512_relu/BiasAdd/ReadVariableOp�Dmusic_instruments_sounds_model3/dense_512_relu/MatMul/ReadVariableOp�Dmusic_instruments_sounds_model3/dense_64_relu/BiasAdd/ReadVariableOp�Cmusic_instruments_sounds_model3/dense_64_relu/MatMul/ReadVariableOp�
Dmusic_instruments_sounds_model3/dense_512_relu/MatMul/ReadVariableOpReadVariableOpMmusic_instruments_sounds_model3_dense_512_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
5music_instruments_sounds_model3/dense_512_relu/MatMulMatMulinput_embeddingLmusic_instruments_sounds_model3/dense_512_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Emusic_instruments_sounds_model3/dense_512_relu/BiasAdd/ReadVariableOpReadVariableOpNmusic_instruments_sounds_model3_dense_512_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6music_instruments_sounds_model3/dense_512_relu/BiasAddBiasAdd?music_instruments_sounds_model3/dense_512_relu/MatMul:product:0Mmusic_instruments_sounds_model3/dense_512_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3music_instruments_sounds_model3/dense_512_relu/ReluRelu?music_instruments_sounds_model3/dense_512_relu/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
3music_instruments_sounds_model3/dropout_17/IdentityIdentityAmusic_instruments_sounds_model3/dense_512_relu/Relu:activations:0*
T0*(
_output_shapes
:�����������
Dmusic_instruments_sounds_model3/dense_256_relu/MatMul/ReadVariableOpReadVariableOpMmusic_instruments_sounds_model3_dense_256_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
5music_instruments_sounds_model3/dense_256_relu/MatMulMatMul<music_instruments_sounds_model3/dropout_17/Identity:output:0Lmusic_instruments_sounds_model3/dense_256_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Emusic_instruments_sounds_model3/dense_256_relu/BiasAdd/ReadVariableOpReadVariableOpNmusic_instruments_sounds_model3_dense_256_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6music_instruments_sounds_model3/dense_256_relu/BiasAddBiasAdd?music_instruments_sounds_model3/dense_256_relu/MatMul:product:0Mmusic_instruments_sounds_model3/dense_256_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
3music_instruments_sounds_model3/dense_256_relu/ReluRelu?music_instruments_sounds_model3/dense_256_relu/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
3music_instruments_sounds_model3/dropout_18/IdentityIdentityAmusic_instruments_sounds_model3/dense_256_relu/Relu:activations:0*
T0*(
_output_shapes
:�����������
Cmusic_instruments_sounds_model3/dense_64_relu/MatMul/ReadVariableOpReadVariableOpLmusic_instruments_sounds_model3_dense_64_relu_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
4music_instruments_sounds_model3/dense_64_relu/MatMulMatMul<music_instruments_sounds_model3/dropout_18/Identity:output:0Kmusic_instruments_sounds_model3/dense_64_relu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Dmusic_instruments_sounds_model3/dense_64_relu/BiasAdd/ReadVariableOpReadVariableOpMmusic_instruments_sounds_model3_dense_64_relu_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
5music_instruments_sounds_model3/dense_64_relu/BiasAddBiasAdd>music_instruments_sounds_model3/dense_64_relu/MatMul:product:0Lmusic_instruments_sounds_model3/dense_64_relu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
2music_instruments_sounds_model3/dense_64_relu/ReluRelu>music_instruments_sounds_model3/dense_64_relu/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
3music_instruments_sounds_model3/dropout_19/IdentityIdentity@music_instruments_sounds_model3/dense_64_relu/Relu:activations:0*
T0*'
_output_shapes
:���������@�
>music_instruments_sounds_model3/dense_16/MatMul/ReadVariableOpReadVariableOpGmusic_instruments_sounds_model3_dense_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
/music_instruments_sounds_model3/dense_16/MatMulMatMul<music_instruments_sounds_model3/dropout_19/Identity:output:0Fmusic_instruments_sounds_model3/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
?music_instruments_sounds_model3/dense_16/BiasAdd/ReadVariableOpReadVariableOpHmusic_instruments_sounds_model3_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
0music_instruments_sounds_model3/dense_16/BiasAddBiasAdd9music_instruments_sounds_model3/dense_16/MatMul:product:0Gmusic_instruments_sounds_model3/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0music_instruments_sounds_model3/dense_16/SoftmaxSoftmax9music_instruments_sounds_model3/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:����������
IdentityIdentity:music_instruments_sounds_model3/dense_16/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp@^music_instruments_sounds_model3/dense_16/BiasAdd/ReadVariableOp?^music_instruments_sounds_model3/dense_16/MatMul/ReadVariableOpF^music_instruments_sounds_model3/dense_256_relu/BiasAdd/ReadVariableOpE^music_instruments_sounds_model3/dense_256_relu/MatMul/ReadVariableOpF^music_instruments_sounds_model3/dense_512_relu/BiasAdd/ReadVariableOpE^music_instruments_sounds_model3/dense_512_relu/MatMul/ReadVariableOpE^music_instruments_sounds_model3/dense_64_relu/BiasAdd/ReadVariableOpD^music_instruments_sounds_model3/dense_64_relu/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 2�
?music_instruments_sounds_model3/dense_16/BiasAdd/ReadVariableOp?music_instruments_sounds_model3/dense_16/BiasAdd/ReadVariableOp2�
>music_instruments_sounds_model3/dense_16/MatMul/ReadVariableOp>music_instruments_sounds_model3/dense_16/MatMul/ReadVariableOp2�
Emusic_instruments_sounds_model3/dense_256_relu/BiasAdd/ReadVariableOpEmusic_instruments_sounds_model3/dense_256_relu/BiasAdd/ReadVariableOp2�
Dmusic_instruments_sounds_model3/dense_256_relu/MatMul/ReadVariableOpDmusic_instruments_sounds_model3/dense_256_relu/MatMul/ReadVariableOp2�
Emusic_instruments_sounds_model3/dense_512_relu/BiasAdd/ReadVariableOpEmusic_instruments_sounds_model3/dense_512_relu/BiasAdd/ReadVariableOp2�
Dmusic_instruments_sounds_model3/dense_512_relu/MatMul/ReadVariableOpDmusic_instruments_sounds_model3/dense_512_relu/MatMul/ReadVariableOp2�
Dmusic_instruments_sounds_model3/dense_64_relu/BiasAdd/ReadVariableOpDmusic_instruments_sounds_model3/dense_64_relu/BiasAdd/ReadVariableOp2�
Cmusic_instruments_sounds_model3/dense_64_relu/MatMul/ReadVariableOpCmusic_instruments_sounds_model3/dense_64_relu/MatMul/ReadVariableOp:Y U
(
_output_shapes
:����������
)
_user_specified_nameinput_embedding
�!
�
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496539
input_embedding*
dense_512_relu_1496500:
��%
dense_512_relu_1496502:	�*
dense_256_relu_1496511:
��%
dense_256_relu_1496513:	�(
dense_64_relu_1496522:	�@#
dense_64_relu_1496524:@"
dense_16_1496533:@
dense_16_1496535:
identity�� dense_16/StatefulPartitionedCall�&dense_256_relu/StatefulPartitionedCall�&dense_512_relu/StatefulPartitionedCall�%dense_64_relu/StatefulPartitionedCall�
&dense_512_relu/StatefulPartitionedCallStatefulPartitionedCallinput_embeddingdense_512_relu_1496500dense_512_relu_1496502*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1496397�
dropout_17/PartitionedCallPartitionedCall/dense_512_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496509�
&dense_256_relu/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0dense_256_relu_1496511dense_256_relu_1496513*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1496428�
dropout_18/PartitionedCallPartitionedCall/dense_256_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_1496520�
%dense_64_relu/StatefulPartitionedCallStatefulPartitionedCall#dropout_18/PartitionedCall:output:0dense_64_relu_1496522dense_64_relu_1496524*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1496459�
dropout_19/PartitionedCallPartitionedCall.dense_64_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_1496531�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_16_1496533dense_16_1496535*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_1496490x
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_16/StatefulPartitionedCall'^dense_256_relu/StatefulPartitionedCall'^dense_512_relu/StatefulPartitionedCall&^dense_64_relu/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2P
&dense_256_relu/StatefulPartitionedCall&dense_256_relu/StatefulPartitionedCall2P
&dense_512_relu/StatefulPartitionedCall&dense_512_relu/StatefulPartitionedCall2N
%dense_64_relu/StatefulPartitionedCall%dense_64_relu/StatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameinput_embedding
�

f
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496415

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496951

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1496397

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_18_layer_call_and_return_conditional_losses_1496446

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_17_layer_call_fn_1496939

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496509a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496509

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
/__inference_dense_64_relu_layer_call_fn_1497012

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1496459o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
� 
�
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496617

inputs*
dense_512_relu_1496593:
��%
dense_512_relu_1496595:	�*
dense_256_relu_1496599:
��%
dense_256_relu_1496601:	�(
dense_64_relu_1496605:	�@#
dense_64_relu_1496607:@"
dense_16_1496611:@
dense_16_1496613:
identity�� dense_16/StatefulPartitionedCall�&dense_256_relu/StatefulPartitionedCall�&dense_512_relu/StatefulPartitionedCall�%dense_64_relu/StatefulPartitionedCall�
&dense_512_relu/StatefulPartitionedCallStatefulPartitionedCallinputsdense_512_relu_1496593dense_512_relu_1496595*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1496397�
dropout_17/PartitionedCallPartitionedCall/dense_512_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496509�
&dense_256_relu/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0dense_256_relu_1496599dense_256_relu_1496601*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1496428�
dropout_18/PartitionedCallPartitionedCall/dense_256_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_1496520�
%dense_64_relu/StatefulPartitionedCallStatefulPartitionedCall#dropout_18/PartitionedCall:output:0dense_64_relu_1496605dense_64_relu_1496607*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1496459�
dropout_19/PartitionedCallPartitionedCall.dense_64_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_1496531�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall#dropout_19/PartitionedCall:output:0dense_16_1496611dense_16_1496613*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_1496490x
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_16/StatefulPartitionedCall'^dense_256_relu/StatefulPartitionedCall'^dense_512_relu/StatefulPartitionedCall&^dense_64_relu/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2P
&dense_256_relu/StatefulPartitionedCall&dense_256_relu/StatefulPartitionedCall2P
&dense_512_relu/StatefulPartitionedCall&dense_512_relu/StatefulPartitionedCall2N
%dense_64_relu/StatefulPartitionedCall%dense_64_relu/StatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

f
G__inference_dropout_19_layer_call_and_return_conditional_losses_1497045

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
e
G__inference_dropout_19_layer_call_and_return_conditional_losses_1497050

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1496929

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
0__inference_dense_256_relu_layer_call_fn_1496965

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1496428p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
 __inference__traced_save_1497273
file_prefix@
,read_disablecopyonread_dense_512_relu_kernel:
��;
,read_1_disablecopyonread_dense_512_relu_bias:	�B
.read_2_disablecopyonread_dense_256_relu_kernel:
��;
,read_3_disablecopyonread_dense_256_relu_bias:	�@
-read_4_disablecopyonread_dense_64_relu_kernel:	�@9
+read_5_disablecopyonread_dense_64_relu_bias:@:
(read_6_disablecopyonread_dense_16_kernel:@4
&read_7_disablecopyonread_dense_16_bias:,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: J
6read_10_disablecopyonread_adam_m_dense_512_relu_kernel:
��J
6read_11_disablecopyonread_adam_v_dense_512_relu_kernel:
��C
4read_12_disablecopyonread_adam_m_dense_512_relu_bias:	�C
4read_13_disablecopyonread_adam_v_dense_512_relu_bias:	�J
6read_14_disablecopyonread_adam_m_dense_256_relu_kernel:
��J
6read_15_disablecopyonread_adam_v_dense_256_relu_kernel:
��C
4read_16_disablecopyonread_adam_m_dense_256_relu_bias:	�C
4read_17_disablecopyonread_adam_v_dense_256_relu_bias:	�H
5read_18_disablecopyonread_adam_m_dense_64_relu_kernel:	�@H
5read_19_disablecopyonread_adam_v_dense_64_relu_kernel:	�@A
3read_20_disablecopyonread_adam_m_dense_64_relu_bias:@A
3read_21_disablecopyonread_adam_v_dense_64_relu_bias:@B
0read_22_disablecopyonread_adam_m_dense_16_kernel:@B
0read_23_disablecopyonread_adam_v_dense_16_kernel:@<
.read_24_disablecopyonread_adam_m_dense_16_bias:<
.read_25_disablecopyonread_adam_v_dense_16_bias:+
!read_26_disablecopyonread_total_1: +
!read_27_disablecopyonread_count_1: )
read_28_disablecopyonread_total: )
read_29_disablecopyonread_count: 
savev2_const
identity_61��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: ~
Read/DisableCopyOnReadDisableCopyOnRead,read_disablecopyonread_dense_512_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp,read_disablecopyonread_dense_512_relu_kernel^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_1/DisableCopyOnReadDisableCopyOnRead,read_1_disablecopyonread_dense_512_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp,read_1_disablecopyonread_dense_512_relu_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_2/DisableCopyOnReadDisableCopyOnRead.read_2_disablecopyonread_dense_256_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp.read_2_disablecopyonread_dense_256_relu_kernel^Read_2/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_3/DisableCopyOnReadDisableCopyOnRead,read_3_disablecopyonread_dense_256_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp,read_3_disablecopyonread_dense_256_relu_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_4/DisableCopyOnReadDisableCopyOnRead-read_4_disablecopyonread_dense_64_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp-read_4_disablecopyonread_dense_64_relu_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@d

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@
Read_5/DisableCopyOnReadDisableCopyOnRead+read_5_disablecopyonread_dense_64_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp+read_5_disablecopyonread_dense_64_relu_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_dense_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_dense_16_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:@z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_dense_16_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_dense_16_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_10/DisableCopyOnReadDisableCopyOnRead6read_10_disablecopyonread_adam_m_dense_512_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp6read_10_disablecopyonread_adam_m_dense_512_relu_kernel^Read_10/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_11/DisableCopyOnReadDisableCopyOnRead6read_11_disablecopyonread_adam_v_dense_512_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp6read_11_disablecopyonread_adam_v_dense_512_relu_kernel^Read_11/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_12/DisableCopyOnReadDisableCopyOnRead4read_12_disablecopyonread_adam_m_dense_512_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp4read_12_disablecopyonread_adam_m_dense_512_relu_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_13/DisableCopyOnReadDisableCopyOnRead4read_13_disablecopyonread_adam_v_dense_512_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp4read_13_disablecopyonread_adam_v_dense_512_relu_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_adam_m_dense_256_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_adam_m_dense_256_relu_kernel^Read_14/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_15/DisableCopyOnReadDisableCopyOnRead6read_15_disablecopyonread_adam_v_dense_256_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp6read_15_disablecopyonread_adam_v_dense_256_relu_kernel^Read_15/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_16/DisableCopyOnReadDisableCopyOnRead4read_16_disablecopyonread_adam_m_dense_256_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp4read_16_disablecopyonread_adam_m_dense_256_relu_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_17/DisableCopyOnReadDisableCopyOnRead4read_17_disablecopyonread_adam_v_dense_256_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp4read_17_disablecopyonread_adam_v_dense_256_relu_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_18/DisableCopyOnReadDisableCopyOnRead5read_18_disablecopyonread_adam_m_dense_64_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp5read_18_disablecopyonread_adam_m_dense_64_relu_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_19/DisableCopyOnReadDisableCopyOnRead5read_19_disablecopyonread_adam_v_dense_64_relu_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp5read_19_disablecopyonread_adam_v_dense_64_relu_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_20/DisableCopyOnReadDisableCopyOnRead3read_20_disablecopyonread_adam_m_dense_64_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp3read_20_disablecopyonread_adam_m_dense_64_relu_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_21/DisableCopyOnReadDisableCopyOnRead3read_21_disablecopyonread_adam_v_dense_64_relu_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp3read_21_disablecopyonread_adam_v_dense_64_relu_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_22/DisableCopyOnReadDisableCopyOnRead0read_22_disablecopyonread_adam_m_dense_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp0read_22_disablecopyonread_adam_m_dense_16_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_adam_v_dense_16_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_adam_v_dense_16_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_adam_m_dense_16_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_adam_m_dense_16_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_v_dense_16_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_v_dense_16_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_26/DisableCopyOnReadDisableCopyOnRead!read_26_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp!read_26_disablecopyonread_total_1^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_27/DisableCopyOnReadDisableCopyOnRead!read_27_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp!read_27_disablecopyonread_count_1^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_28/DisableCopyOnReadDisableCopyOnReadread_28_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOpread_28_disablecopyonread_total^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_29/DisableCopyOnReadDisableCopyOnReadread_29_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOpread_29_disablecopyonread_count^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *-
dtypes#
!2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_60Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_61IdentityIdentity_60:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_61Identity_61:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�*
�
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496909

inputsA
-dense_512_relu_matmul_readvariableop_resource:
��=
.dense_512_relu_biasadd_readvariableop_resource:	�A
-dense_256_relu_matmul_readvariableop_resource:
��=
.dense_256_relu_biasadd_readvariableop_resource:	�?
,dense_64_relu_matmul_readvariableop_resource:	�@;
-dense_64_relu_biasadd_readvariableop_resource:@9
'dense_16_matmul_readvariableop_resource:@6
(dense_16_biasadd_readvariableop_resource:
identity��dense_16/BiasAdd/ReadVariableOp�dense_16/MatMul/ReadVariableOp�%dense_256_relu/BiasAdd/ReadVariableOp�$dense_256_relu/MatMul/ReadVariableOp�%dense_512_relu/BiasAdd/ReadVariableOp�$dense_512_relu/MatMul/ReadVariableOp�$dense_64_relu/BiasAdd/ReadVariableOp�#dense_64_relu/MatMul/ReadVariableOp�
$dense_512_relu/MatMul/ReadVariableOpReadVariableOp-dense_512_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_512_relu/MatMulMatMulinputs,dense_512_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%dense_512_relu/BiasAdd/ReadVariableOpReadVariableOp.dense_512_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_512_relu/BiasAddBiasAdddense_512_relu/MatMul:product:0-dense_512_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
dense_512_relu/ReluReludense_512_relu/BiasAdd:output:0*
T0*(
_output_shapes
:����������u
dropout_17/IdentityIdentity!dense_512_relu/Relu:activations:0*
T0*(
_output_shapes
:�����������
$dense_256_relu/MatMul/ReadVariableOpReadVariableOp-dense_256_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_256_relu/MatMulMatMuldropout_17/Identity:output:0,dense_256_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%dense_256_relu/BiasAdd/ReadVariableOpReadVariableOp.dense_256_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_256_relu/BiasAddBiasAdddense_256_relu/MatMul:product:0-dense_256_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
dense_256_relu/ReluReludense_256_relu/BiasAdd:output:0*
T0*(
_output_shapes
:����������u
dropout_18/IdentityIdentity!dense_256_relu/Relu:activations:0*
T0*(
_output_shapes
:�����������
#dense_64_relu/MatMul/ReadVariableOpReadVariableOp,dense_64_relu_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_64_relu/MatMulMatMuldropout_18/Identity:output:0+dense_64_relu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$dense_64_relu/BiasAdd/ReadVariableOpReadVariableOp-dense_64_relu_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_64_relu/BiasAddBiasAdddense_64_relu/MatMul:product:0,dense_64_relu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@l
dense_64_relu/ReluReludense_64_relu/BiasAdd:output:0*
T0*'
_output_shapes
:���������@s
dropout_19/IdentityIdentity dense_64_relu/Relu:activations:0*
T0*'
_output_shapes
:���������@�
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_16/MatMulMatMuldropout_19/Identity:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_16/SoftmaxSoftmaxdense_16/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_16/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp&^dense_256_relu/BiasAdd/ReadVariableOp%^dense_256_relu/MatMul/ReadVariableOp&^dense_512_relu/BiasAdd/ReadVariableOp%^dense_512_relu/MatMul/ReadVariableOp%^dense_64_relu/BiasAdd/ReadVariableOp$^dense_64_relu/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2N
%dense_256_relu/BiasAdd/ReadVariableOp%dense_256_relu/BiasAdd/ReadVariableOp2L
$dense_256_relu/MatMul/ReadVariableOp$dense_256_relu/MatMul/ReadVariableOp2N
%dense_512_relu/BiasAdd/ReadVariableOp%dense_512_relu/BiasAdd/ReadVariableOp2L
$dense_512_relu/MatMul/ReadVariableOp$dense_512_relu/MatMul/ReadVariableOp2L
$dense_64_relu/BiasAdd/ReadVariableOp$dense_64_relu/BiasAdd/ReadVariableOp2J
#dense_64_relu/MatMul/ReadVariableOp#dense_64_relu/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_16_layer_call_and_return_conditional_losses_1496490

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
A__inference_music_instruments_sounds_model3_layer_call_fn_1496636
input_embedding
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_embeddingunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *e
f`R^
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496617o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameinput_embedding
��
�
#__inference__traced_restore_1497373
file_prefix:
&assignvariableop_dense_512_relu_kernel:
��5
&assignvariableop_1_dense_512_relu_bias:	�<
(assignvariableop_2_dense_256_relu_kernel:
��5
&assignvariableop_3_dense_256_relu_bias:	�:
'assignvariableop_4_dense_64_relu_kernel:	�@3
%assignvariableop_5_dense_64_relu_bias:@4
"assignvariableop_6_dense_16_kernel:@.
 assignvariableop_7_dense_16_bias:&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: D
0assignvariableop_10_adam_m_dense_512_relu_kernel:
��D
0assignvariableop_11_adam_v_dense_512_relu_kernel:
��=
.assignvariableop_12_adam_m_dense_512_relu_bias:	�=
.assignvariableop_13_adam_v_dense_512_relu_bias:	�D
0assignvariableop_14_adam_m_dense_256_relu_kernel:
��D
0assignvariableop_15_adam_v_dense_256_relu_kernel:
��=
.assignvariableop_16_adam_m_dense_256_relu_bias:	�=
.assignvariableop_17_adam_v_dense_256_relu_bias:	�B
/assignvariableop_18_adam_m_dense_64_relu_kernel:	�@B
/assignvariableop_19_adam_v_dense_64_relu_kernel:	�@;
-assignvariableop_20_adam_m_dense_64_relu_bias:@;
-assignvariableop_21_adam_v_dense_64_relu_bias:@<
*assignvariableop_22_adam_m_dense_16_kernel:@<
*assignvariableop_23_adam_v_dense_16_kernel:@6
(assignvariableop_24_adam_m_dense_16_bias:6
(assignvariableop_25_adam_v_dense_16_bias:%
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 
identity_31��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp&assignvariableop_dense_512_relu_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp&assignvariableop_1_dense_512_relu_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp(assignvariableop_2_dense_256_relu_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp&assignvariableop_3_dense_256_relu_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp'assignvariableop_4_dense_64_relu_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp%assignvariableop_5_dense_64_relu_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_16_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_16_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp0assignvariableop_10_adam_m_dense_512_relu_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp0assignvariableop_11_adam_v_dense_512_relu_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp.assignvariableop_12_adam_m_dense_512_relu_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp.assignvariableop_13_adam_v_dense_512_relu_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_adam_m_dense_256_relu_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp0assignvariableop_15_adam_v_dense_256_relu_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp.assignvariableop_16_adam_m_dense_256_relu_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp.assignvariableop_17_adam_v_dense_256_relu_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp/assignvariableop_18_adam_m_dense_64_relu_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp/assignvariableop_19_adam_v_dense_64_relu_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp-assignvariableop_20_adam_m_dense_64_relu_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adam_v_dense_64_relu_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_m_dense_16_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_v_dense_16_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_m_dense_16_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_v_dense_16_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
e
G__inference_dropout_18_layer_call_and_return_conditional_losses_1496520

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1496459

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_18_layer_call_and_return_conditional_losses_1497003

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_16_layer_call_and_return_conditional_losses_1497070

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�%
�
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496497
input_embedding*
dense_512_relu_1496398:
��%
dense_512_relu_1496400:	�*
dense_256_relu_1496429:
��%
dense_256_relu_1496431:	�(
dense_64_relu_1496460:	�@#
dense_64_relu_1496462:@"
dense_16_1496491:@
dense_16_1496493:
identity�� dense_16/StatefulPartitionedCall�&dense_256_relu/StatefulPartitionedCall�&dense_512_relu/StatefulPartitionedCall�%dense_64_relu/StatefulPartitionedCall�"dropout_17/StatefulPartitionedCall�"dropout_18/StatefulPartitionedCall�"dropout_19/StatefulPartitionedCall�
&dense_512_relu/StatefulPartitionedCallStatefulPartitionedCallinput_embeddingdense_512_relu_1496398dense_512_relu_1496400*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1496397�
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall/dense_512_relu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496415�
&dense_256_relu/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0dense_256_relu_1496429dense_256_relu_1496431*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1496428�
"dropout_18/StatefulPartitionedCallStatefulPartitionedCall/dense_256_relu/StatefulPartitionedCall:output:0#^dropout_17/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_1496446�
%dense_64_relu/StatefulPartitionedCallStatefulPartitionedCall+dropout_18/StatefulPartitionedCall:output:0dense_64_relu_1496460dense_64_relu_1496462*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1496459�
"dropout_19/StatefulPartitionedCallStatefulPartitionedCall.dense_64_relu/StatefulPartitionedCall:output:0#^dropout_18/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_1496477�
 dense_16/StatefulPartitionedCallStatefulPartitionedCall+dropout_19/StatefulPartitionedCall:output:0dense_16_1496491dense_16_1496493*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_1496490x
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^dense_16/StatefulPartitionedCall'^dense_256_relu/StatefulPartitionedCall'^dense_512_relu/StatefulPartitionedCall&^dense_64_relu/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall#^dropout_18/StatefulPartitionedCall#^dropout_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2P
&dense_256_relu/StatefulPartitionedCall&dense_256_relu/StatefulPartitionedCall2P
&dense_512_relu/StatefulPartitionedCall&dense_512_relu/StatefulPartitionedCall2N
%dense_64_relu/StatefulPartitionedCall%dense_64_relu/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall2H
"dropout_18/StatefulPartitionedCall"dropout_18/StatefulPartitionedCall2H
"dropout_19/StatefulPartitionedCall"dropout_19/StatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameinput_embedding
�
e
,__inference_dropout_19_layer_call_fn_1497028

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_19_layer_call_and_return_conditional_losses_1496477o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

f
G__inference_dropout_18_layer_call_and_return_conditional_losses_1496998

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1496428

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_dense_16_layer_call_fn_1497059

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_16_layer_call_and_return_conditional_losses_1496490o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
%__inference_signature_wrapper_1496776
input_embedding
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:	�@
	unknown_4:@
	unknown_5:@
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_embeddingunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_1496382o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:����������
)
_user_specified_nameinput_embedding
�
e
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496956

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
,__inference_dropout_18_layer_call_fn_1496981

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_1496446p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_18_layer_call_fn_1496986

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_18_layer_call_and_return_conditional_losses_1496520a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
,__inference_dropout_17_layer_call_fn_1496934

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496415p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�B
�
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496874

inputsA
-dense_512_relu_matmul_readvariableop_resource:
��=
.dense_512_relu_biasadd_readvariableop_resource:	�A
-dense_256_relu_matmul_readvariableop_resource:
��=
.dense_256_relu_biasadd_readvariableop_resource:	�?
,dense_64_relu_matmul_readvariableop_resource:	�@;
-dense_64_relu_biasadd_readvariableop_resource:@9
'dense_16_matmul_readvariableop_resource:@6
(dense_16_biasadd_readvariableop_resource:
identity��dense_16/BiasAdd/ReadVariableOp�dense_16/MatMul/ReadVariableOp�%dense_256_relu/BiasAdd/ReadVariableOp�$dense_256_relu/MatMul/ReadVariableOp�%dense_512_relu/BiasAdd/ReadVariableOp�$dense_512_relu/MatMul/ReadVariableOp�$dense_64_relu/BiasAdd/ReadVariableOp�#dense_64_relu/MatMul/ReadVariableOp�
$dense_512_relu/MatMul/ReadVariableOpReadVariableOp-dense_512_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_512_relu/MatMulMatMulinputs,dense_512_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%dense_512_relu/BiasAdd/ReadVariableOpReadVariableOp.dense_512_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_512_relu/BiasAddBiasAdddense_512_relu/MatMul:product:0-dense_512_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
dense_512_relu/ReluReludense_512_relu/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_17/dropout/MulMul!dense_512_relu/Relu:activations:0!dropout_17/dropout/Const:output:0*
T0*(
_output_shapes
:����������w
dropout_17/dropout/ShapeShape!dense_512_relu/Relu:activations:0*
T0*
_output_shapes
::���
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������_
dropout_17/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_17/dropout/SelectV2SelectV2#dropout_17/dropout/GreaterEqual:z:0dropout_17/dropout/Mul:z:0#dropout_17/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
$dense_256_relu/MatMul/ReadVariableOpReadVariableOp-dense_256_relu_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_256_relu/MatMulMatMul$dropout_17/dropout/SelectV2:output:0,dense_256_relu/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
%dense_256_relu/BiasAdd/ReadVariableOpReadVariableOp.dense_256_relu_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_256_relu/BiasAddBiasAdddense_256_relu/MatMul:product:0-dense_256_relu/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
dense_256_relu/ReluReludense_256_relu/BiasAdd:output:0*
T0*(
_output_shapes
:����������]
dropout_18/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_18/dropout/MulMul!dense_256_relu/Relu:activations:0!dropout_18/dropout/Const:output:0*
T0*(
_output_shapes
:����������w
dropout_18/dropout/ShapeShape!dense_256_relu/Relu:activations:0*
T0*
_output_shapes
::���
/dropout_18/dropout/random_uniform/RandomUniformRandomUniform!dropout_18/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0f
!dropout_18/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_18/dropout/GreaterEqualGreaterEqual8dropout_18/dropout/random_uniform/RandomUniform:output:0*dropout_18/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������_
dropout_18/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_18/dropout/SelectV2SelectV2#dropout_18/dropout/GreaterEqual:z:0dropout_18/dropout/Mul:z:0#dropout_18/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
#dense_64_relu/MatMul/ReadVariableOpReadVariableOp,dense_64_relu_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_64_relu/MatMulMatMul$dropout_18/dropout/SelectV2:output:0+dense_64_relu/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$dense_64_relu/BiasAdd/ReadVariableOpReadVariableOp-dense_64_relu_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_64_relu/BiasAddBiasAdddense_64_relu/MatMul:product:0,dense_64_relu/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@l
dense_64_relu/ReluReludense_64_relu/BiasAdd:output:0*
T0*'
_output_shapes
:���������@]
dropout_19/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
dropout_19/dropout/MulMul dense_64_relu/Relu:activations:0!dropout_19/dropout/Const:output:0*
T0*'
_output_shapes
:���������@v
dropout_19/dropout/ShapeShape dense_64_relu/Relu:activations:0*
T0*
_output_shapes
::���
/dropout_19/dropout/random_uniform/RandomUniformRandomUniform!dropout_19/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype0f
!dropout_19/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
dropout_19/dropout/GreaterEqualGreaterEqual8dropout_19/dropout/random_uniform/RandomUniform:output:0*dropout_19/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@_
dropout_19/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_19/dropout/SelectV2SelectV2#dropout_19/dropout/GreaterEqual:z:0dropout_19/dropout/Mul:z:0#dropout_19/dropout/Const_1:output:0*
T0*'
_output_shapes
:���������@�
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_16/MatMulMatMul$dropout_19/dropout/SelectV2:output:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_16/SoftmaxSoftmaxdense_16/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_16/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp&^dense_256_relu/BiasAdd/ReadVariableOp%^dense_256_relu/MatMul/ReadVariableOp&^dense_512_relu/BiasAdd/ReadVariableOp%^dense_512_relu/MatMul/ReadVariableOp%^dense_64_relu/BiasAdd/ReadVariableOp$^dense_64_relu/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:����������: : : : : : : : 2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2N
%dense_256_relu/BiasAdd/ReadVariableOp%dense_256_relu/BiasAdd/ReadVariableOp2L
$dense_256_relu/MatMul/ReadVariableOp$dense_256_relu/MatMul/ReadVariableOp2N
%dense_512_relu/BiasAdd/ReadVariableOp%dense_512_relu/BiasAdd/ReadVariableOp2L
$dense_512_relu/MatMul/ReadVariableOp$dense_512_relu/MatMul/ReadVariableOp2L
$dense_64_relu/BiasAdd/ReadVariableOp$dense_64_relu/BiasAdd/ReadVariableOp2J
#dense_64_relu/MatMul/ReadVariableOp#dense_64_relu/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
L
input_embedding9
!serving_default_input_embedding:0����������<
dense_160
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses

&kernel
'bias"
_tf_keras_layer
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses
._random_generator"
_tf_keras_layer
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

5kernel
6bias"
_tf_keras_layer
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses
=_random_generator"
_tf_keras_layer
�
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses

Dkernel
Ebias"
_tf_keras_layer
X
0
1
&2
'3
54
65
D6
E7"
trackable_list_wrapper
X
0
1
&2
'3
54
65
D6
E7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ktrace_0
Ltrace_1
Mtrace_2
Ntrace_32�
A__inference_music_instruments_sounds_model3_layer_call_fn_1496588
A__inference_music_instruments_sounds_model3_layer_call_fn_1496636
A__inference_music_instruments_sounds_model3_layer_call_fn_1496797
A__inference_music_instruments_sounds_model3_layer_call_fn_1496818�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zKtrace_0zLtrace_1zMtrace_2zNtrace_3
�
Otrace_0
Ptrace_1
Qtrace_2
Rtrace_32�
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496497
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496539
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496874
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496909�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zOtrace_0zPtrace_1zQtrace_2zRtrace_3
�B�
"__inference__wrapped_model_1496382input_embedding"�
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
�
S
_variables
T_iterations
U_learning_rate
V_index_dict
W
_momentums
X_velocities
Y_update_step_xla"
experimentalOptimizer
,
Zserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
`trace_02�
0__inference_dense_512_relu_layer_call_fn_1496918�
���
FullArgSpec
args�

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
annotations� *
 z`trace_0
�
atrace_02�
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1496929�
���
FullArgSpec
args�

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
annotations� *
 zatrace_0
):'
��2dense_512_relu/kernel
": �2dense_512_relu/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
gtrace_0
htrace_12�
,__inference_dropout_17_layer_call_fn_1496934
,__inference_dropout_17_layer_call_fn_1496939�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zgtrace_0zhtrace_1
�
itrace_0
jtrace_12�
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496951
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496956�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zitrace_0zjtrace_1
"
_generic_user_object
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�
ptrace_02�
0__inference_dense_256_relu_layer_call_fn_1496965�
���
FullArgSpec
args�

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
annotations� *
 zptrace_0
�
qtrace_02�
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1496976�
���
FullArgSpec
args�

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
annotations� *
 zqtrace_0
):'
��2dense_256_relu/kernel
": �2dense_256_relu/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
�
wtrace_0
xtrace_12�
,__inference_dropout_18_layer_call_fn_1496981
,__inference_dropout_18_layer_call_fn_1496986�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0zxtrace_1
�
ytrace_0
ztrace_12�
G__inference_dropout_18_layer_call_and_return_conditional_losses_1496998
G__inference_dropout_18_layer_call_and_return_conditional_losses_1497003�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zytrace_0zztrace_1
"
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
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_dense_64_relu_layer_call_fn_1497012�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1497023�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
':%	�@2dense_64_relu/kernel
 :@2dense_64_relu/bias
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
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_19_layer_call_fn_1497028
,__inference_dropout_19_layer_call_fn_1497033�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_dropout_19_layer_call_and_return_conditional_losses_1497045
G__inference_dropout_19_layer_call_and_return_conditional_losses_1497050�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_16_layer_call_fn_1497059�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_16_layer_call_and_return_conditional_losses_1497070�
���
FullArgSpec
args�

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
annotations� *
 z�trace_0
!:@2dense_16/kernel
:2dense_16/bias
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
A__inference_music_instruments_sounds_model3_layer_call_fn_1496588input_embedding"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_music_instruments_sounds_model3_layer_call_fn_1496636input_embedding"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_music_instruments_sounds_model3_layer_call_fn_1496797inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_music_instruments_sounds_model3_layer_call_fn_1496818inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496497input_embedding"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496539input_embedding"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496874inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496909inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
T0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
%__inference_signature_wrapper_1496776input_embedding"�
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
�B�
0__inference_dense_512_relu_layer_call_fn_1496918inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1496929inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
,__inference_dropout_17_layer_call_fn_1496934inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_17_layer_call_fn_1496939inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496951inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496956inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
0__inference_dense_256_relu_layer_call_fn_1496965inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1496976inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
,__inference_dropout_18_layer_call_fn_1496981inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_18_layer_call_fn_1496986inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_18_layer_call_and_return_conditional_losses_1496998inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_18_layer_call_and_return_conditional_losses_1497003inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
/__inference_dense_64_relu_layer_call_fn_1497012inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1497023inputs"�
���
FullArgSpec
args�

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
annotations� *
 
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
�B�
,__inference_dropout_19_layer_call_fn_1497028inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_dropout_19_layer_call_fn_1497033inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_19_layer_call_and_return_conditional_losses_1497045inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_dropout_19_layer_call_and_return_conditional_losses_1497050inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_dense_16_layer_call_fn_1497059inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
E__inference_dense_16_layer_call_and_return_conditional_losses_1497070inputs"�
���
FullArgSpec
args�

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
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
.:,
��2Adam/m/dense_512_relu/kernel
.:,
��2Adam/v/dense_512_relu/kernel
':%�2Adam/m/dense_512_relu/bias
':%�2Adam/v/dense_512_relu/bias
.:,
��2Adam/m/dense_256_relu/kernel
.:,
��2Adam/v/dense_256_relu/kernel
':%�2Adam/m/dense_256_relu/bias
':%�2Adam/v/dense_256_relu/bias
,:*	�@2Adam/m/dense_64_relu/kernel
,:*	�@2Adam/v/dense_64_relu/kernel
%:#@2Adam/m/dense_64_relu/bias
%:#@2Adam/v/dense_64_relu/bias
&:$@2Adam/m/dense_16/kernel
&:$@2Adam/v/dense_16/kernel
 :2Adam/m/dense_16/bias
 :2Adam/v/dense_16/bias
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
"__inference__wrapped_model_1496382z&'56DE9�6
/�,
*�'
input_embedding����������
� "3�0
.
dense_16"�
dense_16����������
E__inference_dense_16_layer_call_and_return_conditional_losses_1497070cDE/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������
� �
*__inference_dense_16_layer_call_fn_1497059XDE/�,
%�"
 �
inputs���������@
� "!�
unknown����������
K__inference_dense_256_relu_layer_call_and_return_conditional_losses_1496976e&'0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
0__inference_dense_256_relu_layer_call_fn_1496965Z&'0�-
&�#
!�
inputs����������
� ""�
unknown�����������
K__inference_dense_512_relu_layer_call_and_return_conditional_losses_1496929e0�-
&�#
!�
inputs����������
� "-�*
#� 
tensor_0����������
� �
0__inference_dense_512_relu_layer_call_fn_1496918Z0�-
&�#
!�
inputs����������
� ""�
unknown�����������
J__inference_dense_64_relu_layer_call_and_return_conditional_losses_1497023d560�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������@
� �
/__inference_dense_64_relu_layer_call_fn_1497012Y560�-
&�#
!�
inputs����������
� "!�
unknown���������@�
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496951e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
G__inference_dropout_17_layer_call_and_return_conditional_losses_1496956e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
,__inference_dropout_17_layer_call_fn_1496934Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
,__inference_dropout_17_layer_call_fn_1496939Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
G__inference_dropout_18_layer_call_and_return_conditional_losses_1496998e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
G__inference_dropout_18_layer_call_and_return_conditional_losses_1497003e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
,__inference_dropout_18_layer_call_fn_1496981Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
,__inference_dropout_18_layer_call_fn_1496986Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
G__inference_dropout_19_layer_call_and_return_conditional_losses_1497045c3�0
)�&
 �
inputs���������@
p
� ",�)
"�
tensor_0���������@
� �
G__inference_dropout_19_layer_call_and_return_conditional_losses_1497050c3�0
)�&
 �
inputs���������@
p 
� ",�)
"�
tensor_0���������@
� �
,__inference_dropout_19_layer_call_fn_1497028X3�0
)�&
 �
inputs���������@
p
� "!�
unknown���������@�
,__inference_dropout_19_layer_call_fn_1497033X3�0
)�&
 �
inputs���������@
p 
� "!�
unknown���������@�
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496497{&'56DEA�>
7�4
*�'
input_embedding����������
p

 
� ",�)
"�
tensor_0���������
� �
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496539{&'56DEA�>
7�4
*�'
input_embedding����������
p 

 
� ",�)
"�
tensor_0���������
� �
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496874r&'56DE8�5
.�+
!�
inputs����������
p

 
� ",�)
"�
tensor_0���������
� �
\__inference_music_instruments_sounds_model3_layer_call_and_return_conditional_losses_1496909r&'56DE8�5
.�+
!�
inputs����������
p 

 
� ",�)
"�
tensor_0���������
� �
A__inference_music_instruments_sounds_model3_layer_call_fn_1496588p&'56DEA�>
7�4
*�'
input_embedding����������
p

 
� "!�
unknown����������
A__inference_music_instruments_sounds_model3_layer_call_fn_1496636p&'56DEA�>
7�4
*�'
input_embedding����������
p 

 
� "!�
unknown����������
A__inference_music_instruments_sounds_model3_layer_call_fn_1496797g&'56DE8�5
.�+
!�
inputs����������
p

 
� "!�
unknown����������
A__inference_music_instruments_sounds_model3_layer_call_fn_1496818g&'56DE8�5
.�+
!�
inputs����������
p 

 
� "!�
unknown����������
%__inference_signature_wrapper_1496776�&'56DEL�I
� 
B�?
=
input_embedding*�'
input_embedding����������"3�0
.
dense_16"�
dense_16���������
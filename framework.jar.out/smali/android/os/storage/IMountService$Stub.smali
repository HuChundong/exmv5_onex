.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_enableModemLink:I = 0x25

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSdcardRestricted:I = 0x2a

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_mountISO:I = 0x27

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_optimizeStorage:I = 0x2b

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_setAutoMountISOEnabled:I = 0x23

.field static final TRANSACTION_setMountISOEnabled:I = 0x24

.field static final TRANSACTION_setPCtoolISOEnabled:I = 0x26

.field static final TRANSACTION_setSdcardRestricted:I = 0x29

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmountISO:I = 0x28

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1009
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1010
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1011
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 998
    if-nez p0, :cond_0

    .line 999
    const/4 v0, 0x0

    .line 1005
    :goto_0
    return-object v0

    .line 1001
    :cond_0
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1002
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 1003
    check-cast v0, Landroid/os/storage/IMountService;

    goto :goto_0

    .line 1005
    :cond_1
    new-instance v0, Landroid/os/storage/IMountService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1014
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 34
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1020
    sparse-switch p1, :sswitch_data_0

    .line 1418
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 1022
    :sswitch_0
    const-string v3, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1023
    const/4 v3, 0x1

    goto :goto_0

    .line 1026
    :sswitch_1
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v17

    .line 1029
    .local v17, listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    const/4 v3, 0x1

    goto :goto_0

    .line 1034
    .end local v17           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v17

    .line 1037
    .restart local v17       #listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1038
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    const/4 v3, 0x1

    goto :goto_0

    .line 1042
    .end local v17           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v28

    .line 1044
    .local v28, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    if-eqz v28, :cond_0

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    const/4 v3, 0x1

    goto :goto_0

    .line 1045
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1049
    .end local v28           #result:Z
    :sswitch_4
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1051
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v12, 0x1

    .line 1052
    .local v12, enable:Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1053
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1054
    const/4 v3, 0x1

    goto :goto_0

    .line 1051
    .end local v12           #enable:Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 1057
    :sswitch_5
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v28

    .line 1059
    .restart local v28       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    if-eqz v28, :cond_2

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1060
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 1064
    .end local v28           #result:Z
    :sswitch_6
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1067
    .local v18, mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v29

    .line 1068
    .local v29, resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1070
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1073
    .end local v18           #mountPoint:Ljava/lang/String;
    .end local v29           #resultCode:I
    :sswitch_7
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1076
    .restart local v18       #mountPoint:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v14, 0x1

    .line 1077
    .local v14, force:Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v27, 0x1

    .line 1078
    .local v27, removeEncrypt:Z
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v14, v2}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 1079
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1076
    .end local v14           #force:Z
    .end local v27           #removeEncrypt:Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_4

    .line 1077
    .restart local v14       #force:Z
    :cond_4
    const/16 v27, 0x0

    goto :goto_5

    .line 1083
    .end local v14           #force:Z
    .end local v18           #mountPoint:Ljava/lang/String;
    :sswitch_8
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1086
    .restart local v18       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v28

    .line 1087
    .local v28, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1092
    .end local v18           #mountPoint:Ljava/lang/String;
    .end local v28           #result:I
    :sswitch_9
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1095
    .local v25, path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v26

    .line 1096
    .local v26, pids:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1098
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1101
    .end local v25           #path:Ljava/lang/String;
    .end local v26           #pids:[I
    :sswitch_a
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1104
    .restart local v18       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1105
    .local v31, state:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1107
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1110
    .end local v18           #mountPoint:Ljava/lang/String;
    .end local v31           #state:Ljava/lang/String;
    :sswitch_b
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1114
    .local v4, id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1116
    .local v5, sizeMb:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1118
    .local v6, fstype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1120
    .local v7, key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1122
    .local v8, ownerUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v9, 0x1

    .local v9, external:Z
    :goto_6
    move-object/from16 v3, p0

    .line 1123
    invoke-virtual/range {v3 .. v9}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v29

    .line 1125
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1127
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1122
    .end local v9           #external:Z
    .end local v29           #resultCode:I
    :cond_5
    const/4 v9, 0x0

    goto :goto_6

    .line 1130
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #sizeMb:I
    .end local v6           #fstype:Ljava/lang/String;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #ownerUid:I
    :sswitch_c
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1133
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v29

    .line 1134
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1139
    .end local v4           #id:Ljava/lang/String;
    .end local v29           #resultCode:I
    :sswitch_d
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1143
    .restart local v4       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v14, 0x1

    .line 1144
    .restart local v14       #force:Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v29

    .line 1145
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1147
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1143
    .end local v14           #force:Z
    .end local v29           #resultCode:I
    :cond_6
    const/4 v14, 0x0

    goto :goto_7

    .line 1150
    .end local v4           #id:Ljava/lang/String;
    :sswitch_e
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1154
    .restart local v4       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1156
    .restart local v7       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1157
    .restart local v8       #ownerUid:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v29

    .line 1158
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1159
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1160
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1163
    .end local v4           #id:Ljava/lang/String;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #ownerUid:I
    .end local v29           #resultCode:I
    :sswitch_f
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1167
    .restart local v4       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v14, 0x1

    .line 1168
    .restart local v14       #force:Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v29

    .line 1169
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1167
    .end local v14           #force:Z
    .end local v29           #resultCode:I
    :cond_7
    const/4 v14, 0x0

    goto :goto_8

    .line 1174
    .end local v4           #id:Ljava/lang/String;
    :sswitch_10
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1177
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v32

    .line 1178
    .local v32, status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    if-eqz v32, :cond_8

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1180
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1179
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 1183
    .end local v4           #id:Ljava/lang/String;
    .end local v32           #status:Z
    :sswitch_11
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1187
    .local v23, oldId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1188
    .local v20, newId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    .line 1189
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1194
    .end local v20           #newId:Ljava/lang/String;
    .end local v23           #oldId:Ljava/lang/String;
    .end local v29           #resultCode:I
    :sswitch_12
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1197
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1198
    .restart local v25       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1199
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1200
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1203
    .end local v4           #id:Ljava/lang/String;
    .end local v25           #path:Ljava/lang/String;
    :sswitch_13
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v16

    .line 1205
    .local v16, ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1207
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1210
    .end local v16           #ids:[Ljava/lang/String;
    :sswitch_14
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v22

    .line 1214
    .local v22, observer:Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1216
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1219
    .end local v22           #observer:Landroid/os/storage/IMountShutdownObserver;
    :sswitch_15
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1221
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1225
    :sswitch_16
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1229
    .local v13, filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1231
    .restart local v7       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v22

    .line 1233
    .local v22, observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1234
    .local v21, nonce:I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v13, v7, v1, v2}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1239
    .end local v7           #key:Ljava/lang/String;
    .end local v13           #filename:Ljava/lang/String;
    .end local v21           #nonce:I
    .end local v22           #observer:Landroid/os/storage/IObbActionListener;
    :sswitch_17
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1243
    .restart local v13       #filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v14, 0x1

    .line 1245
    .restart local v14       #force:Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v22

    .line 1247
    .restart local v22       #observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1248
    .restart local v21       #nonce:I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v13, v14, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1243
    .end local v14           #force:Z
    .end local v21           #nonce:I
    .end local v22           #observer:Landroid/os/storage/IObbActionListener;
    :cond_9
    const/4 v14, 0x0

    goto :goto_a

    .line 1253
    .end local v13           #filename:Ljava/lang/String;
    :sswitch_18
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1256
    .restart local v13       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v32

    .line 1257
    .restart local v32       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    if-eqz v32, :cond_a

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1259
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1258
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 1262
    .end local v13           #filename:Ljava/lang/String;
    .end local v32           #status:Z
    :sswitch_19
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1265
    .restart local v13       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1266
    .local v19, mountedPath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1268
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1271
    .end local v13           #filename:Ljava/lang/String;
    .end local v19           #mountedPath:Ljava/lang/String;
    :sswitch_1a
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v11

    .line 1273
    .local v11, emulated:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    if-eqz v11, :cond_b

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1275
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1274
    :cond_b
    const/4 v3, 0x0

    goto :goto_c

    .line 1278
    .end local v11           #emulated:Z
    :sswitch_1b
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1280
    .local v24, password:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v28

    .line 1281
    .restart local v28       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1286
    .end local v24           #password:Ljava/lang/String;
    .end local v28           #result:I
    :sswitch_1c
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1288
    .restart local v24       #password:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->encryptStorage(Ljava/lang/String;)I

    move-result v28

    .line 1289
    .restart local v28       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1291
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1294
    .end local v24           #password:Ljava/lang/String;
    .end local v28           #result:I
    :sswitch_1d
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1296
    .restart local v24       #password:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(Ljava/lang/String;)I

    move-result v28

    .line 1297
    .restart local v28       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1298
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1299
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1302
    .end local v24           #password:Ljava/lang/String;
    .end local v28           #result:I
    :sswitch_1e
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1303
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getVolumeList()[Landroid/os/Parcelable;

    move-result-object v28

    .line 1304
    .local v28, result:[Landroid/os/Parcelable;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1305
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 1306
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1309
    .end local v28           #result:[Landroid/os/Parcelable;
    :sswitch_1f
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1312
    .restart local v4       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1313
    .restart local v25       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1315
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1318
    .end local v4           #id:Ljava/lang/String;
    .end local v25           #path:Ljava/lang/String;
    :sswitch_20
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1319
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v28

    .line 1320
    .local v28, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1322
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1325
    .end local v28           #result:I
    :sswitch_21
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1329
    .restart local v4       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1331
    .local v15, gid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1332
    .restart local v13       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15, v13}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v29

    .line 1333
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1335
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1339
    .end local v4           #id:Ljava/lang/String;
    .end local v13           #filename:Ljava/lang/String;
    .end local v15           #gid:I
    .end local v29           #resultCode:I
    :sswitch_22
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v10, 0x1

    .line 1342
    .local v10, _arg0:Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/storage/IMountService$Stub;->setAutoMountISOEnabled(Z)V

    .line 1343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1341
    .end local v10           #_arg0:Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_d

    .line 1348
    :sswitch_23
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v12, 0x1

    .line 1351
    .restart local v12       #enable:Z
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/storage/IMountService$Stub;->setMountISOEnabled(Z)I

    move-result v29

    .line 1352
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1354
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1350
    .end local v12           #enable:Z
    .end local v29           #resultCode:I
    :cond_d
    const/4 v12, 0x0

    goto :goto_e

    .line 1357
    :sswitch_24
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->enableModemLink()I

    move-result v29

    .line 1359
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1365
    .end local v29           #resultCode:I
    :sswitch_25
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    const/4 v12, 0x1

    .line 1368
    .restart local v12       #enable:Z
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/storage/IMountService$Stub;->setPCtoolISOEnabled(Z)I

    move-result v29

    .line 1369
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1371
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1367
    .end local v12           #enable:Z
    .end local v29           #resultCode:I
    :cond_e
    const/4 v12, 0x0

    goto :goto_f

    .line 1375
    :sswitch_26
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 1378
    .restart local v25       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountISO(Ljava/lang/String;)I

    move-result v29

    .line 1379
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1385
    .end local v25           #path:Ljava/lang/String;
    .end local v29           #resultCode:I
    :sswitch_27
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->unmountISO()I

    move-result v29

    .line 1387
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1389
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1392
    .end local v29           #resultCode:I
    :sswitch_28
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    const/16 v30, 0x1

    .line 1395
    .local v30, set:Z
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setSdcardRestricted(Z)V

    .line 1396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1394
    .end local v30           #set:Z
    :cond_f
    const/16 v30, 0x0

    goto :goto_10

    .line 1400
    :sswitch_29
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isSdcardRestricted()Z

    move-result v28

    .line 1402
    .local v28, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    if-eqz v28, :cond_10

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1403
    :cond_10
    const/4 v3, 0x0

    goto :goto_11

    .line 1408
    .end local v28           #result:Z
    :sswitch_2a
    const-string v3, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    const/16 v33, 0x1

    .line 1411
    .local v33, trigger:Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->optimizeStorage(Z)I

    move-result v29

    .line 1412
    .restart local v29       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1413
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1410
    .end local v29           #resultCode:I
    .end local v33           #trigger:Z
    :cond_11
    const/16 v33, 0x0

    goto :goto_12

    .line 1020
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

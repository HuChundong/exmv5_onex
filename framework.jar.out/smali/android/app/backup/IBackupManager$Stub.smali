.class public abstract Landroid/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Landroid/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupManager"

.field static final TRANSACTION_BackupRestoreForExternalTransport:I = 0x1b

.field static final TRANSACTION_BackupStatus:I = 0x1c

.field static final TRANSACTION_acknowledgeFullBackupOrRestore:I = 0xf

.field static final TRANSACTION_agentConnected:I = 0x3

.field static final TRANSACTION_agentDisconnected:I = 0x4

.field static final TRANSACTION_backupNow:I = 0xc

.field static final TRANSACTION_beginRestoreSession:I = 0x15

.field static final TRANSACTION_clearBackupData:I = 0x2

.field static final TRANSACTION_dataChanged:I = 0x1

.field static final TRANSACTION_fullBackup:I = 0xd

.field static final TRANSACTION_fullBackupPrivileged:I = 0x18

.field static final TRANSACTION_fullRestore:I = 0xe

.field static final TRANSACTION_fullRestorePrivileged:I = 0x19

.field static final TRANSACTION_getConfigurationIntent:I = 0x13

.field static final TRANSACTION_getCurrentTransport:I = 0x10

.field static final TRANSACTION_getDestinationString:I = 0x14

.field static final TRANSACTION_hasBackupPassword:I = 0xb

.field static final TRANSACTION_isBackupEnabled:I = 0x9

.field static final TRANSACTION_listAllTransports:I = 0x11

.field static final TRANSACTION_opComplete:I = 0x16

.field static final TRANSACTION_registerExternalTransport:I = 0x1a

.field static final TRANSACTION_registerHtcTransport:I = 0x17

.field static final TRANSACTION_restoreAtInstall:I = 0x5

.field static final TRANSACTION_selectBackupTransport:I = 0x12

.field static final TRANSACTION_setAutoRestore:I = 0x7

.field static final TRANSACTION_setBackupEnabled:I = 0x6

.field static final TRANSACTION_setBackupPassword:I = 0xa

.field static final TRANSACTION_setBackupProvisioned:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "android.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string v1, "android.app.backup.IBackupManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Landroid/app/backup/IBackupManager;

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Landroid/app/backup/IBackupManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 48
    sparse-switch p1, :sswitch_data_0

    .line 379
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 52
    :sswitch_0
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x1

    goto :goto_0

    .line 57
    :sswitch_1
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/IBackupManager$Stub;->dataChanged(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/IBackupManager$Stub;->clearBackupData(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v1, 0x1

    goto :goto_0

    .line 75
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 80
    .local v3, _arg1:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 81
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    const/4 v1, 0x1

    goto :goto_0

    .line 86
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Landroid/os/IBinder;
    :sswitch_4
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/IBackupManager$Stub;->agentDisconnected(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v1, 0x1

    goto :goto_0

    .line 95
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 99
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 100
    .local v3, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->restoreAtInstall(Ljava/lang/String;I)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v1, 0x1

    goto :goto_0

    .line 106
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    :sswitch_6
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 109
    .local v2, _arg0:Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupEnabled(Z)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 108
    .end local v2           #_arg0:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 115
    :sswitch_7
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 118
    .restart local v2       #_arg0:Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/IBackupManager$Stub;->setAutoRestore(Z)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 117
    .end local v2           #_arg0:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 124
    :sswitch_8
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 127
    .restart local v2       #_arg0:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/IBackupManager$Stub;->setBackupProvisioned(Z)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 126
    .end local v2           #_arg0:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 133
    :sswitch_9
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->isBackupEnabled()Z

    move-result v15

    .line 135
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v15, :cond_3

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 136
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 141
    .end local v15           #_result:Z
    :sswitch_a
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 147
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v15, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 148
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 153
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v15           #_result:Z
    :sswitch_b
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->hasBackupPassword()Z

    move-result v15

    .line 155
    .restart local v15       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v15, :cond_5

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 156
    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    .line 161
    .end local v15           #_result:Z
    :sswitch_c
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->backupNow()V

    .line 163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 168
    :sswitch_d
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 171
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 177
    .local v2, _arg0:Landroid/os/ParcelFileDescriptor;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    .line 179
    .local v3, _arg1:Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v4, 0x1

    .line 181
    .local v4, _arg2:Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v5, 0x1

    .line 183
    .local v5, _arg3:Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v6, 0x1

    .line 185
    .local v6, _arg4:Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .local v7, _arg5:[Ljava/lang/String;
    move-object/from16 v1, p0

    .line 186
    invoke-virtual/range {v1 .. v7}, Landroid/app/backup/IBackupManager$Stub;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 174
    .end local v2           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Z
    .end local v5           #_arg3:Z
    .end local v6           #_arg4:Z
    .end local v7           #_arg5:[Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_7

    .line 177
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 179
    .restart local v3       #_arg1:Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    .line 181
    .restart local v4       #_arg2:Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_a

    .line 183
    .restart local v5       #_arg3:Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_b

    .line 192
    .end local v2           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Z
    .end local v5           #_arg3:Z
    :sswitch_e
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 195
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 200
    .restart local v2       #_arg0:Landroid/os/ParcelFileDescriptor;
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/IBackupManager$Stub;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 198
    .end local v2           #_arg0:Landroid/os/ParcelFileDescriptor;
    :cond_b
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_c

    .line 206
    .end local v2           #_arg0:Landroid/os/ParcelFileDescriptor;
    :sswitch_f
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 210
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v3, 0x1

    .line 212
    .restart local v3       #_arg1:Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v6

    .local v6, _arg4:Landroid/app/backup/IFullBackupRestoreObserver;
    move-object/from16 v1, p0

    .line 217
    invoke-virtual/range {v1 .. v6}, Landroid/app/backup/IBackupManager$Stub;->acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 210
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Landroid/app/backup/IFullBackupRestoreObserver;
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 223
    .end local v2           #_arg0:I
    :sswitch_10
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->getCurrentTransport()Ljava/lang/String;

    move-result-object v15

    .line 225
    .local v15, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 231
    .end local v15           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->listAllTransports()[Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 239
    .end local v15           #_result:[Ljava/lang/String;
    :sswitch_12
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/IBackupManager$Stub;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 243
    .local v15, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 249
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Ljava/lang/String;
    :sswitch_13
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 252
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/IBackupManager$Stub;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 253
    .local v15, _result:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v15, :cond_d

    .line 255
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 261
    :goto_e
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 259
    :cond_d
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 265
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Landroid/content/Intent;
    :sswitch_14
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .restart local v2       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/IBackupManager$Stub;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 269
    .local v15, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 275
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v15           #_result:Ljava/lang/String;
    :sswitch_15
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v15

    .line 281
    .local v15, _result:Landroid/app/backup/IRestoreSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v15, :cond_e

    invoke-interface {v15}, Landroid/app/backup/IRestoreSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 283
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 282
    :cond_e
    const/4 v1, 0x0

    goto :goto_f

    .line 287
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v15           #_result:Landroid/app/backup/IRestoreSession;
    :sswitch_16
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/backup/IBackupManager$Stub;->opComplete(I)V

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 296
    .end local v2           #_arg0:I
    :sswitch_17
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->registerHtcTransport()V

    .line 298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 303
    :sswitch_18
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 306
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 312
    .local v2, _arg0:Landroid/os/ParcelFileDescriptor;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v3, 0x1

    .line 314
    .local v3, _arg1:Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v4, 0x1

    .line 316
    .local v4, _arg2:Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v5, 0x1

    .line 318
    .local v5, _arg3:Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v6, 0x1

    .line 320
    .local v6, _arg4:Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 322
    .restart local v7       #_arg5:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v8

    .local v8, _arg6:Landroid/app/backup/IFullBackupRestoreObserver;
    move-object/from16 v1, p0

    .line 323
    invoke-virtual/range {v1 .. v8}, Landroid/app/backup/IBackupManager$Stub;->fullBackupPrivileged(Landroid/os/ParcelFileDescriptor;ZZZZ[Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 309
    .end local v2           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Z
    .end local v5           #_arg3:Z
    .end local v6           #_arg4:Z
    .end local v7           #_arg5:[Ljava/lang/String;
    .end local v8           #_arg6:Landroid/app/backup/IFullBackupRestoreObserver;
    :cond_f
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_10

    .line 312
    :cond_10
    const/4 v3, 0x0

    goto :goto_11

    .line 314
    .restart local v3       #_arg1:Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_12

    .line 316
    .restart local v4       #_arg2:Z
    :cond_12
    const/4 v5, 0x0

    goto :goto_13

    .line 318
    .restart local v5       #_arg3:Z
    :cond_13
    const/4 v6, 0x0

    goto :goto_14

    .line 329
    .end local v2           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Z
    .end local v5           #_arg3:Z
    :sswitch_19
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    .line 332
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 338
    .restart local v2       #_arg0:Landroid/os/ParcelFileDescriptor;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v3

    .line 339
    .local v3, _arg1:Landroid/app/backup/IFullBackupRestoreObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->fullRestorePrivileged(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 335
    .end local v2           #_arg0:Landroid/os/ParcelFileDescriptor;
    .end local v3           #_arg1:Landroid/app/backup/IFullBackupRestoreObserver;
    :cond_14
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/ParcelFileDescriptor;
    goto :goto_15

    .line 345
    .end local v2           #_arg0:Landroid/os/ParcelFileDescriptor;
    :sswitch_1a
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/app/backup/IBackupManager$Stub;->registerExternalTransport(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 356
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_1b
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 360
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    const/4 v3, 0x1

    .line 362
    .local v3, _arg1:Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 364
    .local v12, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .local v5, _arg3:[Ljava/lang/String;
    move-object/from16 v9, p0

    move-object v10, v2

    move v11, v3

    move-object v14, v5

    .line 365
    invoke-virtual/range {v9 .. v14}, Landroid/app/backup/IBackupManager$Stub;->BackupRestoreForExternalTransport(Ljava/lang/String;ZJ[Ljava/lang/String;)Z

    move-result v15

    .line 366
    .local v15, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-eqz v15, :cond_16

    const/4 v1, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 360
    .end local v3           #_arg1:Z
    .end local v5           #_arg3:[Ljava/lang/String;
    .end local v12           #_arg2:J
    .end local v15           #_result:Z
    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    .line 367
    .restart local v3       #_arg1:Z
    .restart local v5       #_arg3:[Ljava/lang/String;
    .restart local v12       #_arg2:J
    .restart local v15       #_result:Z
    :cond_16
    const/4 v1, 0x0

    goto :goto_17

    .line 372
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Z
    .end local v5           #_arg3:[Ljava/lang/String;
    .end local v12           #_arg2:J
    .end local v15           #_result:Z
    :sswitch_1c
    const-string v1, "android.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;->BackupStatus()Ljava/lang/String;

    move-result-object v15

    .line 374
    .local v15, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 48
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

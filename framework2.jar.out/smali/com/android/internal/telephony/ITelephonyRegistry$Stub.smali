.class public abstract Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.super Landroid/os/Binder;
.source "ITelephonyRegistry.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephonyRegistry"

.field static final TRANSACTION_HtcNotifyDataConnection:I = 0x13

.field static final TRANSACTION_htcNotifyCallDisconnected:I = 0xf

.field static final TRANSACTION_htcNotifyDataConnection:I = 0xd

.field static final TRANSACTION_htcNotifyPreciseCallStateChanged:I = 0x10

.field static final TRANSACTION_htcNotifySeparateServiceState:I = 0xe

.field static final TRANSACTION_listen:I = 0x1

.field static final TRANSACTION_notifyCWDataConnection:I = 0x11

.field static final TRANSACTION_notifyCallForwardingChanged:I = 0x6

.field static final TRANSACTION_notifyCallState:I = 0x2

.field static final TRANSACTION_notifyCellInfo:I = 0xc

.field static final TRANSACTION_notifyCellLocation:I = 0xa

.field static final TRANSACTION_notifyDataActivity:I = 0x7

.field static final TRANSACTION_notifyDataConnection:I = 0x8

.field static final TRANSACTION_notifyDataConnectionFailed:I = 0x9

.field static final TRANSACTION_notifyDataConnectionLTE:I = 0x12

.field static final TRANSACTION_notifyMessageWaitingChanged:I = 0x5

.field static final TRANSACTION_notifyOtaspChanged:I = 0xb

.field static final TRANSACTION_notifyServiceState:I = 0x3

.field static final TRANSACTION_notifySignalStrength:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/telephony/ITelephonyRegistry;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 344
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v3

    .line 53
    .local v3, _arg1:Lcom/android/internal/telephony/IPhoneStateListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 55
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    .line 56
    .local v5, _arg3:Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    .end local v5           #_arg3:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 62
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Lcom/android/internal/telephony/IPhoneStateListener;
    .end local v4           #_arg2:I
    :sswitch_2
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 66
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallState(ILjava/lang/String;)V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    const/4 v1, 0x1

    goto :goto_0

    .line 73
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_3
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    sget-object v1, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ServiceState;

    .line 81
    .local v2, _arg0:Landroid/telephony/ServiceState;
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyServiceState(Landroid/telephony/ServiceState;)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    const/4 v1, 0x1

    goto :goto_0

    .line 79
    .end local v2           #_arg0:Landroid/telephony/ServiceState;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/telephony/ServiceState;
    goto :goto_2

    .line 87
    .end local v2           #_arg0:Landroid/telephony/ServiceState;
    :sswitch_4
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    sget-object v1, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SignalStrength;

    .line 95
    .local v2, _arg0:Landroid/telephony/SignalStrength;
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifySignalStrength(Landroid/telephony/SignalStrength;)V

    .line 96
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 93
    .end local v2           #_arg0:Landroid/telephony/SignalStrength;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/telephony/SignalStrength;
    goto :goto_3

    .line 101
    .end local v2           #_arg0:Landroid/telephony/SignalStrength;
    :sswitch_5
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyMessageWaitingChanged(I)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 110
    .end local v2           #_arg0:I
    :sswitch_6
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 113
    .local v2, _arg0:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCallForwardingChanged(Z)V

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 112
    .end local v2           #_arg0:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 119
    :sswitch_7
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataActivity(I)V

    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 128
    .end local v2           #_arg0:I
    :sswitch_8
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    .line 134
    .local v3, _arg1:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 141
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    .line 147
    .local v7, _arg5:Landroid/net/LinkProperties;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 148
    sget-object v1, Landroid/net/LinkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkCapabilities;

    .line 154
    .local v8, _arg6:Landroid/net/LinkCapabilities;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 156
    .local v9, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v10, 0x1

    .local v10, _arg8:Z
    :goto_8
    move-object/from16 v1, p0

    .line 157
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZ)V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 132
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Landroid/net/LinkProperties;
    .end local v8           #_arg6:Landroid/net/LinkCapabilities;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 144
    .restart local v3       #_arg1:Z
    .restart local v4       #_arg2:Ljava/lang/String;
    .restart local v5       #_arg3:Ljava/lang/String;
    .restart local v6       #_arg4:Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #_arg5:Landroid/net/LinkProperties;
    goto :goto_6

    .line 151
    :cond_6
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/net/LinkCapabilities;
    goto :goto_7

    .line 156
    .restart local v9       #_arg7:I
    :cond_7
    const/4 v10, 0x0

    goto :goto_8

    .line 163
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Landroid/net/LinkProperties;
    .end local v8           #_arg6:Landroid/net/LinkCapabilities;
    .end local v9           #_arg7:I
    :sswitch_9
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 174
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_a
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 177
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 182
    .local v2, _arg0:Landroid/os/Bundle;
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellLocation(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 180
    .end local v2           #_arg0:Landroid/os/Bundle;
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/os/Bundle;
    goto :goto_9

    .line 188
    .end local v2           #_arg0:Landroid/os/Bundle;
    :sswitch_b
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyOtaspChanged(I)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 197
    .end local v2           #_arg0:I
    :sswitch_c
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 200
    sget-object v1, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 205
    .local v2, _arg0:Landroid/telephony/CellInfo;
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCellInfo(Landroid/telephony/CellInfo;)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 203
    .end local v2           #_arg0:Landroid/telephony/CellInfo;
    :cond_9
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/telephony/CellInfo;
    goto :goto_a

    .line 211
    .end local v2           #_arg0:Landroid/telephony/CellInfo;
    :sswitch_d
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v3, 0x1

    .line 217
    .local v3, _arg1:Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 219
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 221
    .restart local v5       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, _arg4:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 227
    .local v8, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 229
    .local v9, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .local v11, _arg9:J
    move-object/from16 v1, p0

    .line 232
    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->htcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 215
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:[Ljava/lang/String;
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v8           #_arg6:I
    .end local v9           #_arg7:Ljava/lang/String;
    .end local v10           #_arg8:Ljava/lang/String;
    .end local v11           #_arg9:J
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 238
    .end local v2           #_arg0:I
    :sswitch_e
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    sget-object v1, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/ServiceState;

    .line 242
    .local v2, _arg0:[Landroid/telephony/ServiceState;
    sget-object v1, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/telephony/ServiceState;

    .line 243
    .local v3, _arg1:[Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->htcNotifySeparateServiceState([Landroid/telephony/ServiceState;[Landroid/telephony/ServiceState;)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 249
    .end local v2           #_arg0:[Landroid/telephony/ServiceState;
    .end local v3           #_arg1:[Landroid/telephony/ServiceState;
    :sswitch_f
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->htcNotifyCallDisconnected(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 258
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_10
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 261
    .local v2, _arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->htcNotifyPreciseCallStateChanged(I)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 267
    .end local v2           #_arg0:I
    :sswitch_11
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .restart local v2       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyCWDataConnection(I)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 276
    .end local v2           #_arg0:I
    :sswitch_12
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 284
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 286
    .restart local v5       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 287
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkProperties;

    .line 293
    .local v6, _arg4:Landroid/net/LinkProperties;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v7, 0x1

    .line 295
    .local v7, _arg5:Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 297
    .restart local v8       #_arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v9, 0x1

    .line 299
    .local v9, _arg7:Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #_arg8:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 300
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->notifyDataConnectionLTE(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/net/LinkProperties;ZIZLjava/lang/String;)V

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 290
    .end local v6           #_arg4:Landroid/net/LinkProperties;
    .end local v7           #_arg5:Z
    .end local v8           #_arg6:I
    .end local v9           #_arg7:Z
    .end local v10           #_arg8:Ljava/lang/String;
    :cond_b
    const/4 v6, 0x0

    .restart local v6       #_arg4:Landroid/net/LinkProperties;
    goto :goto_c

    .line 293
    :cond_c
    const/4 v7, 0x0

    goto :goto_d

    .line 297
    .restart local v7       #_arg5:Z
    .restart local v8       #_arg6:I
    :cond_d
    const/4 v9, 0x0

    goto :goto_e

    .line 306
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Landroid/net/LinkProperties;
    .end local v7           #_arg5:Z
    .end local v8           #_arg6:I
    :sswitch_13
    const-string v1, "com.android.internal.telephony.ITelephonyRegistry"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 310
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v3, 0x1

    .line 312
    .local v3, _arg1:Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 316
    .restart local v5       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 318
    .local v6, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 319
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkProperties;

    .line 325
    .local v7, _arg5:Landroid/net/LinkProperties;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 326
    sget-object v1, Landroid/net/LinkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkCapabilities;

    .line 332
    .local v8, _arg6:Landroid/net/LinkCapabilities;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 334
    .local v9, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v10, 0x1

    .line 336
    .local v10, _arg8:Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 338
    .local v11, _arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .local v24, _arg10:Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v2

    move v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    .line 339
    invoke-virtual/range {v13 .. v24}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->HtcNotifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;IZILjava/lang/String;)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 310
    .end local v3           #_arg1:Z
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Landroid/net/LinkProperties;
    .end local v8           #_arg6:Landroid/net/LinkCapabilities;
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Z
    .end local v11           #_arg9:I
    .end local v24           #_arg10:Ljava/lang/String;
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .line 322
    .restart local v3       #_arg1:Z
    .restart local v4       #_arg2:Ljava/lang/String;
    .restart local v5       #_arg3:Ljava/lang/String;
    .restart local v6       #_arg4:Ljava/lang/String;
    :cond_f
    const/4 v7, 0x0

    .restart local v7       #_arg5:Landroid/net/LinkProperties;
    goto :goto_10

    .line 329
    :cond_10
    const/4 v8, 0x0

    .restart local v8       #_arg6:Landroid/net/LinkCapabilities;
    goto :goto_11

    .line 334
    .restart local v9       #_arg7:I
    :cond_11
    const/4 v10, 0x0

    goto :goto_12

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

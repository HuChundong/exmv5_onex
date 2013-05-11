.class public abstract Lcom/htc/service/IWfdService$Stub;
.super Landroid/os/Binder;
.source "IWfdService.java"

# interfaces
.implements Lcom/htc/service/IWfdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/IWfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/IWfdService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.service.IWfdService"

.field static final TRANSACTION_attemptToConfigure:I = 0x7

.field static final TRANSACTION_attemptToReConfigure:I = 0x8

.field static final TRANSACTION_attemptToRequestDongleToAPM:I = 0x9

.field static final TRANSACTION_cancel:I = 0xa

.field static final TRANSACTION_finishService:I = 0xc

.field static final TRANSACTION_getCurrentState:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setMode:I = 0x4

.field static final TRANSACTION_setWhdmiForeground:I = 0xe

.field static final TRANSACTION_startScanDongles:I = 0x5

.field static final TRANSACTION_stopScanDongles:I = 0x6

.field static final TRANSACTION_switchOnOffMirrorMode:I = 0xd

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_wpsTimeout:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.service.IWfdService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/service/IWfdService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/service/IWfdService;
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
    const-string v1, "com.htc.service.IWfdService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/service/IWfdService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/service/IWfdService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/service/IWfdService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/service/IWfdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/service/IWfdServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/IWfdServiceCallback;

    move-result-object v0

    .line 50
    .local v0, _arg0:Lcom/htc/service/IWfdServiceCallback;
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->registerCallback(Lcom/htc/service/IWfdServiceCallback;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:Lcom/htc/service/IWfdServiceCallback;
    :sswitch_2
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/service/IWfdServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/IWfdServiceCallback;

    move-result-object v0

    .line 59
    .restart local v0       #_arg0:Lcom/htc/service/IWfdServiceCallback;
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->unregisterCallback(Lcom/htc/service/IWfdServiceCallback;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:Lcom/htc/service/IWfdServiceCallback;
    :sswitch_3
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->getCurrentState()I

    move-result v1

    .line 67
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v1           #_result:I
    :sswitch_4
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->setMode(I)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 85
    .local v0, _arg0:Z
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->startScanDongles(Z)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    .end local v0           #_arg0:Z
    :sswitch_6
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->stopScanDongles()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    :sswitch_7
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    sget-object v3, Lcom/htc/service/DongleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 106
    .local v0, _arg0:Lcom/htc/service/DongleInfo;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->attemptToConfigure(Lcom/htc/service/DongleInfo;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 104
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/service/DongleInfo;
    goto :goto_1

    .line 112
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :sswitch_8
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    sget-object v3, Lcom/htc/service/DongleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 120
    .restart local v0       #_arg0:Lcom/htc/service/DongleInfo;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->attemptToReConfigure(Lcom/htc/service/DongleInfo;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/service/DongleInfo;
    goto :goto_2

    .line 126
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :sswitch_9
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    sget-object v3, Lcom/htc/service/DongleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 134
    .restart local v0       #_arg0:Lcom/htc/service/DongleInfo;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->attemptToRequestDongleToAPM(Lcom/htc/service/DongleInfo;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 132
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/htc/service/DongleInfo;
    goto :goto_3

    .line 140
    .end local v0           #_arg0:Lcom/htc/service/DongleInfo;
    :sswitch_a
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->cancel()V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 147
    :sswitch_b
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->wpsTimeout()V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 154
    :sswitch_c
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/htc/service/IWfdService$Stub;->finishService()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 161
    :sswitch_d
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    .line 164
    .local v0, _arg0:Z
    :cond_4
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->switchOnOffMirrorMode(Z)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 170
    .end local v0           #_arg0:Z
    :sswitch_e
    const-string v3, "com.htc.service.IWfdService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    .line 173
    .restart local v0       #_arg0:Z
    :cond_5
    invoke-virtual {p0, v0}, Lcom/htc/service/IWfdService$Stub;->setWhdmiForeground(Z)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

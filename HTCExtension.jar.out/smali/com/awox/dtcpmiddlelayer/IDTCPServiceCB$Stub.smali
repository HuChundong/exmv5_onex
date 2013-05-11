.class public abstract Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
.super Landroid/os/Binder;
.source "IDTCPServiceCB.java"

# interfaces
.implements Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.awox.dtcpmiddlelayer.IDTCPServiceCB"

.field static final TRANSACTION_onReadByteNotify:I = 0x1

.field static final TRANSACTION_onServiceStartComplete:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.awox.dtcpmiddlelayer.IDTCPServiceCB"

    invoke-virtual {p0, p0, v0}, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB;
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
    const-string v1, "com.awox.dtcpmiddlelayer.IDTCPServiceCB"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.awox.dtcpmiddlelayer.IDTCPServiceCB"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.awox.dtcpmiddlelayer.IDTCPServiceCB"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 51
    .local v1, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 53
    .local v3, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg2:I
    move-object v0, p0

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;->onReadByteNotify(JJI)V

    move v0, v6

    .line 55
    goto :goto_0

    .line 59
    .end local v1           #_arg0:J
    .end local v3           #_arg1:J
    .end local v5           #_arg2:I
    :sswitch_2
    const-string v0, "com.awox.dtcpmiddlelayer.IDTCPServiceCB"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;->onServiceStartComplete()V

    move v0, v6

    .line 61
    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Landroid/media/IRingtonePlayer$Stub;
.super Landroid/os/Binder;
.source "IRingtonePlayer.java"

# interfaces
.implements Landroid/media/IRingtonePlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRingtonePlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRingtonePlayer"

.field static final TRANSACTION_htcPlayAsync:I = 0x6

.field static final TRANSACTION_isPlaying:I = 0x3

.field static final TRANSACTION_play:I = 0x1

.field static final TRANSACTION_playAsync:I = 0x4

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_stopAsync:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.media.IRingtonePlayer"

    invoke-virtual {p0, p0, v0}, Landroid/media/IRingtonePlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.media.IRingtonePlayer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/media/IRingtonePlayer;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/media/IRingtonePlayer$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/media/IRingtonePlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
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
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 46
    :sswitch_0
    const-string v5, "android.media.IRingtonePlayer"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v5, "android.media.IRingtonePlayer"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 62
    .local v1, _arg1:Landroid/net/Uri;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IRingtonePlayer$Stub;->play(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v1           #_arg1:Landroid/net/Uri;
    .end local v2           #_arg2:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/net/Uri;
    goto :goto_1

    .line 69
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Landroid/net/Uri;
    :sswitch_2
    const-string v5, "android.media.IRingtonePlayer"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 72
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/media/IRingtonePlayer$Stub;->stop(Landroid/os/IBinder;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_3
    const-string v7, "android.media.IRingtonePlayer"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/media/IRingtonePlayer$Stub;->isPlaying(Landroid/os/IBinder;)Z

    move-result v4

    .line 82
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v4           #_result:Z
    :sswitch_4
    const-string v7, "android.media.IRingtonePlayer"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 91
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 97
    .local v0, _arg0:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v1, v6

    .line 99
    .local v1, _arg1:Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IRingtonePlayer$Stub;->playAsync(Landroid/net/Uri;ZI)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_2

    :cond_3
    move v1, v5

    .line 97
    goto :goto_3

    .line 106
    .end local v0           #_arg0:Landroid/net/Uri;
    :sswitch_5
    const-string v5, "android.media.IRingtonePlayer"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/media/IRingtonePlayer$Stub;->stopAsync()V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    :sswitch_6
    const-string v7, "android.media.IRingtonePlayer"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 116
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 122
    .restart local v0       #_arg0:Landroid/net/Uri;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v1, v6

    .line 124
    .restart local v1       #_arg1:Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 127
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 132
    .local v3, _arg3:Landroid/os/Bundle;
    :goto_6
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/IRingtonePlayer$Stub;->htcPlayAsync(Landroid/net/Uri;ZILandroid/os/Bundle;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 119
    .end local v0           #_arg0:Landroid/net/Uri;
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:I
    .end local v3           #_arg3:Landroid/os/Bundle;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/Uri;
    goto :goto_4

    :cond_5
    move v1, v5

    .line 122
    goto :goto_5

    .line 130
    .restart local v1       #_arg1:Z
    .restart local v2       #_arg2:I
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #_arg3:Landroid/os/Bundle;
    goto :goto_6

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public Lcom/htc/opensense/social/RemoteError;
.super Ljava/lang/Object;
.source "RemoteError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/opensense/social/RemoteError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public code:Lcom/htc/opensense/social/ErrorCode;

.field public detailMsg:Ljava/lang/String;

.field private e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

.field public failed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/htc/opensense/social/RemoteError$1;

    invoke-direct {v0}, Lcom/htc/opensense/social/RemoteError$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/RemoteError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 29
    iput-object v1, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 37
    iput-object v1, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    .line 112
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->UNKNOWN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 29
    iput-object v1, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 37
    iput-object v1, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    .line 97
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/RemoteError;->readFromParcel(Landroid/os/Parcel;)V

    .line 98
    return-void
.end method

.method public static throwException(Lcom/htc/opensense/social/ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter "code"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Lcom/htc/opensense/social/RemoteError;

    invoke-direct {v0}, Lcom/htc/opensense/social/RemoteError;-><init>()V

    .line 156
    .local v0, error:Lcom/htc/opensense/social/RemoteError;
    iput-object p0, v0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 157
    iput-object p1, v0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 160
    invoke-virtual {v0}, Lcom/htc/opensense/social/RemoteError;->toRemoteException()V

    .line 161
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthException()Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/htc/opensense/social/ErrorCode;->NOT_LOGIN:Lcom/htc/opensense/social/ErrorCode;

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 169
    invoke-virtual {p0}, Lcom/htc/opensense/social/RemoteError;->getException()Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lcom/htc/opensense/social/ErrorCode;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    return-object v0
.end method

.method public getDetailMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    invoke-direct {v0, p0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/RemoteError;)V

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    return-object v0
.end method

.method public isFailed()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/htc/opensense/social/ErrorCode;->valueOf(I)Lcom/htc/opensense/social/ErrorCode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCode(Lcom/htc/opensense/social/ErrorCode;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 45
    return-void
.end method

.method public setDetailMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "detailMsg"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setFailed(Z)V
    .locals 0
    .parameter "failed"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 61
    return-void
.end method

.method public throwRemoteError(Lcom/htc/opensense/social/ErrorCode;Ljava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    .line 143
    iput-object p2, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    .line 146
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method toRemoteException()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    if-nez v0, :cond_0

    .line 186
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    invoke-direct {v0, p0}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;-><init>(Lcom/htc/opensense/social/RemoteError;)V

    iput-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->code:Lcom/htc/opensense/social/ErrorCode;

    invoke-virtual {v0}, Lcom/htc/opensense/social/ErrorCode;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/htc/opensense/social/RemoteError;->detailMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-boolean v0, p0, Lcom/htc/opensense/social/RemoteError;->failed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 135
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

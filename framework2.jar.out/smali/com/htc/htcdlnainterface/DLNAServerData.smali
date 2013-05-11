.class public Lcom/htc/htcdlnainterface/DLNAServerData;
.super Ljava/lang/Object;
.source "DLNAServerData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/DLNAServerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private serverID:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAServerData$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAServerData$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/DLNAServerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 115
    invoke-virtual {p0, p1}, Lcom/htc/htcdlnainterface/DLNAServerData;->readFromParcel(Landroid/os/Parcel;)V

    .line 116
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public setServerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "path"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
.super Ljava/lang/Object;
.source "DLNAPushMediaInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downloadedSize:J

.field private mediaFilePath:Ljava/lang/String;

.field private metaDataFilePath:Ljava/lang/String;

.field private thumbFilePath:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private totalFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo$1;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo$1;-><init>()V

    sput-object v0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    .line 18
    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    .line 19
    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    .line 18
    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    .line 19
    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    .line 177
    invoke-direct {p0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 178
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 184
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->downloadedSize:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadedSize()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    return-wide v0
.end method

.method public getMediaFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalFileSize()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    return-wide v0
.end method

.method public setDownloadedSize(J)V
    .locals 0
    .parameter "downloadedSize"

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    .line 92
    return-void
.end method

.method public setMediaFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaFilePath"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setMetaDataFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "metaDataFilePath"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setThumbFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbFilePath"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTotalFileSize(J)V
    .locals 0
    .parameter "totalFileSize"

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    .line 156
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 225
    iget-wide v1, p0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

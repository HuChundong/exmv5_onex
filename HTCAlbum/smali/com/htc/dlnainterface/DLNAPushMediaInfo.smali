.class public Lcom/htc/dlnainterface/DLNAPushMediaInfo;
.super Ljava/lang/Object;
.source "DLNAPushMediaInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/dlnainterface/DLNAPushMediaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public downloadedSize:J

.field public mediaFilePath:Ljava/lang/String;

.field public metaDataFilePath:Ljava/lang/String;

.field public thumbFilePath:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public totalFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/htc/dlnainterface/DLNAPushMediaInfo$1;

    invoke-direct {v0}, Lcom/htc/dlnainterface/DLNAPushMediaInfo$1;-><init>()V

    sput-object v0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    .line 11
    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    .line 12
    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    .line 11
    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    .line 12
    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    .line 32
    invoke-direct {p0, p1}, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->downloadedSize:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->mediaFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->metaDataFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->thumbFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->totalFileSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-wide v1, p0, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->downloadedSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/htc/AddressFinderService/interfaces/AddressData;
.super Ljava/lang/Object;
.source "AddressData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/AddressFinderService/interfaces/AddressData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/htc/AddressFinderService/interfaces/AddressData$1;

    invoke-direct {v0}, Lcom/htc/AddressFinderService/interfaces/AddressData$1;-><init>()V

    sput-object v0, Lcom/htc/AddressFinderService/interfaces/AddressData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLongitude:D

    .line 9
    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLatitude:D

    .line 10
    iput-object v2, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mAddress:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLanguage:Ljava/lang/String;

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mTime:J

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLongitude:D

    .line 9
    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLatitude:D

    .line 10
    iput-object v2, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mAddress:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLanguage:Ljava/lang/String;

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mTime:J

    .line 28
    invoke-virtual {p0, p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->readFromParcel(Landroid/os/Parcel;)V

    .line 29
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/AddressFinderService/interfaces/AddressData;)I
    .locals 5
    .parameter "compareData"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, result:I
    invoke-virtual {p0}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 101
    const/4 v0, 0x1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 105
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    check-cast p1, Lcom/htc/AddressFinderService/interfaces/AddressData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/AddressFinderService/interfaces/AddressData;->compareTo(Lcom/htc/AddressFinderService/interfaces/AddressData;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLongitude:D

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mTime:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLongitude:D

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLatitude:D

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mAddress:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLanguage:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mAddress:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLanguage:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .parameter "lat"

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLatitude:D

    .line 38
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .parameter "lon"

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLongitude:D

    .line 46
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mTime:J

    .line 91
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 84
    iget-wide v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 85
    iget-object v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/htc/AddressFinderService/interfaces/AddressData;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return-void
.end method

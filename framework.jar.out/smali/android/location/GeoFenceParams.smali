.class public Landroid/location/GeoFenceParams;
.super Ljava/lang/Object;
.source "GeoFenceParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GeoFenceParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENTERING:I = 0x1

.field public static final LEAVING:I = 0x2


# instance fields
.field public final mExpiration:J

.field public final mIntent:Landroid/app/PendingIntent;

.field public final mLatitude:D

.field public final mLongitude:D

.field public final mRadius:F

.field public final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Landroid/location/GeoFenceParams$1;

    invoke-direct {v0}, Landroid/location/GeoFenceParams$1;-><init>()V

    sput-object v0, Landroid/location/GeoFenceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDFJLandroid/app/PendingIntent;)V
    .locals 10
    .parameter "lat"
    .parameter "lon"
    .parameter "r"
    .parameter "expire"
    .parameter "intent"

    .prologue
    .line 65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/location/GeoFenceParams;-><init>(IDDFJLandroid/app/PendingIntent;)V

    .line 66
    return-void
.end method

.method public constructor <init>(IDDFJLandroid/app/PendingIntent;)V
    .locals 0
    .parameter "uid"
    .parameter "lat"
    .parameter "lon"
    .parameter "r"
    .parameter "expire"
    .parameter "intent"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Landroid/location/GeoFenceParams;->mUid:I

    .line 71
    iput-wide p2, p0, Landroid/location/GeoFenceParams;->mLatitude:D

    .line 72
    iput-wide p4, p0, Landroid/location/GeoFenceParams;->mLongitude:D

    .line 73
    iput p6, p0, Landroid/location/GeoFenceParams;->mRadius:F

    .line 74
    iput-wide p7, p0, Landroid/location/GeoFenceParams;->mExpiration:J

    .line 75
    iput-object p9, p0, Landroid/location/GeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/location/GeoFenceParams;->mUid:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GeoFenceParams;->mLatitude:D

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GeoFenceParams;->mLongitude:D

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/location/GeoFenceParams;->mRadius:F

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GeoFenceParams;->mExpiration:J

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/location/GeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/location/GeoFenceParams$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/location/GeoFenceParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/GeoFenceParams;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/GeoFenceParams;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GeoFenceParams;->mRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mExpiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/GeoFenceParams;->mExpiration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public getCallerUid()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Landroid/location/GeoFenceParams;->mUid:I

    return v0
.end method

.method public getExpiration()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Landroid/location/GeoFenceParams;->mExpiration:J

    return-wide v0
.end method

.method public getIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/location/GeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "GeoFenceParams:\n\tmUid - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Landroid/location/GeoFenceParams;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "\n\tmLatitide - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-wide v1, p0, Landroid/location/GeoFenceParams;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "\n\tmLongitude - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-wide v1, p0, Landroid/location/GeoFenceParams;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "\n\tmRadius - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Landroid/location/GeoFenceParams;->mRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "\n\tmExpiration - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-wide v1, p0, Landroid/location/GeoFenceParams;->mExpiration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "\n\tmIntent - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Landroid/location/GeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 94
    iget v0, p0, Landroid/location/GeoFenceParams;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-wide v0, p0, Landroid/location/GeoFenceParams;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 96
    iget-wide v0, p0, Landroid/location/GeoFenceParams;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 97
    iget v0, p0, Landroid/location/GeoFenceParams;->mRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 98
    iget-wide v0, p0, Landroid/location/GeoFenceParams;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-object v0, p0, Landroid/location/GeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    return-void
.end method

.class public Lcom/htc/lockscreen/ntf/HtcLSNotification;
.super Ljava/lang/Object;
.source "HtcLSNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;,
        Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
    }
.end annotation


# static fields
.field public static final BUTTON_SIZE:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/ntf/HtcLSNotification;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_PREFIX:Ljava/lang/String; = "HtcLSNotification"


# instance fields
.field private mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

.field private mContent:Ljava/lang/String;

.field private mDescript:Ljava/lang/String;

.field private mDropPendingIntent:Landroid/app/PendingIntent;

.field private mFrom:Ljava/lang/String;

.field private mIcon:I

.field private mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

.field private mLocation:Ljava/lang/String;

.field private mPriority:I

.field private mRingPendingIntent:Landroid/app/PendingIntent;

.field private mSubTitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 45
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "when"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 29
    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    .line 42
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    invoke-direct {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    .line 48
    iput-wide p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .parameter "parcel"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v4, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 29
    iput v4, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 30
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 31
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    .line 32
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 33
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 34
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 35
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 36
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 40
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    .line 42
    new-instance v2, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    invoke-direct {v2}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;-><init>()V

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 68
    sget-object v2, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    .line 70
    invoke-static {p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    .line 71
    invoke-static {p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, exist:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v0, v3

    .line 76
    :goto_1
    if-eqz v0, :cond_0

    .line 77
    iget-object v5, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    sget-object v2, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aput-object v2, v5, v1

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 75
    goto :goto_1

    .line 80
    :cond_2
    return-void
.end method

.method private static PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "parcel"

    .prologue
    const/4 v0, 0x1

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, intnet:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 119
    .local v0, exist:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 120
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #intnet:Landroid/app/PendingIntent;
    check-cast v1, Landroid/app/PendingIntent;

    .line 122
    .restart local v1       #intnet:Landroid/app/PendingIntent;
    :cond_0
    return-object v1

    .line 118
    .end local v0           #exist:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-static {p0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-static {p0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-static {p0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "pkg"
    .parameter "iconId"

    .prologue
    .line 510
    if-gtz p2, :cond_1

    .line 511
    const/4 v0, 0x0

    .line 523
    :cond_0
    :goto_0
    return-object v0

    .line 513
    :cond_1
    const/4 v0, 0x0

    .line 515
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 516
    .local v2, pkgContext:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 520
    .end local v2           #pkgContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 521
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HtcLSNotification"

    const-string v4, "getIconFromPackage fail"

    invoke-static {v3, v4, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 1
    .parameter "in"
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 126
    if-eqz p0, :cond_0

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-interface {p0, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 497
    if-eqz p1, :cond_0

    .line 499
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 506
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 500
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 501
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .line 502
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 504
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public getButton(I)Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
    .locals 1
    .parameter "index"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDescript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    return-object v0
.end method

.method public getDropPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    invoke-virtual {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLargeIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 276
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    invoke-virtual {v1, p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->getLargeIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 277
    .local v0, btn:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public getLargeIconPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    invoke-virtual {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->getLargeIconPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLargeIconResId()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    invoke-virtual {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->getLargeIconResId()I

    move-result v0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    return v0
.end method

.method public getRingPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    return-wide v0
.end method

.method public setButton(Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;I)V
    .locals 1
    .parameter "button"
    .parameter "index"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aput-object p1, v0, p2

    .line 298
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDescript(Ljava/lang/String;)V
    .locals 1
    .parameter "descript"

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDropPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    .line 282
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1
    .parameter "from"

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 222
    iput p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    .line 223
    return-void
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 249
    return-void
.end method

.method public setLargeIcon(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->setLargeIcon(Ljava/lang/String;I)V

    .line 253
    return-void
.end method

.method public setLargeIconFromContact(J)V
    .locals 1
    .parameter "peopleId"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    invoke-virtual {v0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->setLargeIconFromContact(J)V

    .line 258
    return-void
.end method

.method public setLargeIconFromURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->setLargeIconFromURI(Landroid/net/Uri;)V

    .line 262
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 210
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 234
    iput p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    .line 235
    return-void
.end method

.method public setRingPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    .line 290
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public setWhen(J)V
    .locals 0
    .parameter "when"

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    .line 137
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 88
    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mPriority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mIcon:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDescript:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mFrom:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-wide v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mWhen:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mLargeIcon:Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;

    invoke-virtual {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 102
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mDropPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 103
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mRingPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification;->mButtons:[Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->writeToParcel(Landroid/os/Parcel;I)V

    .line 105
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 114
    :cond_1
    return-void
.end method

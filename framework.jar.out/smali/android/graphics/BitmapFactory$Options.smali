.class public Landroid/graphics/BitmapFactory$Options;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field public inBitmap:Landroid/graphics/Bitmap;

.field public inDensity:I

.field public inDither:Z

.field public inInputShareable:Z

.field public inJustDecodeBounds:Z

.field public inMutable:Z

.field public inNativeAlloc:Z

.field public inPreferQualityOverSpeed:Z

.field public inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field public inPurgeable:Z

.field public inSampleSize:I

.field public inScaled:Z

.field public inScreenDensity:I

.field public inTargetDensity:I

.field public inTempStorage:[B

.field private isPreloading:Z

.field private isRestorable:Z

.field public mCancel:Z

.field public outHeight:I

.field public outMimeType:Ljava/lang/String;

.field public outWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 262
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->isPreloading:Z

    .line 268
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->isRestorable:Z

    .line 52
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/BitmapFactory$Options;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->isRestorable:Z

    return v0
.end method

.method static synthetic access$002(Landroid/graphics/BitmapFactory$Options;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/graphics/BitmapFactory$Options;->isRestorable:Z

    return p1
.end method

.method static synthetic access$102(Landroid/graphics/BitmapFactory$Options;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/graphics/BitmapFactory$Options;->isPreloading:Z

    return p1
.end method

.method private native requestCancel()V
.end method


# virtual methods
.method public requestCancelDecode()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 317
    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;->requestCancel()V

    .line 318
    return-void
.end method

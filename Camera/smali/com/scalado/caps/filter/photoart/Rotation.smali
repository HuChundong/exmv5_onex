.class public final Lcom/scalado/caps/filter/photoart/Rotation;
.super Lcom/scalado/caps/Filter;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;
    }
.end annotation


# instance fields
.field private angle:F

.field private scaleMode:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Rotation;->angle:F

    sget-object v0, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->FIT_INSIDE:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Rotation;->scaleMode:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Rotation;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;FI)V
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Rotation;->angle:F

    return v0
.end method

.method public getScaleMode()Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Rotation;->scaleMode:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->clone()Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    move-result-object v0

    return-object v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Rotation;->angle:F

    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Rotation;->scaleMode:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    iget v1, v1, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->value:I

    invoke-direct {p0, p1, v0, v1}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeSet(Lcom/scalado/caps/Decoder;FI)V

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public set(FLcom/scalado/caps/filter/photoart/Rotation$ScaleMode;)V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x43b4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument to set out of legal range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    iget v1, p2, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->value:I

    invoke-direct {p0, v0, p1, v1}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeSet(Lcom/scalado/caps/Decoder;FI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/photoart/Rotation;->angle:F

    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/Rotation;->scaleMode:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    return-void
.end method

.class public final Lcom/scalado/caps/filter/photoart/Spotlight;
.super Lcom/scalado/caps/Filter;
.source "Spotlight.java"


# instance fields
.field private position:Lcom/scalado/base/Point;

.field private radius:I

.field private transitionSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/photoart/Spotlight;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Point;IF)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    if-ltz p3, :cond_0

    const v0, 0xfbff

    if-gt p3, v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Spotlight;->setHasActiveFilter(Z)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument to set out of legal range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/scalado/caps/filter/photoart/Spotlight;->nativeCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Point;IF)V

    iput-boolean v2, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->position:Lcom/scalado/base/Point;

    iput p3, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->radius:I

    iput p4, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->transitionSize:F

    invoke-virtual {p0, v2}, Lcom/scalado/caps/filter/photoart/Spotlight;->setHasActiveFilter(Z)V

    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Point;IF)V
.end method

.method private native nativeEnd()V
.end method

.method private native nativeSet(Lcom/scalado/base/Point;IF)V
.end method


# virtual methods
.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->radius:I

    return v0
.end method

.method public getThreshold()Lcom/scalado/base/Point;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->position:Lcom/scalado/base/Point;

    invoke-virtual {v0}, Lcom/scalado/base/Point;->clone()Lcom/scalado/base/Point;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionSize()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->transitionSize:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->position:Lcom/scalado/base/Point;

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->radius:I

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->transitionSize:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/scalado/caps/filter/photoart/Spotlight;->nativeCreate(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Point;IF)V

    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Spotlight;->nativeEnd()V

    return-void
.end method

.method protected internalCommit()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Spotlight;->nativeEnd()V

    return-void
.end method

.method public set(Lcom/scalado/base/Point;IF)V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    const v0, 0xfbff

    if-gt p2, v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f80

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument to set out of legal range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/filter/photoart/Spotlight;->nativeSet(Lcom/scalado/base/Point;IF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->position:Lcom/scalado/base/Point;

    iput p2, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->radius:I

    iput p3, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->transitionSize:F

    return-void
.end method

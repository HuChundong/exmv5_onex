.class public final Lcom/scalado/caps/filter/clearshot/LocalBoost;
.super Lcom/scalado/caps/Filter;
.source "LocalBoost.java"


# instance fields
.field private autoLevel:I

.field private darkContrast:F

.field private gamma:F

.field private inAutomaticMode:Z

.field private lightContrast:F

.field private sensitivityLevel:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    const v0, 0x3ff33333

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->gamma:F

    const/high16 v0, 0x3f20

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->darkContrast:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->lightContrast:F

    const/high16 v0, 0x4380

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->sensitivityLevel:F

    const/16 v0, 0x8

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->autoLevel:I

    iput-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->inAutomaticMode:Z

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSetAuto(Lcom/scalado/caps/Decoder;I)V
.end method

.method private native nativeSetManual(Lcom/scalado/caps/Decoder;FFFF)V
.end method


# virtual methods
.method public getAuto()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->autoLevel:I

    return v0
.end method

.method public getDarkContrast()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->darkContrast:F

    return v0
.end method

.method public getGamma()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->gamma:F

    return v0
.end method

.method public getLightContrast()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->lightContrast:F

    return v0
.end method

.method public getSensitivityLevel()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->sensitivityLevel:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->inAutomaticMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->autoLevel:I

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->nativeSetAuto(Lcom/scalado/caps/Decoder;I)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void

    :cond_0
    iget v2, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->gamma:F

    iget v3, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->darkContrast:F

    iget v4, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->lightContrast:F

    iget v5, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->sensitivityLevel:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->nativeSetManual(Lcom/scalado/caps/Decoder;FFFF)V

    goto :goto_0
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public isAuto()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->inAutomaticMode:Z

    return v0
.end method

.method public setAuto(I)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xe

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->nativeSetAuto(Lcom/scalado/caps/Decoder;I)V

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->autoLevel:I

    iput-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->inAutomaticMode:Z

    return-void
.end method

.method public setManual(FFFF)V
    .locals 6

    const/high16 v2, 0x3f80

    const/high16 v1, 0x3f00

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const v0, 0x3dcccccd

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x40a0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_1

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    cmpg-float v0, p3, v1

    if-ltz v0, :cond_1

    cmpl-float v0, p3, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x4380

    cmpl-float v0, p4, v0

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/clearshot/LocalBoost;->nativeSetManual(Lcom/scalado/caps/Decoder;FFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->gamma:F

    iput p2, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->darkContrast:F

    iput p3, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->lightContrast:F

    iput p4, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->sensitivityLevel:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/LocalBoost;->inAutomaticMode:Z

    return-void
.end method

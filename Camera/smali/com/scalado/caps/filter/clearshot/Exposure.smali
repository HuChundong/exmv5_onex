.class public final Lcom/scalado/caps/filter/clearshot/Exposure;
.super Lcom/scalado/caps/Filter;
.source "Exposure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;
    }
.end annotation


# instance fields
.field private gain:F

.field private mode:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->gain:F

    sget-object v0, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->GAMMA:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    iput-object v0, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->mode:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/clearshot/Exposure;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSetGain(Lcom/scalado/caps/Decoder;F)V
.end method

.method private native nativeSetMode(Lcom/scalado/caps/Decoder;I)V
.end method


# virtual methods
.method public get()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->gain:F

    return v0
.end method

.method public getExposureMode()Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->mode:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    invoke-virtual {v0}, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->clone()Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    move-result-object v0

    return-object v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->gain:F

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeSetGain(Lcom/scalado/caps/Decoder;F)V

    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->mode:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    iget v0, v0, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->value:I

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeSetMode(Lcom/scalado/caps/Decoder;I)V

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public set(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/high16 v0, -0x4080

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeSetGain(Lcom/scalado/caps/Decoder;F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->gain:F

    return-void
.end method

.method public setExposureMode(Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;)V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    iget v1, p1, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->value:I

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeSetMode(Lcom/scalado/caps/Decoder;I)V

    iput-object p1, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->mode:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    :cond_1
    return-void
.end method

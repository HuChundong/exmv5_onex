.class public final Lcom/scalado/caps/filter/photoart/Lomo;
.super Lcom/scalado/caps/Filter;
.source "Lomo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/photoart/Lomo$Style;
    }
.end annotation


# static fields
.field public static final MAX_VIGNETTING:I = 0x2

.field public static final MIN_VIGNETTING:I


# instance fields
.field private brightness:F

.field private saturation:F

.field private style:Lcom/scalado/caps/filter/photoart/Lomo$Style;

.field private vignetting:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/photoart/Lomo;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/high16 v1, 0x3f00

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iput v1, p0, Lcom/scalado/caps/filter/photoart/Lomo;->brightness:F

    iput v1, p0, Lcom/scalado/caps/filter/photoart/Lomo;->saturation:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Lomo;->vignetting:I

    sget-object v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;->NEUTRAL:Lcom/scalado/caps/filter/photoart/Lomo$Style;

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Lomo;->style:Lcom/scalado/caps/filter/photoart/Lomo$Style;

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Lomo;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Lomo;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;FFII)V
.end method


# virtual methods
.method public getBrightness()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Lomo;->brightness:F

    return v0
.end method

.method public getSaturation()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Lomo;->saturation:F

    return v0
.end method

.method public getStyle()Lcom/scalado/caps/filter/photoart/Lomo$Style;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Lomo;->style:Lcom/scalado/caps/filter/photoart/Lomo$Style;

    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Lomo$Style;->clone()Lcom/scalado/caps/filter/photoart/Lomo$Style;

    move-result-object v0

    return-object v0
.end method

.method public getVignetting()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Lomo;->vignetting:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Lomo;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Lomo;->brightness:F

    iget v3, p0, Lcom/scalado/caps/filter/photoart/Lomo;->saturation:F

    iget v4, p0, Lcom/scalado/caps/filter/photoart/Lomo;->vignetting:I

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Lomo;->style:Lcom/scalado/caps/filter/photoart/Lomo$Style;

    iget v5, v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;->value:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/photoart/Lomo;->nativeSet(Lcom/scalado/caps/Decoder;FFII)V

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Lomo;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Lomo;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public set(FFILcom/scalado/caps/filter/photoart/Lomo$Style;)V
    .locals 6

    const-wide/high16 v4, 0x3ff0

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    float-to-double v0, p1

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    float-to-double v0, p1

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_1

    float-to-double v0, p2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    float-to-double v0, p2

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_1

    if-ltz p3, :cond_1

    const/4 v0, 0x2

    if-le p3, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal parameter to Lomo set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    iget v5, p4, Lcom/scalado/caps/filter/photoart/Lomo$Style;->value:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/scalado/caps/filter/photoart/Lomo;->nativeSet(Lcom/scalado/caps/Decoder;FFII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/photoart/Lomo;->brightness:F

    iput p2, p0, Lcom/scalado/caps/filter/photoart/Lomo;->saturation:F

    iput p3, p0, Lcom/scalado/caps/filter/photoart/Lomo;->vignetting:I

    iput-object p4, p0, Lcom/scalado/caps/filter/photoart/Lomo;->style:Lcom/scalado/caps/filter/photoart/Lomo$Style;

    return-void
.end method

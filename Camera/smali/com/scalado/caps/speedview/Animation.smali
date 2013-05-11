.class public Lcom/scalado/caps/speedview/Animation;
.super Lcom/scalado/jni/JniPeer;
.source "Animation.java"


# instance fields
.field private mFrameIndex:F

.field private mZoom:F

.field private screen:Lcom/scalado/caps/screen/Screen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/speedview/Animation;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/screen/Screen;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    iput v0, p0, Lcom/scalado/caps/speedview/Animation;->mZoom:F

    iput v0, p0, Lcom/scalado/caps/speedview/Animation;->mFrameIndex:F

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/scalado/caps/speedview/Animation;->screen:Lcom/scalado/caps/screen/Screen;

    iget-object v0, p0, Lcom/scalado/caps/speedview/Animation;->screen:Lcom/scalado/caps/screen/Screen;

    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/Animation;->nativeCreate(Lcom/scalado/caps/screen/Screen;)V

    return-void
.end method

.method private native nativeBeginPan(Lcom/scalado/base/Point;)V
.end method

.method private native nativeBeginZoom(FLcom/scalado/base/Point;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/caps/screen/Screen;)V
.end method

.method private native nativeEndAnimation()V
.end method

.method private native nativeExtendZoom(F)V
.end method

.method private native nativeGetEndPoint(Lcom/scalado/base/Point;)V
.end method

.method private native nativeGetFrameIndex(F)V
.end method

.method private native nativeGetZoomPoint(FLcom/scalado/base/Point;)V
.end method

.method private native nativeUpdateScreen(FF)V
.end method


# virtual methods
.method public beginPan(Lcom/scalado/base/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Animation;->nativeBeginPan(Lcom/scalado/base/Point;)V

    return-void
.end method

.method public beginZoom(FLcom/scalado/base/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/Animation;->nativeBeginZoom(FLcom/scalado/base/Point;)V

    return-void
.end method

.method public endAnimation()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/scalado/caps/speedview/Animation;->nativeEndAnimation()V

    return-void
.end method

.method public extendZoom(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Animation;->nativeExtendZoom(F)V

    return-void
.end method

.method public getEndPan()Lcom/scalado/base/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/Animation;->nativeGetEndPoint(Lcom/scalado/base/Point;)V

    return-object v0
.end method

.method public getEndZoom()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, v0}, Lcom/scalado/caps/speedview/Animation;->nativeGetEndPoint(Lcom/scalado/base/Point;)V

    iget v1, p0, Lcom/scalado/caps/speedview/Animation;->mZoom:F

    return v1
.end method

.method public getFrameIndex(F)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Animation;->nativeGetFrameIndex(F)V

    iget v0, p0, Lcom/scalado/caps/speedview/Animation;->mFrameIndex:F

    return v0
.end method

.method public getPan(F)Lcom/scalado/base/Point;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/speedview/Animation;->nativeGetZoomPoint(FLcom/scalado/base/Point;)V

    return-object v0
.end method

.method public getZoom(F)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/scalado/base/Point;

    invoke-direct {v0}, Lcom/scalado/base/Point;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/speedview/Animation;->nativeGetZoomPoint(FLcom/scalado/base/Point;)V

    iget v1, p0, Lcom/scalado/caps/speedview/Animation;->mZoom:F

    return v1
.end method

.method public updateScreen(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/Animation;->nativeUpdateScreen(FF)V

    return-void
.end method

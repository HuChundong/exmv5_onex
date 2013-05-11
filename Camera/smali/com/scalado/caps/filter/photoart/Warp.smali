.class public final Lcom/scalado/caps/filter/photoart/Warp;
.super Lcom/scalado/caps/Filter;
.source "Warp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;
    }
.end annotation


# instance fields
.field activeRegions:[Lcom/scalado/base/Rect;

.field strength:F

.field warpEffect:Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;

.field warptableBuffer:Lcom/scalado/base/Buffer;

.field warptableFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/filter/photoart/Warp;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->activeRegions:[Lcom/scalado/base/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->strength:F

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Warp;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeApplyWarpFromBuffer(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Buffer;)V
.end method

.method private native nativeApplyWarpFromFile(Lcom/scalado/caps/Decoder;Ljava/lang/String;)V
.end method

.method private native nativeBeginAndSetWarpIndex(Lcom/scalado/caps/Decoder;[Lcom/scalado/base/Rect;IF)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEndWarpIndex(Lcom/scalado/caps/Decoder;)V
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarpFromFile(Lcom/scalado/caps/Decoder;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarpFromBuffer(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Buffer;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->activeRegions:[Lcom/scalado/base/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->activeRegions:[Lcom/scalado/base/Rect;

    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Warp;->warpEffect:Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;

    #getter for: Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;->value:I
    invoke-static {v1}, Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;->access$000(Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;)I

    move-result v1

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Warp;->strength:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/scalado/caps/filter/photoart/Warp;->nativeBeginAndSetWarpIndex(Lcom/scalado/caps/Decoder;[Lcom/scalado/base/Rect;IF)V

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Warp;->nativeEndWarpIndex(Lcom/scalado/caps/Decoder;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Neither filename, buffer nor regions set in Warp filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->activeRegions:[Lcom/scalado/base/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Warp;->nativeEndWarpIndex(Lcom/scalado/caps/Decoder;)V

    :cond_0
    return-void
.end method

.method public set(Lcom/scalado/stream/BufferStream;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Warp;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarpFromBuffer(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Buffer;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    invoke-virtual {p1}, Lcom/scalado/stream/BufferStream;->getBuffer()Lcom/scalado/base/Buffer;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    return-void
.end method

.method public set(Lcom/scalado/stream/FileStream;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Warp;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/photoart/Warp;->nativeApplyWarpFromFile(Lcom/scalado/caps/Decoder;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    invoke-virtual {p1}, Lcom/scalado/stream/FileStream;->getFilename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    return-void
.end method

.method public set([Lcom/scalado/base/Rect;Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;F)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    #getter for: Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;->value:I
    invoke-static {p2}, Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;->access$000(Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;)I

    move-result v1

    invoke-direct {p0, v0, p1, v1, p3}, Lcom/scalado/caps/filter/photoart/Warp;->nativeBeginAndSetWarpIndex(Lcom/scalado/caps/Decoder;[Lcom/scalado/base/Rect;IF)V

    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Warp;->activeRegions:[Lcom/scalado/base/Rect;

    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/Warp;->warpEffect:Lcom/scalado/caps/filter/photoart/Warp$FaceWarpEffect;

    iput p3, p0, Lcom/scalado/caps/filter/photoart/Warp;->strength:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object v2, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableBuffer:Lcom/scalado/base/Buffer;

    iput-object v2, p0, Lcom/scalado/caps/filter/photoart/Warp;->warptableFilename:Ljava/lang/String;

    return-void
.end method

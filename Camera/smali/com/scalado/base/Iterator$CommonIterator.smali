.class public Lcom/scalado/base/Iterator$CommonIterator;
.super Lcom/scalado/jni/JniPeer;
.source "Iterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/base/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CommonIterator"
.end annotation


# instance fields
.field private mIsDone:Z

.field private mIterationCount:I

.field private mTotalIterations:I

.field final synthetic this$0:Lcom/scalado/base/Iterator;


# direct methods
.method public constructor <init>(Lcom/scalado/base/Iterator;Lcom/scalado/base/Iterator;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/scalado/base/Iterator$CommonIterator;->this$0:Lcom/scalado/base/Iterator;

    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIsDone:Z

    iput v1, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIterationCount:I

    iput v1, p0, Lcom/scalado/base/Iterator$CommonIterator;->mTotalIterations:I

    invoke-direct {p0, p2}, Lcom/scalado/base/Iterator$CommonIterator;->nativeCreate(Lcom/scalado/base/Iterator;)V

    invoke-direct {p0}, Lcom/scalado/base/Iterator$CommonIterator;->nativeGetTotalIterations()V

    return-void
.end method

.method private native nativeAbort()V
.end method

.method private native nativeBeginRender(Lcom/scalado/base/Image;Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeCreate(Lcom/scalado/base/Iterator;)V
.end method

.method private native nativeGetIterationCount()V
.end method

.method private native nativeGetTotalIterations()V
.end method

.method private native nativeStep()V
.end method


# virtual methods
.method public abort()V
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIsDone:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/scalado/base/Iterator$CommonIterator;->nativeAbort()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIsDone:Z

    :cond_0
    return-void
.end method

.method public done()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIsDone:Z

    return v0
.end method

.method public step()F
    .locals 4

    const/high16 v1, 0x3f80

    iget-boolean v2, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIsDone:Z

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/scalado/base/Iterator$CommonIterator;->nativeStep()V

    iget-boolean v2, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIsDone:Z

    if-eqz v2, :cond_2

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/scalado/base/Iterator$CommonIterator;->mTotalIterations:I

    if-gtz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/scalado/base/Iterator$CommonIterator;->nativeGetIterationCount()V

    iget v2, p0, Lcom/scalado/base/Iterator$CommonIterator;->mIterationCount:I

    int-to-float v2, v2

    iget v3, p0, Lcom/scalado/base/Iterator$CommonIterator;->mTotalIterations:I

    int-to-float v3, v3

    div-float v0, v2, v3

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

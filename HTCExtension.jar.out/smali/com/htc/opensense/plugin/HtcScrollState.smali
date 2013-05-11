.class public Lcom/htc/opensense/plugin/HtcScrollState;
.super Ljava/lang/Object;
.source "HtcScrollState.java"


# static fields
.field public static final SCROLL_STATE_FLING:I = 0x2

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_TOUCH_SCROLL:I = 0x1


# instance fields
.field private mScrollState:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/opensense/plugin/HtcScrollState;-><init>(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "state"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/htc/opensense/plugin/HtcScrollState;->mScrollState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/plugin/HtcScrollState;->mScrollState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/opensense/plugin/HtcScrollState;->mScrollState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/opensense/plugin/HtcScrollState;->mScrollState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 45
    return-void
.end method

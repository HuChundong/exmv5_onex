.class public Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
.super Ljava/lang/Object;
.source "RenderThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/RenderThreadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderThreadMessage"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static mPool:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

.field private static mPoolSize:I

.field private static mPoolSync:Ljava/lang/Object;


# instance fields
.field private next:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

.field public obj:Ljava/lang/Object;

.field r:Ljava/lang/Runnable;

.field target:Lcom/htc/sunnyCore/RenderThreadHandler;

.field public what:I

.field when:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPoolSync:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPoolSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearForRecycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->what:I

    .line 66
    iput-object v2, p0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->when:J

    .line 68
    iput-object v2, p0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    .line 69
    return-void
.end method

.method public static obtain()Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    .locals 3

    .prologue
    .line 40
    sget-object v2, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 41
    :try_start_0
    sget-object v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPool:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    if-eqz v1, :cond_0

    .line 42
    sget-object v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPool:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    .line 43
    .local v0, m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    iget-object v1, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->next:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    sput-object v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPool:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    .line 44
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->next:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    .line 45
    sget v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPoolSize:I

    .line 46
    monitor-exit v2

    .line 49
    .end local v0           #m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    :goto_0
    return-object v0

    .line 48
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    new-instance v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    invoke-direct {v0}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;-><init>()V

    goto :goto_0

    .line 48
    .restart local v0       #m:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 53
    sget-object v1, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    invoke-direct {p0}, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->clearForRecycle()V

    .line 56
    sget v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 57
    sget-object v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPool:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    iput-object v0, p0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->next:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    .line 58
    sput-object p0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPool:Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;

    .line 59
    sget v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/sunnyCore/RenderThreadHandler$RenderThreadMessage;->mPoolSize:I

    .line 61
    :cond_0
    monitor-exit v1

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

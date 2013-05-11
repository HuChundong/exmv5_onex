.class public Lcom/scalado/jni/JniPeer;
.super Ljava/lang/Object;
.source "JniPeer.java"


# instance fields
.field private mNativePeer:J

.field private mObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/jni/JniPeer;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/scalado/jni/JniPeer;->mNativePeer:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/jni/JniPeer;->mObjectCount:I

    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativePrintAllObjects()I
.end method

.method private native nativeRelease()V
.end method

.method public static printAllObjects()I
    .locals 2

    const-class v1, Lcom/scalado/jni/GlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/scalado/jni/JniPeer;->nativePrintAllObjects()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;->nativeRelease()V

    return-void
.end method

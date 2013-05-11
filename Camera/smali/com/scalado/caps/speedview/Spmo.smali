.class Lcom/scalado/caps/speedview/Spmo;
.super Lcom/scalado/jni/JniPeer;
.source "Spmo.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/speedview/Spmo;->nativeClassInit()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    invoke-direct {p0}, Lcom/scalado/caps/speedview/Spmo;->nativeCreate()V

    return-void
.end method

.method private native nativeAddToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCopyToStream(Lcom/scalado/stream/Stream;)V
.end method

.method private native nativeCreate()V
.end method


# virtual methods
.method addToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/speedview/Spmo;->nativeAddToStream(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method copyToStream(Lcom/scalado/stream/Stream;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/caps/speedview/Spmo;->nativeCopyToStream(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.class public Lcom/scalado/caps/stereo/Stereo;
.super Lcom/scalado/jni/JniPeer;
.source "Stereo.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/stereo/Stereo;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    invoke-direct {p0}, Lcom/scalado/caps/stereo/Stereo;->nativeCreate()V

    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate()V
.end method

.method private native nativeFinalizeJps(Lcom/scalado/stream/Stream;)V
.end method

.method private native nativeSetLeftEyeSession(Lcom/scalado/caps/Session;)V
.end method

.method private native nativeSetRightEyeSession(Lcom/scalado/caps/Session;)V
.end method


# virtual methods
.method public finalizeJps(Lcom/scalado/stream/Stream;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/stereo/Stereo;->nativeFinalizeJps(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method public setLeftEyeSession(Lcom/scalado/caps/Session;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/stereo/Stereo;->nativeSetLeftEyeSession(Lcom/scalado/caps/Session;)V

    return-void
.end method

.method public setRightEyeSession(Lcom/scalado/caps/Session;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/caps/stereo/Stereo;->nativeSetRightEyeSession(Lcom/scalado/caps/Session;)V

    return-void
.end method

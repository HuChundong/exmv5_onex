.class public final Lcom/scalado/caps/CAPS;
.super Ljava/lang/Object;
.source "CAPS.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    invoke-static {}, Lcom/scalado/caps/CAPS;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/scalado/caps/CAPS;->nativeGetCapsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeGetCapsVersion()Ljava/lang/String;
.end method

.class public final Lcom/android/camera/io/NativeBuffer;
.super Ljava/lang/Object;
.source "NativeBuffer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/android/camera/CameraNativeLibrary;->initialize()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synchronized native declared-synchronized add([B)J
.end method

.method public static synchronized native declared-synchronized clear()V
.end method

.method public static synchronized native declared-synchronized get(JZ)[B
.end method

.method public static synchronized native declared-synchronized getSize()J
.end method

.method public static synchronized native declared-synchronized remove(J)V
.end method

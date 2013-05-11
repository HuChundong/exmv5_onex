.class public final Lcom/android/camera/CameraToken;
.super Ljava/lang/Object;
.source "CameraToken.java"


# static fields
.field private static volatile m_CurrentToken:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getToken()Ljava/lang/Object;
    .locals 2

    const-class v1, Lcom/android/camera/CameraToken;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/CameraToken;->m_CurrentToken:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/CameraToken;->m_CurrentToken:Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/CameraToken;->m_CurrentToken:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseToken(Ljava/lang/Object;)V
    .locals 2

    const-class v1, Lcom/android/camera/CameraToken;

    monitor-enter v1

    if-nez p0, :cond_1

    :try_start_0
    const-string v0, "token"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/camera/CameraToken;->m_CurrentToken:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/CameraToken;->m_CurrentToken:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

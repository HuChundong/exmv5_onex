.class public final Lcom/android/camera/CameraNativeLibrary;
.super Ljava/lang/Object;
.source "CameraNativeLibrary.java"


# static fields
.field private static m_IsLibraryLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized initialize()V
    .locals 3

    const-class v1, Lcom/android/camera/CameraNativeLibrary;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/camera/CameraNativeLibrary;->m_IsLibraryLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "htccamera"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-static {v0, v2}, Lcom/android/camera/CameraNativeLibrary;->initialize(II)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/CameraNativeLibrary;->m_IsLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native initialize(II)Z
.end method

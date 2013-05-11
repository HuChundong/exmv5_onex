.class public Lcom/htc/wrap/android/os/HtcWrapProcess;
.super Landroid/os/Process;
.source "HtcWrapProcess.java"


# static fields
.field public static final SMARTCARD_UID:I = 0x3fb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SMARTCARD_UID2:I = 0x2703

.field public static final WIFI_UID:I = 0x3f2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/os/Process;-><init>()V

    return-void
.end method

.method public static getGfxMem(I)J
    .locals 2
    .parameter "pid"

    .prologue
    .line 33
    invoke-static {p0}, Landroid/os/Process;->getGfxMem(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGfxVss(I)J
    .locals 2
    .parameter "pid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    invoke-static {p0}, Landroid/os/Process;->getGfxMem(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final releaseFileMapMemoryW()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Landroid/os/Process;->releaseFileMapMemory()V

    .line 41
    return-void
.end method

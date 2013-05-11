.class public Lcom/htc/server/SystemCrashChecker;
.super Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
.source "SystemCrashChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/SystemCrashChecker$1;,
        Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;,
        Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;
    }
.end annotation


# instance fields
.field private final mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;-><init>()V

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    iput-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .line 25
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    const/4 v1, 0x0

    new-instance v2, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;

    invoke-direct {v2, p0, v3}, Lcom/htc/server/SystemCrashChecker$NativeCrashCheckerInner;-><init>(Lcom/htc/server/SystemCrashChecker;Lcom/htc/server/SystemCrashChecker$1;)V

    aput-object v2, v0, v1

    .line 26
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    const/4 v1, 0x1

    new-instance v2, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;

    invoke-direct {v2, p0, v3}, Lcom/htc/server/SystemCrashChecker$SystemCrashCheckerInner;-><init>(Lcom/htc/server/SystemCrashChecker;Lcom/htc/server/SystemCrashChecker$1;)V

    aput-object v2, v0, v1

    .line 27
    return-void
.end method


# virtual methods
.method public onFinishBooting()V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v0, arr$:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 38
    .local v1, checker:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    invoke-virtual {v1}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onFinishBooting()V

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    .end local v1           #checker:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :cond_0
    return-void
.end method

.method public onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 4
    .parameter "service"
    .parameter "context"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/server/SystemCrashChecker;->mCheckers:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;

    .local v0, arr$:[Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 32
    .local v1, checker:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    invoke-virtual {v1, p1, p2}, Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;->onMain(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    .end local v1           #checker:Lcom/htc/server/callbacks/ActivityManagerServiceCallbacks;
    :cond_0
    return-void
.end method

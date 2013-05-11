.class public final Lcom/htc/server/gesture/GestureService;
.super Lcom/htc/service/IGestureService$Stub;
.source "GestureService.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "GestureService"


# instance fields
.field private final GESTURE_SETTING_STRING:Ljava/lang/String;

.field private final MAX_FILTER_OUT_LIST_LENGTH:I

.field final mContext:Landroid/content/Context;

.field private mCurrentFocusedApplication:Ljava/lang/String;

.field private mFilterOutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

.field private mHasInputFilter:Z

.field private mIsGestureEnabled:Z

.field final mLock:Ljava/lang/Object;

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/service/IGestureService$Stub;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/server/gesture/GestureService;->mLock:Ljava/lang/Object;

    .line 29
    const-string v0, "htc_gestures_enabled"

    iput-object v0, p0, Lcom/htc/server/gesture/GestureService;->GESTURE_SETTING_STRING:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/server/gesture/GestureService;->mFilterOutList:Ljava/util/ArrayList;

    .line 108
    const/16 v0, 0x100

    iput v0, p0, Lcom/htc/server/gesture/GestureService;->MAX_FILTER_OUT_LIST_LENGTH:I

    .line 35
    iput-object p1, p0, Lcom/htc/server/gesture/GestureService;->mContext:Landroid/content/Context;

    .line 36
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/htc/server/gesture/GestureService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 39
    invoke-direct {p0}, Lcom/htc/server/gesture/GestureService;->registerBootCompletedBroadcastReceiver()V

    .line 40
    invoke-direct {p0}, Lcom/htc/server/gesture/GestureService;->registerSettingsContentObservers()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/gesture/GestureService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/htc/server/gesture/GestureService;->handleGestureEnabledSettingChangedLocked()V

    return-void
.end method

.method private handleGestureEnabledSettingChangedLocked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "htc_gestures_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/server/gesture/GestureService;->mIsGestureEnabled:Z

    .line 87
    const-string v0, "GestureService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGestureEnabledSettingChangedLocked: mIsGestureEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/server/gesture/GestureService;->mIsGestureEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-boolean v0, p0, Lcom/htc/server/gesture/GestureService;->mIsGestureEnabled:Z

    if-eqz v0, :cond_3

    .line 91
    iget-boolean v0, p0, Lcom/htc/server/gesture/GestureService;->mHasInputFilter:Z

    if-nez v0, :cond_1

    .line 92
    iput-boolean v1, p0, Lcom/htc/server/gesture/GestureService;->mHasInputFilter:Z

    .line 93
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/htc/server/gesture/GestureInputFilter;

    iget-object v1, p0, Lcom/htc/server/gesture/GestureService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/server/gesture/GestureInputFilter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/gesture/GestureService;->mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/htc/server/gesture/GestureService;->mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setGestureInputFilter(Lcom/android/server/input/InputFilter;)V

    .line 104
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 82
    goto :goto_0

    .line 99
    :cond_3
    iget-boolean v0, p0, Lcom/htc/server/gesture/GestureService;->mHasInputFilter:Z

    if-eqz v0, :cond_1

    .line 100
    iput-boolean v2, p0, Lcom/htc/server/gesture/GestureService;->mHasInputFilter:Z

    .line 101
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setGestureInputFilter(Lcom/android/server/input/InputFilter;)V

    goto :goto_1
.end method

.method private registerBootCompletedBroadcastReceiver()V
    .locals 3

    .prologue
    .line 44
    new-instance v1, Lcom/htc/server/gesture/GestureService$1;

    invoke-direct {v1, p0}, Lcom/htc/server/gesture/GestureService$1;-><init>(Lcom/htc/server/gesture/GestureService;)V

    .line 57
    .local v1, receiver:Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, bootFiler:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/htc/server/gesture/GestureService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method private registerSettingsContentObservers()V
    .locals 5

    .prologue
    .line 62
    iget-object v2, p0, Lcom/htc/server/gesture/GestureService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v2, "htc_gestures_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 67
    .local v1, gestureEnabledUri:Landroid/net/Uri;
    const/4 v2, 0x0

    new-instance v3, Lcom/htc/server/gesture/GestureService$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/htc/server/gesture/GestureService$2;-><init>(Lcom/htc/server/gesture/GestureService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    return-void
.end method


# virtual methods
.method public checkHtcGestureFilterOutList(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    iput-object p1, p0, Lcom/htc/server/gesture/GestureService;->mCurrentFocusedApplication:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lcom/htc/server/gesture/GestureService;->mFilterOutList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 138
    iget-object v2, p0, Lcom/htc/server/gesture/GestureService;->mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/htc/server/gesture/GestureService;->mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

    invoke-virtual {v2, v1}, Lcom/htc/server/gesture/GestureInputFilter;->setGestureEnable(Z)V

    .line 140
    const-string v1, "GestureService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter out HtcGesture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/htc/server/gesture/GestureService;->mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/htc/server/gesture/GestureService;->mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

    invoke-virtual {v2, v0}, Lcom/htc/server/gesture/GestureInputFilter;->setGestureEnable(Z)V

    :cond_2
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method public registerHtcGestureFilterOutList(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mFilterOutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 111
    const-string v0, "GestureService"

    const-string v1, "registerHtcGestureFilterOutList failed caused by filter out list too long: 256"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_0
    return-void

    .line 115
    :cond_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/server/gesture/GestureService;->mFilterOutList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mFilterOutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mCurrentFocusedApplication:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/server/gesture/GestureInputFilter;->setGestureEnable(Z)V

    .line 122
    :cond_2
    const-string v0, "GestureService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerHtcGestureFilterOutList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterHtcGestureFilterOutList(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mFilterOutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mCurrentFocusedApplication:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/htc/server/gesture/GestureService;->mGestureInputFilter:Lcom/htc/server/gesture/GestureInputFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/server/gesture/GestureInputFilter;->setGestureEnable(Z)V

    .line 130
    :cond_0
    const-string v0, "GestureService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterHtcGestureFilterOutList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

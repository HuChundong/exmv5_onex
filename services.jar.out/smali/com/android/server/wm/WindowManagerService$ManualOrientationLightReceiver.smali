.class final Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ManualOrientationLightReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 11503
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11503
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method private isValidOrientation(I)Z
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 11533
    const/4 v0, 0x0

    .line 11534
    .local v0, bRet:Z
    packed-switch p1, :pswitch_data_0

    .line 11541
    :goto_0
    return v0

    .line 11539
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 11534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 11506
    const-string v3, "package_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11507
    .local v2, strPackage:Ljava/lang/String;
    const-string v3, "orientation"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 11508
    .local v1, nOrientation:I
    const-string v3, "manual"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 11511
    .local v0, bManual:Z
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerService$ManualOrientationLightReceiver;->isValidOrientation(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 11530
    :cond_0
    :goto_0
    return-void

    .line 11516
    :cond_1
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ManualOrientationLightReceiver<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "><"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "><"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

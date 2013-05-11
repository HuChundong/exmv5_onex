.class public Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;
.super Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
.source "HtcKeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcKeyEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeKeyGoogleSearch"
.end annotation


# instance fields
.field private mOtherKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;-><init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->mOtherKeyMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected checkConditionBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x0

    .line 387
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->mOtherKeyMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    #getter for: Lcom/android/internal/policy/impl/HtcKeyEventHandler;->mUtils:Lcom/android/internal/policy/impl/HtcPolicyUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$100(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)Lcom/android/internal/policy/impl/HtcPolicyUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/impl/HtcPolicyUtils;->phone:Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/HtcPolicyUtils$PhoneUtil;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 395
    :cond_0
    return v0
.end method

.method protected checkConditionBeforeQueueing(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyEvent"

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->mOtherKeyMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->mOtherKeyMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected longPressBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 6
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/16 v5, 0xdb

    const/4 v4, 0x0

    const/4 v2, -0x1

    return v2

    .line 406
    invoke-static {}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    const-string v2, "HtcKeyEventHandler"

    const-string v3, "HomeKeyGoogleSearch Long press action before dispatching"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    invoke-virtual {p0, p2, v4, v5}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->translateKeyCode(Landroid/view/KeyEvent;II)Landroid/view/KeyEvent;

    move-result-object v0

    .line 412
    .local v0, translatedEventDown:Landroid/view/KeyEvent;
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2, v5}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->translateKeyCode(Landroid/view/KeyEvent;II)Landroid/view/KeyEvent;

    move-result-object v1

    .line 420
    .local v1, translatedEventUp:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 422
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 424
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->breakAction()V

    .line 425
    const/4 v2, -0x1

    return v2
.end method

.method protected longPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 2
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 436
    invoke-static {}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "HtcKeyEventHandler"

    const-string v1, "HomeKeyGoogleSearch Long press action up before dispatching "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$HomeKeyGoogleSearch;->breakAction()V

    .line 440
    const/4 v0, -0x1

    return v0
.end method

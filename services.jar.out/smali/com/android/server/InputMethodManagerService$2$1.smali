.class Lcom/android/server/InputMethodManagerService$2$1;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService$2;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/InputMethodManagerService$2;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 605
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 606
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 607
    .local v0, isScreenOn:Z
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenObserver: isScreenOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    if-eqz v0, :cond_1

    .line 611
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v2, v4, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    .line 612
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    #calls: Lcom/android/server/InputMethodManagerService;->refreshImeWindowVisibilityLocked()V
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$100(Lcom/android/server/InputMethodManagerService;)V

    .line 620
    :goto_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v4, :cond_0

    .line 621
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v6, v6, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v7, 0xbcc

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-boolean v8, v8, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    if-eqz v8, :cond_2

    :goto_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v6, v7, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 624
    :cond_0
    return-void

    .line 615
    :cond_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v3, v4, Lcom/android/server/InputMethodManagerService;->mScreenOn:Z

    .line 616
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$2$1;->this$1:Lcom/android/server/InputMethodManagerService$2;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    #calls: Lcom/android/server/InputMethodManagerService;->setImeWindowVisibilityStatusHiddenLocked()V
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$200(Lcom/android/server/InputMethodManagerService;)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 621
    goto :goto_1
.end method

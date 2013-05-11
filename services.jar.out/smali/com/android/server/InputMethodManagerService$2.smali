.class Lcom/android/server/InputMethodManagerService$2;
.super Landroid/os/FileObserver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2
    .parameter "event"
    .parameter "path"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$2;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/InputMethodManagerService$2$1;

    invoke-direct {v1, p0}, Lcom/android/server/InputMethodManagerService$2$1;-><init>(Lcom/android/server/InputMethodManagerService$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 626
    return-void
.end method

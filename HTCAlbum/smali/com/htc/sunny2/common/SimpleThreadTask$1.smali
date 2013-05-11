.class Lcom/htc/sunny2/common/SimpleThreadTask$1;
.super Landroid/os/Handler;
.source "SimpleThreadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/SimpleThreadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/common/SimpleThreadTask;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/common/SimpleThreadTask;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask$1;,"Lcom/htc/sunny2/common/SimpleThreadTask.1;"
    iput-object p1, p0, Lcom/htc/sunny2/common/SimpleThreadTask$1;->this$0:Lcom/htc/sunny2/common/SimpleThreadTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 188
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask$1;,"Lcom/htc/sunny2/common/SimpleThreadTask.1;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$1;->this$0:Lcom/htc/sunny2/common/SimpleThreadTask;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/common/SimpleThreadTask;->onMessage(Landroid/os/Message;)Z

    .line 189
    return-void
.end method
